%{
    #include <stdio.h>
    #incluse <stdio.lib>
    void printLexeme();
%}

%%




END                 { printf("ENDING\n"); exit(1);}
;                   { printf("END_STATEMENT\n");}
                    { printf("POINT\n");}
                    { printf("LINE\n")}
                    { printf("CIRCLE\n")}
                    { printf("RECTANGLE\n")}
[0-9]+              { printf("DIGIT\n"); }
[0-9]+"."[0-9]+     { printf("FLOAT\n"); }
[ \t\n]+            ; // Ignore these chars!
.                   { printf("UNLISTED\n");}
%%



void printLexeme(){
        printf("(%s)\n", yytext);
}



%%


int main(int argc, char** argv){
  yylex();    // Start lexing!
  return 0;
}





