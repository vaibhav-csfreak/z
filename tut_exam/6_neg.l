%{
#include<stdio.h>
int count=0;
%}

%%
\-[0] {}
\-[0](\.[0-9]*[1-9])?   count++;
\-[1-9]+(\.[0-9]*[1-9])?    count++;
. {}
%%

int yywrap(){
    return 1;
    }
int main()
{printf("Enter the number\n");
    yylex();
        printf("%d\n",count);

    return 0;
}