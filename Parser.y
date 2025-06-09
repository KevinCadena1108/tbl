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

    -- Trabalho
    '{'             { TokenEChave }
    '}'             { TokenDChave }
    ','             { TokenVirgula }
    '.'             { TokenPonto }

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

        -- Trabalho
        | '{' ExpList '}'               { Tuple $2 }
        | Exp '.' num                   { Proj $1 $3 }     

Type    : Boolean                       { TBool }
        | Number                        { TNum }
        | '(' Type "->" Type ')'        { TFun $2 $4 }

        -- Trabalho
        | '{' TypeList '}'              { TTuple $2 }


        -- Trabalho
ExpList : Exp                          { [$1] }
        | Exp ',' ExpList              { $1 : $3 }   -- {1, 2, 3} transforma em Tuple [Num 1, Num 2, Num 3]

TypeList : Type                        { [$1] }
         | Type ',' TypeList           { $1 : $3 }   -- {Number, Boolean} transforma em TTuple [TNum, TBool]

{

parseError :: [Token] -> a
parseError _ = error "Erro sintático!"

}