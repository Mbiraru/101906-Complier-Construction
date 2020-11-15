# 101906-Complier-Construction
Complier Construction Labs.
Lexical analysis produces a stream of tokens as output, which consists of identifier, keywords,separator,operator, and literals.

LEXI-FLEX will work by:
Step 1: An input file describes the lexical analyzer to be generated named lex.l is written in lex language. The lex compiler transforms lex.l to C program, in a file that is always named lex.yy.c.
Step 2: The C complier compile lex.yy.c file into an executable file called a.out.
Step 3: The output file a.out take a stream of input characters and produce a stream of tokens.
