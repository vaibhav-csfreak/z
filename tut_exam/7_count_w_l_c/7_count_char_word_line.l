%{
#include<stdio.h>
int c=0,w=0,l=0;
%}

%%

[ ]    {   c++;w++;    }
[\n] {   w++;l++;c--; }
.   c++;
%%

int yywrap(){
    return 1;
    }
int main(int argc, char*argv[])
{
    yyin=fopen(argv[1],"r");
    yylex();
    if(c>0){
        w++;l++;
    }
    printf("Lines = %d\nChar = %d\nWord = %d\n",l,c,w);
    return 0;
}