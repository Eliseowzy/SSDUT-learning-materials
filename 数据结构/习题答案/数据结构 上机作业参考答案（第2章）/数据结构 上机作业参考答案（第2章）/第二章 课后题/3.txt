/*
无输入
输出：
4 3 2 1
*/
#include <iostream>
using namespace std;
struct Node
{
	Node(int x) // Node 的构造函数
	{
		value=x;
		next=NULL;
	}
	int value;
	Node* next;
};
Node* Reverse(Node* first)// 思想为用 尾插法 重新建立单链表
{
	Node *p=first,*q=p->next;
	first->next=NULL;
	while(q!=NULL)
	{
		Node* QNextTemp=q->next;
		q->next=p;
		p=q;
		q=QNextTemp;
	}
	return p;
}
void outputNode(Node* first) // 输出链表
{
    Node *p=first;
    while(p!=NULL)
    {
        cout<<p->value<<" ";
        p=p->next;
    }
    cout<<endl;
}
int main()
{
	Node* a=new Node(1);
	a->next=new Node(2);
	a->next->next=new Node(3);
	a->next->next->next=new Node(4);
	Node* r=Reverse(a);
    outputNode(r);
    return 0;
}
