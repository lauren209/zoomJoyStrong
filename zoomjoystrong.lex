%{
    #include <stdio.h>
    #incluse <stdio.lib>
    void printLexeme();
%}

%%




(END)               { printf("ENDING\n"); exit(1);}
;                   { printf("END_STATEMENT\n");}
(POINT)             { printf("POINT\n");}
(LINE)              { printf("LINE\n");}
(CIRCLE)            { printf("CIRCLE\n");}
(RECTANGLE)         { printf("RECTANGLE\n");}
(SET_COLOR)         { printf("SET_COLOR\n");}
[0-9]+              { printf("DIGIT\n"); }
[0-9]+"."[0-9]+     { printf("FLOAT\n"); }
[ |\t|\n]+          ; // Ignore these chars!
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





