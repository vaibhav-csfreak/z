%{
#include<stdio.h>
%}

%%

[01]+(\.[01]*[1])? {printf("It is a binary number");}
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