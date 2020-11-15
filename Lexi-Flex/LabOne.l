%{
	/*To check if a given string is a word or a digit*/
  #include "y.tab.h"
  int yyerror(char *errormsg);
  int yyparse();
%}
  
%%

("hi"|"hello")"\n"       { return HI;  }
("see you"|"bye")"\n"   { return BYE; }
[-[]+.,><]            { return yytext[0]; }
.                     { yyerror("Unknow char");  }

%%

int main(void)
{
     yyparse();
     return 0;
}

int yywrap(void)
{
     return 0;
}

int yyerror(char *errormsg)
{
      fprintf(stderr, "%s\n", errormsg);
      exit(1);
}