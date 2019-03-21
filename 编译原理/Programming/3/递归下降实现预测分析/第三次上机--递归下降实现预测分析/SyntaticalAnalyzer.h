using namespace std;
#include"LexicalAnalyzer.h"


class SyntaticalAnalyzer
{
public:
	SyntaticalAnalyzer();
	~SyntaticalAnalyzer();

	void LexicalAnalyze();
	void InitialLookhead();
	void InitialBuffer();
	LexicalAnalyzer lex;
private:
	int Lookahead;
	

	
	
	void Match(int t);
	long int T();
	long int E_();
	long int E();
	long int T_();
	long int F();
};

