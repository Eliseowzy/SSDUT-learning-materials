#include<iostream>
#include<fstream>
#include<string>


constexpr auto BufferSize = 6000;//文件缓冲区大小
using namespace std;
class Buffer
{
public:
	Buffer();
	~Buffer();
	
	void Bufferprint();
	char GetElement();
private:
	int ActualSize=-1;
	int  CurrentLoaction=0;
	//int buffer[BufferSize] = {4,0,4,5};
	int buffer[BufferSize];
	void BufferInput();
};

