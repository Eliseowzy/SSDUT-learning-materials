#ifndef HUFFMANTREE_H
#define HUFFMANTREE_H

#include "HuffmanNode.h"
#include "MinHeap.h"
#include <string>
using namespace std;

//为图像压缩特别定制的HuffmanTree
class HuffmanTree
{
public:
	//构造HuffmanTree
	//freqArray为频率数组，记录每种字节取值出现的次数
	HuffmanTree(int* freqArray)
	{
		MinHeap minHeap;
		HuffmanNode* hn, *hn1, *hn2;
		//将频率不为0的点加入最小堆
		for(int i = 0; i < 256; i++)
		{
			if(freqArray[i] == 0)
			{
				continue;
			}
			hn = new HuffmanNode(i, freqArray[i]);
			minHeap.add(hn);
		}
		//通过最小堆构建huffman树
		if(minHeap.size() == 0)		//没有结点
		{
			root = NULL;
			return;
		}
		if(minHeap.size() == 1)	//只有一个结点
		{
			root = new HuffmanNode;
			root->charValue = minHeap.top()->charValue;
			root->freq = minHeap.top()->freq;
			return;
		}
		//结点数大于等于2
		//每次取两个频率最小的结点，构造huffman树
		while(minHeap.size() >= 2)	
		{
			hn1 = (minHeap.top());
			minHeap.removeRoot();
			hn2 = (minHeap.top());
			minHeap.removeRoot();
			hn = new HuffmanNode();
			hn->charValue = -1;
			hn->freq = hn1->freq + hn2->freq;
			hn->left = hn1;
			hn->right = hn2;
			minHeap.add(hn);
		}
		root = minHeap.top();
	}
	~HuffmanTree()
	{
		deleteTree(root);
	}

	/*
		将当前huffman树转换成为huffman码，存入codes数组中
	*/
	void coding(string* codes)
	{
		string code = "";
		postOrder(root, code, codes);//以后序遍历形式，构造huffman码
	}

private:
	//后序遍历
	void postOrder(HuffmanNode* root, string code, string* codes)
	{
		if(root == NULL)
		{
			return;
		}
		code += "0";	//走向左子树，huffman码加0
		postOrder(root->left, code, codes);
		code.erase(code.length() - 1, 1);
		code += "1";	//走向右子树，huffman码加1
		postOrder(root->right, code, codes);
		code.erase(code.length() - 1, 1);
		if(root->left == NULL && root->right == NULL)
		{
			codes[root->charValue] = code;
		}
	}

	//后序遍历删除huffman树，释放内存
	void deleteTree(HuffmanNode* root)
	{
		if(root == NULL)
		{
			return;
		}
		deleteTree(root->left);
		deleteTree(root->right);
		delete root;
	}

private:
	HuffmanNode* root;	//根节点
};

#endif