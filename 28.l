%{
#include<stdio.h>
%}
%%
[a-z . 0-9]+@[a-z]+".com"|".in" {printf("\n%s is accepted",yytext);}
.+ {printf("\n%s is not accepted",yytext);}
%%

int yywrap(){}
int main()
{
while(yylex());
}
