{
module Parser where 

import Lexer
}

%name parser 
%tokentype { Token }
%error { parseError }

%token 
    num             { TokenNum $$ }
    true            { TokenTrue }
    false           { TokenFalse }
    '+'             { TokenAdd }
    "&&"            { TokenAnd }
    if              { TokenIf }
    then            { TokenThen }
    else            { TokenElse }
    var             { TokenVar $$ }
    '\\'            { TokenLam }
    ':'             { TokenColon }
    "->"            { TokenArrow }
    Number          { TokenTNum }
    Boolean         { TokenTBool }
    '('             { TokenLParen }
    ')'             { TokenRParen }

    '-'             { TokenSub }
    '*'             { TokenMul }

    "||"            { TokenOr }

    '<'             { TokenLT }
    "=="            { TokenEq }

    '!'             { TokenNot }

    let             { TokenLet }
    in              { TokenIn }

    '='             { TokenEqDef }

%nonassoc if then else 
%nonassoc '\\' 
%left '+'
%left '-' 
%left '*' 
%left "&&"
%left "||"
%left '<'
%left "=="

%% 

Exp     : num                           { Num $1 }
        | true                          { BTrue }
        | false                         { BFalse }
        | Exp '+' Exp                   { Add $1 $3 }
        | Exp "&&" Exp                  { And $1 $3 }
        | if Exp then Exp else Exp      { If $2 $4 $6 }
        | var                           { Var $1 }
        | '\\' var ':' Type "->" Exp    { Lam $2 $4 $6 }
        | Exp Exp                       { App $1 $2 }
        | '(' Exp ')'                   { Paren $2 }

        | Exp '-' Exp                   { Sub $1 $3 }
        | Exp '*' Exp                   { Mul $1 $3 }

        | Exp "||" Exp                  { Or $1 $3 }

        | Exp '<' Exp                   { Lt $1 $3 }
        | Exp "==" Exp                  { Eq $1 $3 }

        | '!' Exp                       { Not $2 }

        | let var '=' Exp in Exp        { Let $2 $4 $6 }

Type    : Boolean                       { TBool }
        | Number                        { TNum }
        | '(' Type "->" Type ')'        { TFun $2 $4 }

{ 

parseError :: [Token] -> a 
parseError _ = error "Erro sintático!"

}