#ifndef BINARYWRITER_H
#define BINARYWRITER_H

#include <iostream>
#include <fstream>
using namespace std;

/*
	二进制文件写入流，写入粒度为bit
	设置了缓冲区，能够提高写入效率
*/
class BinaryWriter
{
public:
	BinaryWriter(ofstream& fout, int bufSize)
	{
		this->fout = &fout;
		this->bufSize = bufSize;
		buffer = new char[bufSize + 20];
		box = 0;
		bufIndex = 0;
		boxPos = 0;
	}
	~BinaryWriter()
	{
		this->lastFlush();
		delete[] buffer;
	}

	/*
		将str所代表的huffman码写入文件
		当达到缓冲区上限时，才会真正写入，否则暂存在缓冲区
	*/
	void write(string str)
	{
		int tmp = 0;
		for(int i = 0; i < str.length(); i++)
		{
			box += (1 << (7 - boxPos)) * (str[i] - '0');
			boxPos++;
			if(boxPos == 8) //box已经装满
			{
				buffer[bufIndex] = box;
				bufIndex++;
				box = 0;
				boxPos = 0;
				if(bufIndex == bufSize)	//buffer已经装满，写入文件
				{
					fout->write(buffer, bufSize);
					fout->flush();
					bufIndex = 0;
				}
			}
		}
	}

	/*
		每次写入一个bit（未用，效率略低）
	*/
	void writeBit(char c)
	{
		box += (1 << (7 - boxPos)) * (c - '0');
		boxPos++;
		if(boxPos == 8) //box已经装满
		{
			buffer[bufIndex] = box;
			bufIndex++;
			box = 0;
			boxPos = 0;
			if(bufIndex == bufSize)	//buffer已经装满，写入文件
			{
				fout->write(buffer, bufSize);
				fout->flush();
				bufIndex = 0;
			}
		}
	}

	/*
		强制将缓冲区的内容写入到文件，即使缓冲区未满。
		最后一个字节若不满，低位以0补齐。
	*/
	void lastFlush()
	{
		//缓冲区和box都没有内容，则不写入
		if(boxPos == 0 && bufIndex == 0)	
		{
			return;
		}
		else if(boxPos == 0)//box中的内容以都写入缓冲区，但缓冲区数据还未写入到文件
		{
			fout->write(buffer, bufIndex);
			fout->flush();
			bufIndex = 0;
		}
		else //缓冲区和box中都有数据
		{
			buffer[bufIndex] = box;
			bufIndex++;
			fout->write(buffer, bufIndex);
			fout->flush();
			bufIndex = 0;
			box = 0;
			boxPos = 0;
		}
	}

private:
	ofstream* fout;
	char* buffer;
	char box;
	int bufSize;
	int bufIndex;
	int boxPos;
};

#endif