#include "Queue.h"
#include "Stack.h"
template <class T> 
class BinaryTree;
template <class T> 
class BinaryTreeNode {
friend void InOrder(BinaryTreeNode<T> *t);
friend void PreOrder(BinaryTreeNode<T> *t);
friend void PostOrder(BinaryTreeNode<T> *t);
friend void LevelOrder(BinaryTreeNode<T> *t);
friend void InOrderTranverse(BinaryTreeNode<T> *t);
public:
	BinaryTreeNode(){LeftChild=RightChild=0;}
	BinaryTreeNode(const T& e)
	{
		data=e;
		LeftChild=RightChild=0;
	}
	BinaryTreeNode(const T&e, BinaryTreeNode *l,BinaryTreeNode *r)
	{
		data=e;
		LeftChild=l;
		RightChild=r;
		
	}
private:
	T data;
	BinaryTreeNode<T> *LeftChild;//左子树
	BinaryTreeNode<T> *RightChild;//右子树
};
template <class T>
void PreOrder(BinaryTreeNode<T> *t)
{//对*t进行前序遍历
	if(t){
		cout<<t->data;           //访问根结点
		PreOrder(t->LeftChild);  //前序遍历左子树
		PreOrder(t->RightChild); //前序遍历右子树
	}
	
}
template <class T>
void InOrder(BinaryTreeNode<T> *t)
{//对*t进行中序遍历
	if(t){
		InOrder(t->LeftChild);  //中序遍历左子树
		cout<<t->data;           //访问根结点
		InOrder(t->RightChild); //中序遍历右子树
	}
	
}
template <class T>
void PostOrder(BinaryTreeNode<T> *t)
{//对*t进行后序遍历
	if(t){
		PostOrder(t->LeftChild);  //后序遍历左子树
		PostOrder(t->RightChild); //后序遍历右子树
		cout<<t->data;           //访问根结点
	}
	
}
template <class T>
void InOrderTranverse(BinaryTreeNode<T> *t)//中序遍历非递归算法
{
	Stack<BinaryTreeNode<T>*> s(20);
	BinaryTreeNode<T> *p;
	p=t;
	while(p||!s.IsEmpty())
	{
		if(p){s.Add(p);p=p->LeftChild;}
		else
		{
			s.Delete(p);
			cout<<p->data;
			p=p->RightChild;
		}
	}
}
template <class T>
void LevelOrder(BinaryTreeNode<T> *t)
{//对*t逐层遍历
	BinaryTreeNode<T> *p=t;
	Queue<BinaryTreeNode<T>*> Q;
	while(p)
	{
		cout<<p->data;//访问p
		//将p的孩子放入队列
		if(p->LeftChild) Q.Add(p->LeftChild);
		if(p->RightChild) Q.Add(p->RightChild);
		
		//访问下一个结点
		if(Q.IsEmpty())
			return;
		else
			Q.Del(p);
	}
}
