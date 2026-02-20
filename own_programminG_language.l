%{
#include <stdio.h>
%}

%option noyywrap

/* Definitions */
LETTER      [A-Za-z]
DIGIT       [0-9]

%%

"int"               {printf("KEYWORD: int\n");}
"char"              {printf("KEYWORD: char\n");}


"!="                {printf("OPERATOR: !=\n");}

"_"{LETTER}({LETTER}|{DIGIT})*"#" {printf("IDENTIFIER: %s\n", yytext);}

{DIGIT}+            {printf("CONSTANT_INTEGER: %s\n", yytext);}

[ \t\n]+            {}

.                   {printf("INVALID: %s\n", yytext);}

%%  

int main()
{
    yylex();
    return 0;
}