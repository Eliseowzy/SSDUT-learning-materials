#include <iostream>
#include "binary.h"
using namespace std;


BinaryTree<int> a,x,y,z;


void main()
{

 y.MakeTree(1,a,a);
 z.MakeTree(2,a,a);
 x.MakeTree(3,y,z);
 y.MakeTree(4,x,a);
 cout<<"\n preorder "<<endl;
 y.PreOrder();
 cout<<"\n post order"<<endl;
 y.PostOrder();
 cout<<"\n In Order:"<<endl;
 y.InOrder ();
 cout<<"\nlevel order:"<<endl;
 y.LevelOrder ();
 cout<<endl;
 cout<<"total elements are:"<<endl;
 cout<<y.Total();
 cout<<endl;
 cout<<"the height of the tree is :"<<endl;
 cout<<y.High();
 cout<<endl;
}