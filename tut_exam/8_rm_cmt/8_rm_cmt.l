%{
#include<stdio.h>
int count=0;
%}

%%
\/\/(.*)    ;
\/\*(.*\n)*.*\*\/   ;

%%

int yywrap(){
    return 1;
    }
int main(int argc, char *argv[])
{
    yyin=fopen(argv[1],"r");
    yyout=fopen(argv[2],"w");
    yylex();
    return 0;
}