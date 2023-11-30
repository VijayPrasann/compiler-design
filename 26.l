%{
#include <stdio.h>
%}

%%

^[789][0-9]{9}$   printf("Valid Indian Mobile Number: %s\n", yytext);
.                  printf("Invalid input\n");

%%

int main() {
    yylex();
    return 0;
}
