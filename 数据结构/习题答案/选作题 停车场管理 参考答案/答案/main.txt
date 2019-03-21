#include<iostream>
#include<fstream>
#include<stack>
#include<string>
#include"Car.h"
using namespace std;

int main(int argc,char * argv[])
{
	ifstream inf(argv[1]);
	if(!inf)
	{
		cout<<"Open Error!"<<endl;
	}

	stack<Car*> parklot, tmplot;
	string license, action;
	Car * car;

	while(!inf.eof())
	{	
		inf>>license>>action;
		if(action == "arrives")
		{
			if(parklot.size() < 5)
			{
				car = new Car(license,0);
				parklot.push(car);
			}else
				cout<<"Sorry,"<<license<<" the lot is full"<<endl;
		}
		else if(action == "departs")
		{
			while(!parklot.empty())
			{
				car = parklot.top();
				if(car->license == license)
				{
					parklot.pop();
					car->display();
					break;
				}
				car->num = car->num +1;
				tmplot.push(car);
				parklot.pop();
			}
			while(!tmplot.empty())
			{
				car = tmplot.top();
				parklot.push(car);
				tmplot.pop();
			}
		}
	}
	while(!parklot.empty())
	{
		car = parklot.top();
		car->display();
		parklot.pop();
		delete car;
	}
	inf.close();//ÎðÂ©£¡£¡£¡£¡

	return 0;
}