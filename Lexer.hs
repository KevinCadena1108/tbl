module Lexer where 

import Data.Char 

-- Definição das expressões suportadas
data Expr = BTrue 
          | BFalse 
          | Num Int 
          | Add Expr Expr 
          | Sub Expr Expr
          | Mult Expr Expr
          | Div Expr Expr
          | Mod Expr Expr
          | GThan Expr Expr
          | LThan Expr Expr
          | Equal Expr Expr
          | Or Expr Expr
          | Xor Expr Expr
          | Not Expr
          | And Expr Expr 
          | If Expr Expr Expr 
          | Var String
          | Lam String Ty Expr
          | App Expr Expr
          deriving Show 

-- Tipos suportados pelo interpretador
data Ty = TBool 
        | TNum 
        | TFun Ty Ty
        deriving (Show, Eq)

-- Tokens reconhecidos pelo lexer
data Token = TokenTrue
           | TokenFalse
           | TokenNum Int
           | TokenAdd
           | TokenAnd
           | TokenSub
           | TokenMult
           | TokenDiv
           | TokenMod
           | TokenGThan
           | TokenLThan
           | TokenEqual
           | TokenOr
           | TokenXor
           | TokenNot
           | TokenIf
           | TokenThen
           | TokenElse
           deriving Show 

-- Função principal do lexer: transforma uma string em uma lista de tokens
lexer :: String -> [Token]
lexer [] = [] 
-- Reconhecimento de cada símbolo e palavra-chave
lexer ('+':cs) = TokenAdd : lexer cs
lexer ('-':cs) = TokenSub : lexer cs
lexer ('*':cs) = TokenMult : lexer cs 
lexer ('/':cs) = TokenDiv : lexer cs 
lexer ('%':cs) = TokenMod : lexer cs
lexer ('&':'&':cs) = TokenAnd : lexer cs
lexer ('|':cs) = TokenOr : lexer cs
lexer ('^':'^':cs) = TokenXor : lexer cs 
lexer ('!':cs) = TokenNot : lexer cs 
lexer ('=':'=':cs) = TokenEqual : lexer cs 
lexer ('>':cs) = TokenGThan : lexer cs
lexer ('<':cs) = TokenLThan : lexer cs  

-- Ignora espaços, reconhece números e palavras-chave
lexer (c:cs) | isSpace c = lexer cs 
             | isDigit c = lexNum (c:cs) 
             | isAlpha c = lexKW (c:cs)

-- Função auxiliar para reconhecer números inteiros
lexNum :: String -> [Token]
lexNum cs = case span isDigit cs of 
                (num, rest) -> TokenNum (read num) : lexer rest 

-- Função auxiliar para reconhecer palavras-chave
lexKW :: String -> [Token]
lexKW cs = case span isAlpha cs of 
        ("true", rest) -> TokenTrue : lexer rest
        ("false", rest) -> TokenFalse : lexer rest
        ("if", rest) -> TokenIf : lexer rest
        ("then", rest) -> TokenThen : lexer rest
        ("else", rest) -> TokenElse : lexer rest
        _ -> error "Erro léxico: palavra-chave inválida"

