module Interpreter where 

import Lexer 

-- Verifica se uma expressão é um valor 
isValue :: Expr -> Bool 
isValue BTrue = True
isValue BFalse = True
isValue (Num _ ) = True
isValue (Lam _ _ _) = True
isValue _        = False  

-- Substituição de variáveis: subst v e expr substitui todas as ocorrências de v por e em expr
subst :: String -> Expr -> Expr -> Expr
subst v e BTrue = BTrue
subst v e BFalse = BFalse
subst v e (Num x) = Num x
subst v e (Add e1 e2) = Add (subst v e e1) (subst v e e2)
subst v e (And e1 e2) = And (subst v e e1) (subst v e e2)
subst v e (If e1 e2 e3) = If (subst v e e1) (subst v e e2) (subst v e e3) 
subst v e (Or e1 e2) = Or (subst v e e1) (subst v e e2)
subst v e (Xor e1 e2) = Xor (subst v e e1) (subst v e e2)
subst v e (Not e1) = Not (subst v e e1)
subst v e (GThan e1 e2) = GThan (subst v e e1) (subst v e e2)
subst v e (LThan e1 e2) = LThan (subst v e e1) (subst v e e2)
subst v e (Equal e1 e2) = Equal (subst v e e1) (subst v e e2)
subst v e (Sub e1 e2) = Sub (subst v e e1) (subst v e e2)
subst v e (Mult e1 e2) = Mult (subst v e e1) (subst v e e2)
subst v e (Div e1 e2) = Div (subst v e e1) (subst v e e2)
subst v e (Mod e1 e2) = Mod (subst v e e1) (subst v e e2)

-- Substitui variável se for igual ao nome procurado, senão mantém
subst v e (Var x) = if v == x then 
                            e 
                     else 
                            Var x 
-- Substituição dentro de lambda: só substitui se o parâmetro não for igual à variável
subst v e (Lam x t b)
    | x == v    = Lam x t b  
    | otherwise = Lam x t (subst v e b)

-- Realiza um passo de avaliação (redução) na expressão
step :: Expr -> Expr 
-- Operações aritméticas
step (Add (Num n1) (Num n2)) = Num (n1 + n2)     -- Soma de dois números
step (Add (Num n1) e2) = let e2' = step e2       -- Reduz o segundo argumento
                           in Add (Num n1) e2' 
step (Add e1 e2) = Add (step e1) e2              -- Reduz o primeiro argumento
step (Sub (Num n1) (Num n2)) = Num (n1 - n2)
step (Sub (Num n1) e2) = Sub (Num n1) (step e2)
step (Sub e1 e2) = Sub (step e1) e2
step (Mult (Num n1) (Num n2)) = Num (n1 * n2)
step (Mult (Num n1) e2) = Mult (Num n1) (step e2)
step (Mult e1 e2) = Mult (step e1) e2
step (Div (Num n1) (Num n2)) = Num (quot n1 n2)
step (Div (Num n1) e2) = Div (Num n1) (step e2)
step (Div e1 e2) = Div (step e1) e2
step (Mod (Num n1) (Num n2)) = Num (mod n1 n2)
step (Mod (Num n1) e2) = Mod (Num n1) (step e2)
step (Mod e1 e2) = Mod (step e1) e2

-- Operações relacionais
step (GThan (Num n1) (Num n2)) |n1 > n2 = BTrue
                               | otherwise = BFalse
step (GThan (Num n1) e2) = GThan (Num n1) (step e2)
step (GThan e1 e2) = GThan (step e1) e2
step (LThan (Num n1) (Num n2)) |n1 < n2 = BTrue
                               | otherwise = BFalse
step (LThan (Num n1) e2) = LThan (Num n1) (step e2)
step (LThan e1 e2) = LThan (step e1) e2
step (Equal (Num n1) (Num n2)) |n1 == n2 = BTrue
                               | otherwise = BFalse
step (Equal (Num n1) e2) = Equal (Num n1) (step e2)
step (Equal e1 e2) = Equal (step e1) e2

-- Operações booleanas
step (And BTrue e2) = e2 
step (And BFalse e2) = BFalse 
step (And e1 e2) = And (step e1) e2 
step (Or BTrue e2) = BTrue 
step (Or BFalse e2) = e2 
step (Or e1 e2) = Or (step e1) e2 
step (Xor BTrue e2) = Not e2 
step (Xor BFalse e2) =  e2 
step (Xor e1 e2) = Xor (step e1) e2
step (Not BTrue ) = BFalse 
step (Not BFalse ) = BTrue 
step (Not e1) = Not (step e1)

-- Estrutura condicional
step (If BTrue e1 e2) = e1 
step (If BFalse e1 e2) = e2
step (If e e1 e2) = If (step e) e1 e2 

-- Aplicação de função (lambda)
step (App e1@(Lam x t b) e2) | isValue e2 = subst x e2 b 
                             | otherwise = App e1 (step e2) 
step (App e1 e2) = App (step e1) e2  

-- Avalia uma expressão até chegar em um valor (forma normal)
eval :: Expr -> Expr 
eval e | isValue e = e 
       | otherwise = eval (step e)