#include <iostream>
using namespace std;

template<class T>
class Queue
{
public:
	Queue(int MaxQueueSize=10);
	~Queue(){delete [] queue;}
	bool IsEmpty() {return front==rear;}
	bool IsFull() 
	{
		if((rear+1)%MaxSize==front)
			return 1;
		else 
			return 0;
	}
	T First();//返回队首元素
	T Last() ;//返回队尾元素
	void Add(const T& x);
	void Del(T& x);
private:
	int front; //与第一个元素在反时针方向上相差一个位置
	int rear; //指向最后一个元素
	int MaxSize;//队列数组的大小
	T *queue; //数组 
};

template<class T>
Queue<T>::Queue(int MaxQueueSize)
{
	MaxSize=MaxQueueSize;
	queue=new T[MaxSize];
	front=rear=0;
}

template<class T>
T Queue<T>::First()
{
	if(IsEmpty())
		return -1;
	else
		return queue[(front+1)%MaxSize];
}

template<class T>
T Queue<T>::Last()
{
	if(IsEmpty())
		return -1;
	else
		return queue[rear];
}

template<class T>
void Queue<T>::Add(const T& x)
{
	if(IsFull())
	{  cout<<"no memeory";return;  }
	rear=(rear+1)%MaxSize;
	queue[rear]=x;
	return;
}

template<class T>
void Queue<T>::Del(T& x)
{
	if(IsEmpty())
	{  cout<<"no element";return;  }
	front=(front+1)%MaxSize;
	x=queue[front];
	return;
}