#include "LexicalAnalyzer.h"



LexicalAnalyzer::LexicalAnalyzer()
{
}


LexicalAnalyzer::~LexicalAnalyzer()
{
}

int LexicalAnalyzer::NextToken() {
	return bf.GetElement();
}

void LexicalAnalyzer::InitialBuffer()
{
	bf.Bufferprint();
}
