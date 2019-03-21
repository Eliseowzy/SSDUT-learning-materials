
#include<string>
using namespace std;

class Car
{
public:
	string license;
	int num;
	Car(string s="", int n = 0)
	{
		license = s;
		num = n;
	}
	void display() 
	{
		cout <<license<<" was moved "<<num<<" times while it was here"<<endl;
	}
};