%{
#include <stdio.h>
%}

%%
[0-9][0-9][Pp]-[0-9][0-9][0-9][0-9] {
    printf("VALID: %s\n", yytext);
}

\n {
    /* ignore */
}

. {
    printf("INVALID: %s (Use YYP or YYp-XXXX)\n", yytext);
}
%%

int main() {
    printf("Enter roll numbers:\n");
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}