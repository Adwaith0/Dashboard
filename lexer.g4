lexer grammar CondLexer;

// keywords (must be before ID)
IF    : 'if' ;
ELSE  : 'else' ;

// punctuation & operators
LP    : '(' ;
RP    : ')' ;
LBR   : '{' ;
RBR   : '}' ;
SEMI  : ';' ;
COMMA : ',' ;

// relational & logical
EQEQ  : '==' ;
NEQ   : '!=' ;
LE    : '<=' ;
GE    : '>=' ;
LT    : '<' ;
GT    : '>' ;
ANDAND: '&&' ;
OROR  : '||' ;
BANG  : '!' ;

// arithmetic (simple)
PLUS  : '+' ;
MINUS : '-' ;

// identifiers & literals
ID     : [a-zA-Z_][a-zA-Z_0-9]* ;
INT_LIT: [0-9]+ ;
FLOAT_LIT: [0-9]+ '.' [0-9]+ ;

// whitespace & comments
WS : [ \t\r\n]+ -> skip ;
LINEC : '//' ~[\r\n]* -> skip ;
BLOCKC: '/*' .*? '*/' -> skip ;
