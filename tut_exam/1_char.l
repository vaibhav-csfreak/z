%{
#include<stdio.h>
%}

%%
[a-z]  {printf("It is lower case");}
[A-Z]  {printf("It's upper case");}
[0-9]   {printf("number");}
.*       {printf("special characters");}
%%

int yywrap(){
    return 1;
    }
int main()
{
    printf("Enter the string\n");
    yylex();
    return 0;
}