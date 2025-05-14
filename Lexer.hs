module Lexer where 

import Data.Char

data Expr = BTrue 
          | BFalse 
          | Num Int 
          | Add Expr Expr 
          | Sub Expr Expr
          | Mul Expr Expr
          | Div Expr Expr
          | And Expr Expr 
          | If Expr Expr Expr 
          deriving Show 

data Ty = TBool 
        | TNum 
        deriving (Show, Eq)

data Token = TokenTrue 
           | TokenFalse 
           | TokenNum Int 
           | TokenAdd 
           | TokenAnd 
           | TokenSub
           | TokenMul
           | TokenDiv
           | TokenIf 
           | TokenThen
           | TokenElse 
           deriving Show 

lexer :: String -> [Token]
lexer [] = [] 
lexer ('+':cs) = TokenAdd : lexer cs 
lexer ('-':cs) = TokenSub : lexer cs
lexer ('*':cs) = TokenMul : lexer cs
lexer ('/':cs) = TokenDiv : lexer cs
lexer ('&':'&':cs) = TokenAnd : lexer cs 
lexer (c:cs) | isSpace c = lexer cs 
             | isDigit c = lexNum (c:cs) 
             | isAlpha c = lexKW (c:cs)

lexNum :: String -> [Token]
lexNum cs = case span isDigit cs of 
              (num, rest) -> TokenNum (read num) : lexer rest 

lexKW :: String -> [Token]
lexKW cs = case span isAlpha cs of 
             ("true", rest) -> TokenTrue : lexer rest 
             ("false", rest) -> TokenFalse : lexer rest 
             ("if", rest) -> TokenIf : lexer rest 
             ("then", rest) -> TokenThen : lexer rest 
             ("else", rest) -> TokenElse : lexer rest 
             _ -> error "Erro léxico: palavra-chave inválida!"
 
