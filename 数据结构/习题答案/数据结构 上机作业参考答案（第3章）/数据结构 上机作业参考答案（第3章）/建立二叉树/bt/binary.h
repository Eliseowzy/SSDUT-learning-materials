#include "Queue.h"
template <class T> 
class BinaryTree;
template <class T> 
class BinaryTreeNode {
friend BinaryTree<T>;
friend void InOrder(BinaryTreeNode<T> *t);
friend void PreOrder(BinaryTreeNode<T> *t);
friend void PostOrder(BinaryTreeNode<T> *t);
friend void LevelOrder(BinaryTreeNode<T> *t);
friend void InOrderTranvers(BinaryTreeNode<T> *t);
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
void LevelOrder(BinaryTreeNode<T> *t)
{//对*t逐层遍历
	BinaryTreeNode<T> *p=t;
	LinkedQueue<BinaryTreeNode<T>*> Q;
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
template <class T>
class BinaryTree
{
public:
	BinaryTree(){root=0;}
	~BinaryTree(){};
	bool IsEmtpy() const
	{ return ((root)?false:true); }
	bool Root(T& x) const;
	void MakeTree(const T& element,BinaryTree<T>& left,BinaryTree<T>& right);
	void BreakTree(T& element,BinaryTree<T>& left,BinaryTree<T>& right);
    void InOrder() {InOrd(root);}
	void PreOrder(){PreOrd(root);}
	void PostOrder() {PostOrd(root);}
	void LevelOrder() {LevelOrd(root);}
	int High(){return Height(root);} 
	int Total(){return TotalCount(root);} //统计结点数
private:
	BinaryTreeNode<T> *root;//根结点指针
	void InOrd(BinaryTreeNode<T> *t);
	void PreOrd(BinaryTreeNode<T> *t);
	void PostOrd(BinaryTreeNode<T> *t);
	void LevelOrd(BinaryTreeNode<T> *t);	
	int Height(BinaryTreeNode<T> *t);
	int TotalCount(BinaryTreeNode<T> *t);//统计结点数
};
template<class T>
bool BinaryTree<T>::Root(T& x) const
{
	if(root){x=root->data; return true;}
	else  return false;
}
template<class T>
void BinaryTree<T>::MakeTree(const T& element,BinaryTree<T>& left,BinaryTree<T>& right)
{
	root=new BinaryTreeNode<T>(element,left.root,right.root);
	left.root=right.root=0;
}
template<class T>
void BinaryTree<T>::BreakTree( T& element,BinaryTree<T>& left,BinaryTree<T>& right)
{
	if(!root) {cout<<"no tree node"<<endl; return;}
	element=root->data;
	left.root=root->LeftChild;
	right.root=root->RightChild;
	delete root;
	root=0;
}
template <class T>
void BinaryTree<T>::PreOrd(BinaryTreeNode<T> *t)
{//对*t进行前序遍历
	if(t){
		cout<<t->data;           //访问根结点
		PreOrd(t->LeftChild);  //前序遍历左子树
		PreOrd(t->RightChild); //前序遍历右子树
	}
	
}
template <class T>
void BinaryTree<T>::InOrd(BinaryTreeNode<T> *t)
{//对*t进行中序遍历
	if(t){
		InOrd(t->LeftChild);  //中序遍历左子树
		cout<<t->data;           //访问根结点
		InOrd(t->RightChild); //中序遍历右子树
	}
	
}
template <class T>
void BinaryTree<T>::PostOrd(BinaryTreeNode<T> *t)
{//对*t进行后序遍历
	if(t){
		PostOrd(t->LeftChild);  //后序遍历左子树
		PostOrd(t->RightChild); //后序遍历右子树
		cout<<t->data;           //访问根结点
	}
	
}
template <class T>
void BinaryTree<T>::LevelOrd(BinaryTreeNode<T> *t)
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

template <class T>
int BinaryTree<T>::Height(BinaryTreeNode<T> *t) 
{//返回树*t的高度
	if(!t) return 0;
	int hl=Height(t->LeftChild);
	int hr=Height(t->RightChild);
	if(hl>hr) return ++hl;
	else return ++hr;
}
template <class T>
int BinaryTree<T>::TotalCount(BinaryTreeNode<T> *t) 
{//对*t进行前序遍历，同时记录结点数目
	if(!t)
		return 0;         //记录根结点
        else    
        {   
        	int lc=TotalCount(t->LeftChild);  //左子树结点数
		int rc=TotalCount(t->RightChild); //右子树结点数
		return lc+rc+1;
	}
}
