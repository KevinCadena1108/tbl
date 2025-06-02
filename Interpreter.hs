module Interpreter where 

import Lexer 

isValue :: Expr -> Bool 
isValue BTrue       = True 
isValue BFalse      = True  
isValue (Num _)     = True 
isValue (Lam _ _ _) = True

-- Trabalho
isValue (Tuple es) = all isValue es
isValue _           = False 


subst :: String -> Expr -> Expr -> Expr
subst v e (Add e1 e2) = Add (subst v e e1) (subst v e e2)
subst v e (Sub e1 e2) = Sub (subst v e e1) (subst v e e2)
subst v e (Mul e1 e2) = Mul (subst v e e1) (subst v e e2)
subst v e (And e1 e2) = And (subst v e e1) (subst v e e2)
subst v e (Or e1 e2)  = Or (subst v e e1) (subst v e e2)
subst v e (Lt e1 e2)  = Lt (subst v e e1) (subst v e e2)
subst v e (Eq e1 e2)  = Eq (subst v e e1) (subst v e e2)
subst v e (Not e1)    = Not (subst v e e1)
subst v e (If e1 e2 e3) = If (subst v e e1) (subst v e e2) (subst v e e3)
subst v e (Let x e1 e2) = Let x (subst v e e1) (subst v e e2)
subst v e (Num n) = Num n
subst v e BTrue = BTrue
subst v e BFalse = BFalse
subst v e (Var x) = if v == x then e else Var x
subst v e (Lam x t b) = Lam x t (subst v e b)
subst v e (App e1 e2) = App (subst v e e1) (subst v e e2)
subst v e (Paren e1) = Paren (subst v e e1)

-- Trabalho
subst v e (Tuple es) = Tuple (map (subst v e) es)
subst v e (Proj e1 i) = Proj (subst v e e1) i


step :: Expr -> Expr 
step (Add (Num n1) (Num n2)) = Num (n1 + n2)     -- S-Add
step (Add (Num n1) e2) = let e2' = step e2       -- S-Add2
                           in Add (Num n1) e2' 
step (Add e1 e2) = Add (step e1) e2              -- S-Add1


step (Sub (Num n1) (Num n2)) = Num (n1 - n2)           -- S-Sub
step (Sub (Num n1) e2) = let e2' = step e2             -- S-Sub2
                           in Sub (Num n1) e2'
step (Sub e1 e2) = Sub (step e1) e2                    -- S-Sub1

step (Mul (Num n1) (Num n2)) = Num (n1 * n2)           -- S-Mul
step (Mul (Num n1) e2) = let e2' = step e2             -- S-Mul2
                           in Mul (Num n1) e2'
step (Mul e1 e2) = Mul (step e1) e2                    -- S-Mul1

step (Or BTrue e2)  = BTrue
step (Or BFalse e2) = e2
step (Or e1 e2)     = Or (step e1) e2

step (Lt (Num n1) (Num n2)) = if n1 < n2 then BTrue else BFalse
step (Lt (Num n1) e2) = let e2' = step e2 in Lt (Num n1) e2'
step (Lt e1 e2) = Lt (step e1) e2

step (Eq (Num n1) (Num n2)) = if n1 == n2 then BTrue else BFalse
step (Eq (Num n1) e2) = let e2' = step e2 in Eq (Num n1) e2'
step (Eq e1 e2) = Eq (step e1) e2

step (Not BTrue)  = BFalse
step (Not BFalse) = BTrue
step (Not e)      = Not (step e)

step (Let x e1 e2) | isValue e1 = subst x e1 e2
                   | otherwise  = Let x (step e1) e2


step (And BTrue e2) = e2 
step (And BFalse e2) = BFalse 
step (And e1 e2) = And (step e1) e2 
step (If BTrue e1 e2) = e1 
step (If BFalse e1 e2) = e2
step (If e e1 e2) = If (step e) e1 e2 
step (App e1@(Lam x t b) e2) | isValue e2 = subst x e2 b
                             | otherwise  = App e1 (step e2)
step (App e1 e2) = App (step e1) e2 
step (Paren e) = e 

-- Trabalho
step (Tuple es) =
  case break (not . isValue) es of
    (before, e:after) -> Tuple (before ++ [step e] ++ after)
    (_, [])           -> Tuple es

step (Proj (Tuple es) i)
  | all isValue es && i > 0 && i <= length es = es !! (i - 1)
step (Proj e i) = Proj (step e) i

eval :: Expr -> Expr 
eval e | isValue e = e 
       | otherwise = eval (step e)

