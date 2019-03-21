%{
#include <ctype.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#define PLUS 0
#define MUL 1
#define LPAREN  2
#define RPAREN 3
#define ID 4
#define END 5
#define OTHER 6

int yylval;
int LOOKUP = -1;
int LOCATION=0;
int Buffer[10000];
int BufferLocation=0;
struct word{             
char *word_name;
int location;
struct word *next;
}*word_list; 
   
extern void *malloc();

int installID();
int installNum();
void PrintBuffer(int result);

%}

ws                  {delim}+
letter              [A-Za-z]
digit               [0-9]
id                  {letter}({letter}|{digit})+
number              {digit}+
%%
int                 {printf("INT        int\n");}
char                {printf("CHAR       char\n");}

if                  {printf("IF         if\n");}
else                {printf("ELSE       else\n");}
while               {printf("WHILE      while\n");}
for                 {printf("FOR        for\n");}
"="                 {printf("ASSIGN     =\n");}

{id}                {yylval = (int) installID();  printf("ID        %s        %s\n",yytext,yytext);Buffer[BufferLocation++]=ID;}
{number}            {yylval = (int) installNum();  printf("NUMBER    %s        %d\n",yytext,yylval);Buffer[BufferLocation++]=ID;}

"<"                 {printf("LT        <\n");}
"<="                {printf("LE        <=\n");}
"=="                {printf("EQ        ==\n");}
"<>"                {printf("NE        <>\n");}
">"                 {printf("GT        >\n");}
">="                {printf("GE        >=\n");}
"!="                {printf("NZ        !=\n");}

"+"                 {printf("PLUS      +\n");Buffer[BufferLocation++]=PLUS;}
"-"                 {printf("MINUS     -\n");}
"*"                 {printf("MUL       *\n");Buffer[BufferLocation++]=MUL;}
"/"                 {printf("DIV       /\n");}
"%"                 {printf("MOD       %\n");}
"++"                {printf("INC       ++\n");}
"--"                {printf("DEC       --\n");}

"&"                 {printf("IAND      &\n");}
"|"                 {printf("IOR       |\n");}
"^"                 {printf("XOR       ^\n");}
"~"                 {printf("NOT       ~\n");}
"<<"                {printf("SHL       <<\n");}
">>"                {printf("SHR       >>\n");}
"&&"                {printf("AND       &&\n");}
"||"                {printf("OR        ||\n");}
"!"                 {printf("OPPSITE   !\n");}

"{"                 {printf("LBRACE    {\n");}
"}"                 {printf("RBRACE    }\n");}
"("                 {printf("LPAREN    (\n");Buffer[BufferLocation++]=LPAREN;}
")"                 {printf("RPAREN    )\n");Buffer[BufferLocation++]=RPAREN;}
"["                 {printf("LSBRACKET [\n");}
"]"                 {printf("RSBRACKET ]\n");}
";"                 {printf("SIMICOLON ;\n");}
"'"                 {printf("SQUITO    '\n");}
"\""                {printf("DQUITO    \"\n");}
"//"                {printf("NOTE      \//\n");}
"/*"                {printf("LNOTE     \/*\n");}
"*/"                {printf("RNOTE     \*/\n");}
"#"                 {printf("END         #\n");Buffer[BufferLocation++]=END;}

%%



int add_word(char *word)
{
struct word *wp;
if(lookup_wordID(word)!=LOOKUP)
return 0;
LOCATION++;
wp=(struct word*)malloc(sizeof(struct word));   
wp->next=word_list;

wp->word_name=(char *)malloc(strlen(word));
wp->location=LOCATION;
strcpy(wp->word_name,word);
word_list=wp;
return 1;

}

int lookup_wordID(char *word)
{
struct word *wp=word_list;

for(;wp;wp=wp->next)
{
if(strcmp(wp->word_name,word) == 0)
return  wp->location;

}

return LOOKUP;
}
int lookup_wordNum(char *word)
{
struct word *wp=word_list;
for(;wp;wp=wp->next)
{
if(strcmp(wp->word_name,word) == 0)
return  wp->word_name-'0';
}
return LOOKUP;
}

int installID()
{
int index;
index=lookup_wordID(yytext);
if(index==-1)
return add_word(yytext);
else
    return index; 
}

int installNum()
{
int index;
index=lookup_wordNum(yytext);
if(index==-1)
return add_word(yytext);
else
return index;
}

void PrintBuffer(){
FILE *fp=fopen("Buffer.txt","w");
int i=0;
while(i<BufferLocation){
    fprintf(fp,"%d\n",Buffer[i++]);
}
fclose(fp);
}


int main(void)
{
char infilename[40];
printf("Please input the file name:");
scanf("%s",&infilename);
yyin=fopen(infilename,"r");
printf("Start:  \n");
printf("单词       词素        属性  \n");

yylex();
PrintBuffer();
return;
}