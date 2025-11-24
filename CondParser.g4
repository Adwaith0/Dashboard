parser grammar CondParser;
options { tokenVocab = CondLexer; }

program : stmt* EOF ;

stmt
  : assignStmt
  | ifStmt
  ;

assignStmt : ID '=' expr SEMI ;

ifStmt
  : IF LP boolExpr RP block (ELSE (ifStmt | block))?
  ;

block : LBR stmt* RBR ;

boolExpr
  : boolExpr OROR boolTerm
  | boolTerm
  ;

boolTerm
  : boolTerm ANDAND boolFactor
  | boolFactor
  ;

boolFactor
  : BANG boolFactor
  | LP boolExpr RP
  | relation
  ;

relation
  : expr (EQEQ | NEQ | LE | GE | LT | GT) expr
  | expr
  ;

expr
  : expr PLUS term
  | expr MINUS term
  | term
  ;

term
  : ID
  | INT_LIT
  | FLOAT_LIT
  | LP expr RP
  ;
