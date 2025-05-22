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
    '-'             { TokenSub }
    '*'             { TokenMult }
    '/'             { TokenDiv }
    "&&"            { TokenAnd }
    "^^"            { TokenXor }
    '|'             { TokenOr }
    '%'             { TokenMod }
    '!'             { TokenNot }
    "=="            { TokenEqual }
    '>'             { TokenGThan }
    '<'             { TokenLThan }
    if              { TokenIf }
    then            { TokenThen }
    else            { TokenElse }


%nonassoc if then else
%left '+' '-'
%left '*' '/' '%'
%left '!' "==" "^^" "&&" '|'

%%

Exp : num           { Num $1 }
    | true          { BTrue }
    | false         { BFalse }
    | Exp '+' Exp   { Add $1 $3 }
    | Exp '-' Exp   { Sub $1 $3 }
    | Exp '*' Exp   { Mult $1 $3 }
    | Exp '/' Exp   { Div $1 $3 }
    | Exp '%' Exp   { Mod $1 $3 }
    | Exp '<' Exp   { GThan $1 $3 }
    | Exp '>' Exp   { LThan $1 $3 }
    | Exp '!' Exp   { Not $1 }
    | Exp '|' Exp   { Or $1 $3 }
    | Exp "^^" Exp  { Xor $1 $3 }
    | Exp "==" Exp  { Equal $1 $3}
    | Exp "&&" Exp  { And $1 $3 }
    | if Exp then Exp else Exp  {If $2 $4 $6}




{

parseError :: [Token] -> a 
parseError _ = error "Erro sintático"

}

