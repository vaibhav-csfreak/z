%{
#include<stdio.h>
%}

%%

[_a-zA-Z][_a-zA-Z0-9]* {printf("It is a good number");}

.* {printf("NOT GOOD");}
%%

int yywrap(){
    return 1;
    }
int main()
{
    printf("Enter the number\n");
    yylex();
    return 0;
}