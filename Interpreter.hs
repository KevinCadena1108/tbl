module Interpreter where 

import Lexer 

isValue :: Expr -> Bool 
isValue BTrue   = True 
isValue BFalse  = True  
isValue (Num _) = True 
isValue _       = False 

step :: Expr -> Expr 
step (Add (Num n1) (Num n2)) = Num (n1 + n2)     -- S-Add
step (Add (Num n1) e2) = let e2' = step e2       -- S-Add2
                           in Add (Num n1) e2' 
step (Add e1 e2) = Add (step e1) e2              -- S-Add1

step (Sub (Num n1) (Num n2)) = Num (n1 - n2)     -- S-Sub
step (Sub (Num n1) e2) = let e2' = step e2       -- S-Sub2
                           in Sub (Num n1) e2'
step (Sub e1 e2) = Sub (step e1) e2              -- S-Sub1

step (Mul (Num n1) (Num n2)) = Num (n1 * n2)     -- S-Mul
step (Mul (Num n1) e2) = let e2' = step e2       -- S-Mul2
                           in Mul (Num n1) e2'
step (Mul e1 e2) = Mul (step e1) e2              -- S-Mul1

step (Div (Num n1) (Num n2)) = Num (n1 `div` n2) -- S-Div
step (Div (Num n1) e2) = let e2' = step e2       -- S-Div2
                           in Div (Num n1) e2'
step (Div e1 e2) = Div (step e1) e2              -- S-Div1     

step (And BTrue e2) = e2 
step (And BFalse e2) = BFalse 
step (And e1 e2) = And (step e1) e2 
step (If BTrue e1 e2) = e1 
step (If BFalse e1 e2) = e2
step (If e e1 e2) = If (step e) e1 e2 

eval :: Expr -> Expr 
eval e | isValue e = e 
       | otherwise = eval (step e)

