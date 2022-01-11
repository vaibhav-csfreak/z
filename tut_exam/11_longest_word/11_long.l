%{
#include<stdio.h>
#include<string.h>
char str[100];int l=0;
%}

%%
[a-zA-Z]* { if(yyleng>l){l=yyleng; strcpy(str,yytext);}}
. {;}

%%

int yywrap(){
    return 1;
    }
int main(int argc, char *argv[])
{
    yyin=fopen(argv[1],"r");
    yylex();
    printf("Largest string : %s\nstring length : %d",str,l);
    return 0;
}