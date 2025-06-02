module Lexer where 

import Data.Char

data Expr = BTrue 
          | BFalse 
          | Num Int 
          | Add Expr Expr 
          | And Expr Expr 
          | If Expr Expr Expr 
          | Var String 
          | Lam String Ty Expr 
          | App Expr Expr 
          | Paren Expr 

          | Sub Expr Expr
          | Mul Expr Expr

          | Or Expr Expr

          | Lt Expr Expr    -- '<'
          | Eq Expr Expr    -- '=='         

          | Not Expr 
          
          | Let String Expr Expr

          -- Trabalho
          | Tuple [Expr]           
          | Proj Expr Int          -- Para projeção, se quiser acessar elementos: t.i
          deriving Show 

data Ty = TBool 
        | TNum 
        | TFun Ty Ty 

        -- Trabalho
        | TTuple [Ty]
        deriving (Show, Eq)

data Token = TokenTrue 
           | TokenFalse 
           | TokenNum Int 
           | TokenAdd 
           | TokenAnd 
           | TokenIf 
           | TokenThen
           | TokenElse 
           | TokenVar String 
           | TokenLam 
           | TokenColon
           | TokenArrow 
           | TokenTNum 
           | TokenTBool
           | TokenLParen 
           | TokenRParen  

           | TokenSub
           | TokenMul

           | TokenOr

           | TokenLT      -- '<'
           | TokenEq      -- '=='    

           | TokenNot    

           | TokenLet
           | TokenIn

           | TokenEqDef 

           -- Trabalho
           | TokenVirgula
           | TokenEChave
           | TokenDChave
           | TokenPonto
           deriving Show 

lexer :: String -> [Token]
lexer [] = [] 
lexer ('+':cs) = TokenAdd : lexer cs 
lexer ('\\':cs) = TokenLam : lexer cs 
lexer (':':cs) = TokenColon : lexer cs 
lexer ('(':cs) = TokenLParen : lexer cs 
lexer (')':cs) = TokenRParen : lexer cs 
lexer ('&':'&':cs) = TokenAnd : lexer cs 
lexer ('-':'>':cs) = TokenArrow : lexer cs 

lexer ('*':cs) = TokenMul : lexer cs
lexer ('-':cs) = TokenSub : lexer cs

lexer ('|':'|':cs) = TokenOr : lexer cs

lexer ('<':cs) = TokenLT : lexer cs
lexer ('=':'=':cs) = TokenEq : lexer cs

lexer ('!':cs) = TokenNot : lexer cs

lexer ('=':cs) = TokenEqDef : lexer cs

-- Trabalho
lexer (',':cs) = TokenVirgula : lexer cs
lexer ('{':cs) = TokenEChave : lexer cs
lexer ('}':cs) = TokenDChave : lexer cs
lexer ('.':cs) = TokenPonto : lexer cs

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
             ("Number", rest) -> TokenTNum : lexer rest 
             ("Boolean", rest) -> TokenTBool : lexer rest 

             ("let", rest) -> TokenLet : lexer rest
             ("in", rest) -> TokenIn : lexer rest
             (var, rest) -> TokenVar var : lexer rest 
 
