parser grammar FuncParser;
options { tokenVocab = FuncLexer; }

program : funcDef* EOF ;

funcDef
  : (INT_T | VOID_T)? ID LP paramList? RP block
  ;

paramList : param (COMMA param)* ;
param     : INT_T ID ;

block : LBR stmt* RBR ;

stmt
  : varDecl
  | assignStmt
  | returnStmt
  | exprStmt
  ;

varDecl : INT_T ID (ASSIGN expr)? SEMI ;

assignStmt : ID ASSIGN expr SEMI ;

returnStmt : RETURN expr? SEMI ;

exprStmt : expr SEMI ;

expr
  : expr PLUS term
  | expr MINUS term
  | term
  ;

term
  : ID LP argList? RP
  | ID
  | INT_LIT
  | FLOAT_LIT
  | LP expr RP
  ;

argList : expr (COMMA expr)* ;
