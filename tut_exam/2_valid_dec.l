%{
#include<stdio.h>
%}

%%
0   {printf("GOOD NUM");}
(\-)?[0](\.[0-9]*[1-9])? {printf("It is a good number");}
(\-)?([1-9][0-9]*)(\.[0-9]*[1-9])? {printf("It is a good number");}
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