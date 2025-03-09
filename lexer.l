%{
#include<stdio.h>
%}
DIGIT [0-9]
ID [a-zA-Z_][a-zA-Z0-9_]*
OPERATOR [+-*/=]
PUNCT [;(){}]
%%
{DIGIT}+ {printf("NUMBER: %s\n", yytext);}
{ID} {printf("IDENTIFIER: %s\n", yytext);}
{OPERATOR} {printf("OPERATOR: %s\n", yytext);}
{PUNCT} { printf("PUNCTUATION: %s\n", yytext); }
[ \t\n] ; // Skip whitespace
. { printf("Unknown character: %s\n", yytext); }
%%

int main(){
yylex();
return 0;
}
int yywrap(){
return 1;
}