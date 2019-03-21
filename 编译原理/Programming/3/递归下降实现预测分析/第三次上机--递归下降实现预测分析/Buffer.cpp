#include "Buffer.h"

using namespace std;
Buffer::Buffer()
{

}


Buffer::~Buffer()
{
}


void Buffer::BufferInput() {
	ifstream in("Buffer.txt");
	string filename;
	string line;

	if (in) // 有该文件  
	{
		while (getline(in, line)) // line中不包括每行的换行符  
		{
			//cout << line << endl;
			buffer[++ActualSize]=stoi(line,nullptr);
		}
	}
	else // 没有该文件  
	{
		cout << "no such file" << endl;
	}
	//inFile >> c;
	//cout << c;

}


void Buffer::Bufferprint() {
	BufferInput();
	//cout << ActualSize << endl;
	for (int j = 0; j <= ActualSize; j++) {
		cout << buffer[j]<<endl;
	}
	//cout << endl;
}

char Buffer::GetElement()
{
	if (CurrentLoaction >= 0 && CurrentLoaction <=ActualSize) {
		return buffer[CurrentLoaction++];
	}
}
