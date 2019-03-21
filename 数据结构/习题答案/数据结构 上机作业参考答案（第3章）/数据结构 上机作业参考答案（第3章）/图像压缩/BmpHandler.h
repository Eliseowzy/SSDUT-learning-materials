#ifndef BMPHANDLER_H
#define BMPHANDLER_H

#include <iostream>
#include <fstream>
#include <Windows.h>
using namespace std;

class BmpHandler
{
public:
	
	/*
		将灰度图像的头、数据部分、尾分开，写入三个文件中
		并将图像信息返回
	*/
	BITMAPINFOHEADER split(char* originFile, char* headFile, char* dataFile, char* tailFile)
	{
		cout << "Splitting..." << endl;
		ifstream fin(originFile, ios::binary);
		ofstream foutHead(headFile, ios::binary);
		ofstream foutData(dataFile, ios::binary);
		ofstream foutTail(tailFile, ios::binary);
		
		if(!fin)
		{
			cout << "Can't open it" << endl;
		}
	
		BITMAPFILEHEADER fileHeader;
		BITMAPINFOHEADER infoHeader;
		//读取文件头和位图信息头
		fin.read((char *) &fileHeader, sizeof(fileHeader));
		fin.read((char *) &infoHeader, sizeof(infoHeader));

		int width = infoHeader.biWidth;
		int height = infoHeader.biHeight;
		int bpp = infoHeader.biBitCount;
	
		char* headBuffer = new char[fileHeader.bfOffBits];	//定义head缓冲区

		//将文件指针重置到开头，读取图像数据部分之前的所有信息，写入headFile中
		fin.seekg(0);
		fin.read(headBuffer, fileHeader.bfOffBits);
		foutHead.write(headBuffer, fileHeader.bfOffBits);
		foutHead.flush();
		
		//计算图像每行的字节数
		//根据RGB编码要求，每行必须按4字节对齐
		int lineWidth = (width * bpp + 31) / 32 * 4;
	
		//定义图像数据缓冲区
		byte * dataBuffer = new byte[lineWidth * height];

		// 设置偏移量至bmp数据部分
		fin.seekg(fileHeader.bfOffBits);

		for(int i = 0; i < height; i++)
		{
			fin.read((char *) &dataBuffer[i * lineWidth], lineWidth);
		}

		//将数据部分写入文件dataFile
		foutData.write((char *) & dataBuffer[0], lineWidth * height);
		foutData.flush();

		//文件尾部有两字节的0
		char zeroData[2] = {0};
		foutTail.write(zeroData, 2);
		foutTail.flush();

		fin.close();
		foutHead.close();
		foutData.close();
		foutTail.close();
		delete[] headBuffer;
		delete[] dataBuffer;

		return infoHeader;
	}

	/*
		将图像的头、数据部分、尾部合成一个有效的bmp图像
	*/
	void merge(char* headFile, char* dataFile, char* tailFile, char* objectFile)
	{
		cout << "Merging..." << endl;

		ifstream fhead(headFile, ios::binary);
		ifstream fdata(dataFile, ios::binary);
		ifstream ftail(tailFile, ios::binary);

		ofstream outfile(objectFile, ios::binary);
		char c;
		fhead.read(&c, 1);
		while(fhead.good())
		{
			outfile.write(&c, 1);
			fhead.read(&c, 1);
		}

		fdata.read(&c, 1);
		while(fdata.good())
		{
			outfile.write(&c, 1);
			fdata.read(&c, 1);
		}

		ftail.read(&c, 1);
		while(ftail.good())
		{
			outfile.write(&c, 1);
			ftail.read(&c, 1);
		}

		outfile.flush();
		outfile.close();
	}

};

#endif