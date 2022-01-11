%{
#include<stdio.h>
int sl=0,ml=0;
%}

%%
"/*"[^*/\n]*"*/"    sl++;
"/*"[^*/]*"*/"  ml++;
"//".*  sl++;

%%

int yywrap(){
    return 1;
    }
int main(int argc, char *argv[])
{
    yyin=fopen(argv[1],"r");
    yylex();
    printf("sl : %d\nml : %d\n",sl,ml);
    return 0;
}