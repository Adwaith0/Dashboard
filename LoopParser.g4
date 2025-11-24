parser grammar LoopParser;
options { tokenVocab = LoopLexer; }

program : stmt* EOF ;

stmt
  : assignStmt
  | whileStmt
  | forStmt
  ;

assignStmt : ID ASSIGN expr SEMI ;

whileStmt : WHILE LP cond RP block ;

forStmt : FOR LP forInit? SEMI? cond? SEMI? forUpdate? RP block ;

forInit : assignNoSemi ;
forUpdate : assignNoSemi (COMMA assignNoSemi)* ;
assignNoSemi : ID ASSIGN expr ;

cond : expr (LT | LE | GT | GE | EQEQ) expr ;

block : LBR stmt* RBR ;

expr
  : expr PLUS term
  | term
  ;

term
  : ID
  | INT_LIT
  | FLOAT_LIT
  | LP expr RP
  ;
