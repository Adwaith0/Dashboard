lexer grammar CondLexer;

IF    : 'if' ;
ELSE  : 'else' ;

LP    : '(' ;
RP    : ')' ;
LBR   : '{' ;
RBR   : '}' ;
SEMI  : ';' ;
COMMA : ',' ;

EQEQ  : '==' ;
NEQ   : '!=' ;
LE    : '<=' ;
GE    : '>=' ;
LT    : '<' ;
GT    : '>' ;
ANDAND: '&&' ;
OROR  : '||' ;
BANG  : '!' ;

PLUS  : '+' ;
MINUS : '-' ;

ID       : [a-zA-Z_][a-zA-Z_0-9]* ;
INT_LIT  : [0-9]+ ;
FLOAT_LIT: [0-9]+ '.' [0-9]+ ;

WS : [ \t\r\n]+ -> skip ;
