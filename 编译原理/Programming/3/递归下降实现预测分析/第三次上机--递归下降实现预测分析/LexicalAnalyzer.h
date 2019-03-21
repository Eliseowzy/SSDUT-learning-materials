#include"Buffer.h"
#define PLUS 0
#define MUL 1
#define LPAREN  2
#define RPAREN 3
#define ID 4
#define END 5
#define OTHER 6
class LexicalAnalyzer
{
private:
	
public:
	LexicalAnalyzer();
	~LexicalAnalyzer();
	int NextToken();
	void InitialBuffer();
	Buffer bf;
	//int CurrentLoaction = 0;
};

