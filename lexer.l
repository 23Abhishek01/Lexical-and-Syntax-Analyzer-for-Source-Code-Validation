%{
#include "token.h"
#include <stdio.h>
%}

DIGIT    [0-9]+
ID       [a-zA-Z_][a-zA-Z0-9_]*
OPERATOR [-+*/=]
PUNCT    [;(){}]

%%
// Keywords
"if"      { printf("Keyword: %s\n", yytext); return TOKEN_KEYWORD; }
"else"    { printf("Keyword: %s\n", yytext); return TOKEN_KEYWORD; }
"print"   { printf("Keyword: %s\n", yytext); return TOKEN_KEYWORD; }
"int"     { printf("Keyword: %s\n", yytext); return TOKEN_KEYWORD; }  

// Tokens
{DIGIT}    { printf("Number: %s\n", yytext); return TOKEN_NUMBER; }
{ID}       { printf("Identifier: %s\n", yytext); return TOKEN_IDENTIFIER; }
{OPERATOR} { printf("Operator: %s\n", yytext); return TOKEN_OPERATOR; }
{PUNCT}    { printf("Punctuation: %s\n", yytext); return TOKEN_PUNCTUATION; }

[ \t\n]   ; // Skip whitespace
.         { printf("Unknown: %s\n", yytext); return TOKEN_UNKNOWN; }

%%

int main() {
    int token;
    while ((token = yylex()) != 0) {
        printf("Token: %d, Value: %s\n", token, yytext);
    }
    return 0;
}

int yywrap() {
    return 1;
}
