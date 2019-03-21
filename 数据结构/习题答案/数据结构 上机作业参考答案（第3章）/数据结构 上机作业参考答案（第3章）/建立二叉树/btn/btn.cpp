#include <iostream>
#include "BinaryTreeNode.h"
using namespace std;


//BinaryTree<int> a,x,y,z;


void main()
{
	BinaryTreeNode<char> *zero=0;
	BinaryTreeNode<char> f('F'),g('G'),h('H');
	BinaryTreeNode<char> d('D',&f,&g),e('E',zero,&h);
	BinaryTreeNode<char> b('B',zero,&d),c('C',zero,&e);
	BinaryTreeNode<char> a('A',&b,&c);

 	cout<<"\npreorder "<<endl;
 	PreOrder(&a);
 	cout<<"\npost order"<<endl;
 	PostOrder(&a);
 	cout<<"\nIn Order:"<<endl;
 	InOrder (&a);
	cout<<"\nIn Order by stack:"<<endl;
 	InOrderTranverse(&a);
	cout<<"\nlevel order:"<<endl;
 	LevelOrder (&a);
	cout<<endl;
}