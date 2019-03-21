#ifndef BINARYREADER_H
#define BINARYREADER_H
#include <fstream>
#include <iostream>
using namespace std;

/*
	二进制文件读取流，读取粒度为bit
	设置了缓冲区，能够提高读取效率
*/
class BinaryReader
{
public:

	/*
		构造函数。
		ifstream& fi	为文件读入流的引用
		int bufSize		设置读取缓冲区大小
	*/
	BinaryReader(ifstream& fi, int bufSize)
	{
		if(!fi || !fi.good())
		{
			cout << "error" << endl;
		}
		this->fin = &fi;
		this->bufSize = bufSize;
		this->buffer = new char[bufSize];
		box = 0;
		bufIndex = 0;
		boxPos = 0;
		reload();	//预读一部分数据
		if(gcount == 0)	//文件为空
		{
			boxPos = 8;
		}
		else
		{
			box = buffer[bufIndex++];
		}
	}

	/*
		每次从文件中读取数据到缓冲区
	*/
	void reload()
	{
		fin->read(buffer, this->bufSize);
		gcount = fin->gcount();
	}

	/*
		依次返回文件中的每个bit
		若读到文件末尾，返回'-'
	*/
	char getBit()
	{
		if(boxPos == 8)	//当前box中已经读取完毕，则从缓冲区中取下一字节
		{
			if(bufIndex == gcount)	//缓冲区已经读取完，则再读文件数据到缓冲区
			{
				if(gcount < bufSize)	//上次已经读完文件，则返回'-'知识读取完毕
				{
					return '-';
				}
				reload();
				if(gcount == 0)
				{
					return '-';
				}
				bufIndex = 0;
			}
			box = buffer[bufIndex++];
			boxPos = 0;
		}
		if((box >> (7 - boxPos++)) & 1 == 1)
		{
			return '1';
		}
		else
		{
			return '0';
		}
	}

private:
	ifstream* fin;	//文件读取流
	char* buffer;	//缓冲区
	char box;		//当前读取的字节
	int bufSize;	//缓冲区大小
	int bufIndex;	//缓冲区当前位置
	int boxPos;		//当前读取字节中，待读bit的位置，最高位为0，最低位为7
	int gcount;		//当前从文件读到的字节数
};

#endif