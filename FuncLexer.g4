lexer grammar FuncLexer;

RETURN : 'return' ;
INT_T  : 'int' ;
VOID_T : 'void' ;

LP    : '(' ;
RP    : ')' ;
LBR   : '{' ;
RBR   : '}' ;
COMMA : ',' ;
SEMI  : ';' ;
ASSIGN: '=' ;

PLUS  : '+' ;
MINUS : '-' ;
MUL   : '*' ;
DIV   : '/' ;

ID       : [a-zA-Z_][a-zA-Z_0-9]* ;
INT_LIT  : [0-9]+ ;
FLOAT_LIT: [0-9]+ '.' [0-9]+ ;

WS : [ \t\r\n]+ -> skip ;
