lexer grammar LoopLexer;

WHILE  : 'while' ;
FOR    : 'for' ;

LP    : '(' ;
RP    : ')' ;
LBR   : '{' ;
RBR   : '}' ;
SEMI  : ';' ;
COMMA : ',' ;
ASSIGN: '=' ;

LT  : '<' ;
LE  : '<=' ;
GT  : '>' ;
GE  : '>=' ;
EQEQ: '==' ;

PLUS : '+' ;

ID       : [a-zA-Z_][a-zA-Z_0-9]* ;
INT_LIT  : [0-9]+ ;
FLOAT_LIT: [0-9]+ '.' [0-9]+ ;

WS : [ \t\r\n]+ -> skip ;
