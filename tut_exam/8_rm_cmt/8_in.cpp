%
{
    //#include<stdio.h>
    int count = 0;
    %
}

% %
        [^\n\t] +
{
    //if (yyleng > 3 && yyleng < 8)
    {
        count++;
    }
    /*}*/

    / cout << endl;
    /*%%

int yywrap(){
    return 1;
    }
int main()
{printf("Enter the number\n");
    yylex();
        printf("%d\n",count);

    return 0;*/
}