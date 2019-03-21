/*
* 输入：待压缩的图像文件
* 输出：压缩后的图像文件
*/
#include <iostream>
#include <Windows.h>
#include <fstream>
#include "HuffmanTree.h"
#include "BinaryWriter.h"
#include "BinaryReader.h"
#include "BmpHandler.h"
#include <string>
#include <hash_map>
using namespace std;

//定义压缩文件头结构 大小为16Byte
struct CMPHeader
{
	DWORD sn;			//预设文件类型
	DWORD width;		//图像宽度
	DWORD height;		//图像高度
	BYTE colorCount;	//颜色数
	BYTE reserved1;		//保留字
	BYTE reserved2;		//保留字
	BYTE reserved3;		//保留字
};

//定义颜色表字段 大小为20Byte
struct CMPColorTableSegment
{
	/*
		将字符串型的huffman码转换成为二进制型，存入成员变量code数组中。
		从数组的第0个元素开始的最高位开始，对应strCode数组的第一个元素
	*/
	void setCode(string strCode)
	{
		char box = 0;
		int boxPos = 0;
		int codeIndex = 0;
		for(int i = 0; i < strCode.length(); i++)
		{
			int tmp = (1 << (7 - boxPos)) * (strCode[i] - '0');
			box += tmp;
			boxPos++;
			if(boxPos == 8) //box已经装满
			{
				code[codeIndex++] = box;
				box = 0;
				boxPos = 0;
			}
		}
		code[codeIndex] = box;
	}

	/*
		将成员变量code数组对应的二进制位以字符串形式返回
		是setCode函数的逆操作
	*/
	string codeToString()
	{
		char box = 0;
		int boxPos = 0;
		int codeIndex = 0;
		string strCode = "";
		int currentLength = 0;
		if(this->length == 0)
		{
			return strCode;
		}
		for(codeIndex = 0; codeIndex <= (this->length - 1) / 8; codeIndex++)
		{
			box = code[codeIndex];
			for(int i = 7; i >= 0; i--)
			{
				if((box >> i) & 1 == 1)
				{
					strCode += '1';
				}
				else
				{
					strCode += '0';
				}
				currentLength++;
				if(currentLength == this->length)
				{
					return strCode;
				}
			}
		}
	}

	/*
		构造函数
	*/
	CMPColorTableSegment()
	{
		greyValue = 0;
		length = 0;
		for(int i = 0; i < 16; i++)
		{
			code[i] = 0;
		}
	}
	WORD greyValue;		//颜色灰度值
	WORD length;		//huffman码长度
	BYTE code[16];		//huffman码，最大长度为128
};

/*
	函数功能：
		输入指定文件（file），统计其中的byte数字频率
		构建huffman树，得到huffman编码数组

	参数：
		char * file  待编码的文件名

	返回值：
		huffman编码数组，空间分配在堆中，需要外部程序delete
*/
string* getHuffmanCode(char* file)
{
	ifstream fin(file, ios::binary);
	ofstream fout("D:\\abc", ios::binary);
	if(!fin)
	{
		cout << "Can't open it" << endl;
	}
	bool flag = false;					//标记是否读到文件末尾
	int count = 0;
	int freqArray[256] = {0};			//频率数组，统计每种字节取值出现的次数
	const int BUFSIZE = 1024 * 1024;	//设置读取缓冲区大小，1M
	char* buffer = new char[BUFSIZE];	//缓冲区数组

	//初始化频率数组，全部置0
	for(int i = 0; i < 256; i++)
	{
		freqArray[i] = 0;
	}
	do
	{
		flag = (bool) fin.read(buffer, BUFSIZE);	//读取BUFSIZE字节数据
		count = fin.gcount();	//实际读取的字节数
		for(int i = 0; i < count; i++)
		{
			freqArray[(unsigned char)buffer[i]]++;	//统计频率
		}
		fout.write(buffer, count);
	}while(flag);
	HuffmanTree ht(freqArray);	//通过灰度值频率数组，构造huffman树
	string* codes = new string[256];	//Huffman编码数组
	ht.coding(codes);	//遍历huffman树，得到huffman编码
	fin.close();
	fout.flush();
	fout.close();
	delete[] buffer;
	return codes;
}

/*
	函数功能：
		将给定的灰度图像数据部分压缩至目标文件

	参数：
		char* originFile	待压缩的灰度图像数据部分文件路径+文件名
		int width			图像数据的宽度（像素数，而非每行字节数。）
		int height			图像数据的高度
		char* objFile		压缩文件的目标路径+文件名
*/
void compress(char* originFile, int width, int height, char* objFile)
{
	cout << "Compressing..." << endl;
	//首先根据原始文件，计算出每个灰度值对应的胡夫曼码
	string* codes = getHuffmanCode(originFile);

	ifstream fin(originFile, ios::binary);
	ofstream fout(objFile, ios::binary);
	if(!fin)
	{
		cout << "Can't open file: " << originFile << endl;
	}
	if(!fout)
	{
		cout << "Can't open file: " << objFile << endl;
	}
	const int RBUFSIZE = 1024 * 1024;	//设置读取缓冲区大小，1M
	char* rbuffer = new char[RBUFSIZE];	//读缓冲区数组
	bool flag = false;					//标记是否读到文件末尾
	int count = 0;						//读了多少字节

	const int WBUFSIZE = 1024 * 1024;	//设置写缓冲区大小，1M
	char* wbuffer = new char[WBUFSIZE + 20]; //写缓冲区数组
	int bufferPos = 0;					//标记写缓冲区有效数据字节数
	char box = 0;						//每8位装一箱
	int boxPos = 0;						//已装箱位置
	string code = "";

	CMPColorTableSegment colorTable[256];//颜色表

	//写文件头
	CMPHeader header;
	//将SCNH写入前文件前四个字节
	//由于文件存储时是低位在前，高位在后，所以要将字母顺序倒过来
	header.sn = 'H';
	header.sn = header.sn << 8;
	header.sn += 'N';
	header.sn = header.sn << 8;
	header.sn += 'C';
	header.sn = header.sn << 8;
	header.sn += 'S';

	header.width = width;
	header.height = height;
	header.colorCount = 8;			//8位颜色，共有2^8=128种颜色取值
	fout.write((char *) &header, sizeof(header));

	//写颜色表
	for(int i = 0; i < 256; i++)
	{
		colorTable[i].greyValue = i;
		colorTable[i].length = codes[i].length();
		colorTable[i].setCode(codes[i]);
	}
	fout.write((char *) &colorTable, sizeof(colorTable));

	BinaryWriter bw(fout, WBUFSIZE);		//特别定制的写二进制文件流
	int index = 0;
	do
	{
		flag = (bool) fin.read(rbuffer, RBUFSIZE);
		count = fin.gcount();
		for(int i = 0; i < count; i++)
		{
			//每次将一个字节编码为huffman码，写入到文件流中
			index = (unsigned char)rbuffer[i];
			bw.write(codes[index]);
		}
	}while(flag);
	bw.lastFlush();//强制写入剩余数据，最后一个字节若不足8位，以0不齐低位
	delete[] rbuffer;
	delete[] wbuffer;
	fin.close();
	fout.close();
}

/*
	函数功能：
		将已压缩的文件解压缩，还原成灰度图像数据部分

	参数：
		char* originFile	//已压缩文件路径+文件名
		char* objectFile	//解压缩路径+文件名
*/

void decompress(char* originFile, char* objectFile)
{
	cout << "Decompressing..." << endl;
	ifstream fin(originFile, ios::binary);
	if(!fin)
	{
		cout << "Can't open file: " << originFile << endl;
	}
	ofstream fout(objectFile, ios::binary);
	if(!fout)
	{
		cout << "Can't open file: " << objectFile << endl;
	}
	CMPHeader header;	//压缩文件头
	CMPColorTableSegment colorTable[256];	//压缩文件颜色表

	//读取文件头和颜色编码表
	fin.read((char*) &header, sizeof(header));
	fin.read((char*) &colorTable, sizeof(colorTable));

	hash_map<string, int> ctMap;		//从胡夫曼码映射到灰度值
	hash_map<string, int>::iterator iter;	//hash_map临时迭代器
	string tmpCode;
	BinaryReader br(fin, 1024 * 1024);			//二进制文件读取流
	char c;
	char value;
	int wbufferSize = 1024 * 1024;
	char* wbuffer = new char[wbufferSize];
	int wbufferIndex = 0;

	//点个数，长*宽。数据每行按双字对齐，向上取整，得到每行字节数
	int pointCount = header.height *
		((header.width * 8 + 31) / 32 * 4);

	//根据颜色表，将huffman码转换成字符串形式，存入hash_map
	for(int i = 0; i < 256; i++)
	{
		tmpCode = colorTable[i].codeToString();
		ctMap[tmpCode] = colorTable[i].greyValue;
	}
	tmpCode = "";

	//每次从文件中读取一个bit，以字符形式表示
	while((c = br.getBit()) != '-')
	{
		tmpCode += c;	//将新读到的bit字符连接到临时huffman码变量
		iter = ctMap.find(tmpCode);	//到hash映射表中查找该码是否组成了有效huffman码
		if(iter != ctMap.end())	//是有效code
		{
			value = (char) iter->second;
			//fout.write((char *) &value, 1); //将灰度值写入解压缩文件（没有使用缓冲区，写入较慢）
			if(wbufferIndex == wbufferSize)		//缓冲区满，写入文件
			{
				fout.write(wbuffer, wbufferIndex);
				wbufferIndex = 0;
			}
			wbuffer[wbufferIndex++] = value;
			tmpCode = "";
			pointCount--;
			if(pointCount == 0)	//使用图像字节数控制压缩进度，防止读到末尾用于补齐字节的0
			{
				break;	//所有灰度值都解压缩完成，强制跳出循环
			}
		}
	}
	if(wbufferIndex != 0)	//缓冲区还有数据，将数据写入文件
	{
		fout.write(wbuffer, wbufferIndex);
		wbufferIndex = 0;
	}
	fin.close();
	fout.flush();
	fout.close();
	delete[] wbuffer;

}


int main()
{
	char greyFile[] = "D:\\bmpExp\\grey.bmp";		//原始灰度图像
	char headFile[] = "D:\\bmpExp\\head.dat";		//图像头部分
	char tailFile[] = "D:\\bmpExp\\tail.dat";		//图像尾部分
	char dataFilePath[] = "D:\\bmpExp\\data.dat";	//图像数据部分（待压缩文件）
	char cFilePath[] = "D:\\bmpExp\\compress";		//压缩文件
	char dcFilePath[] = "D:\\bmpExp\\decompressed";	//解压缩文件
		char newBmpFile[] = "D:\\bmpExp\\new.bmp";	//新灰度图像

	BmpHandler bh;

	//将原始灰度图像分为头、数据、尾三部分
	BITMAPINFOHEADER infoHeader = bh.split(greyFile, headFile, dataFilePath, tailFile);
	//获取图像的宽和高
	int width = infoHeader.biWidth;
	int height = infoHeader.biHeight;


	//压缩与解压缩数据部分
	compress(dataFilePath, width, height, cFilePath);	//压缩
	decompress(cFilePath, dcFilePath);					//解压缩

	//将解压缩后的文件与头文件、尾文件整合，得到新图像，若与原给定灰度图像相同，则解压正确
	bh.merge(headFile, dcFilePath, tailFile, "D:\\bmpExp\\new.bmp");


	return 0;
}
