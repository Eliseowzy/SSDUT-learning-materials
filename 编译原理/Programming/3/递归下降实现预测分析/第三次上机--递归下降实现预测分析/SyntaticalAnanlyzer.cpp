#include "SyntaticalAnalyzer.h"
using namespace std;


SyntaticalAnalyzer::SyntaticalAnalyzer()
{
}

SyntaticalAnalyzer::~SyntaticalAnalyzer()
{
}


void SyntaticalAnalyzer::LexicalAnalyze()
{
	E();
}

void SyntaticalAnalyzer::InitialLookhead()
{
	lex.InitialBuffer();
	this->Lookahead=lex.NextToken();
	//this->Lookahead = i;
}

void SyntaticalAnalyzer::InitialBuffer()
{
	lex.InitialBuffer();
}

void SyntaticalAnalyzer::Match(int t)
{
	if (Lookahead == t) {
		int i = 0;
		Lookahead = lex.NextToken();
	} else
	{
		printf("\n Error\n");
	}
}

long int SyntaticalAnalyzer::T()
{
	cout << "T-->FT'\n";
	switch (Lookahead)
	{
	case LPAREN:	// FIRST(FT')={(,num}
	case ID:
		return F()*T_();
	default:
		printf("\n Error\n");

		exit(0);

	}
}
long SyntaticalAnalyzer::E_()
{
	cout<<"E'-->+TE'\n";
	switch (Lookahead)
	{
	case PLUS:	// E'-->+TE' 的情况， FIRST(E')={+,e}
		Match(PLUS); return T() + E_();

	case RPAREN:// E'--> 的情况，这个时候需要处理 FOLLOW集合， FOLLOW(E')={), $}
	case END:
		return 0;
	default:
		printf("\n Error\n");

		exit(0);
	}
}

long int SyntaticalAnalyzer::E()
{
	cout<<"E-->TE'\n";
	switch (Lookahead)
	{
	case LPAREN:	// FIRST(TE')={(,num}
	case ID:
		return T() + E_();
		//		case END:		// FOLLOW(E)={),$}
		//			return 0;
	default:
		cout<<"\n Error\n";

		//exit(0);
	}
}

long SyntaticalAnalyzer::T_()
{
	cout<<"T'-->*FT'\n";
	switch (Lookahead)
	{
	case MUL:	// FIRST(*FT')={*}
		Match(MUL);
		return F() * T_();
	case PLUS:	// T'-->e 的情况，这个时候需要处理 FOLLOW集合， FOLLOW(T')={+,),$}
	case RPAREN:
	case END:
		return 1;
	default:
		cout<<"\n Error\n";
	}
}

long SyntaticalAnalyzer::F()
{
	printf("F-->(E)|ID\n");
	int temp=0;

	switch (Lookahead)
	{
	case LPAREN:	// FIRST((E))={(}
		Match(LPAREN);
		temp = E();
		Match(RPAREN);
		return temp;
	case ID:		// FIRST(num) = {num}
		Match(ID);
		return temp;
	default:
		printf("\n Error\n");
	}
}



