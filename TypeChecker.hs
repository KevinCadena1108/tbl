module TypeChecker where 

import Lexer 

type Ctx = [(String, Ty)]

typeof :: Ctx -> Expr -> Maybe Ty 
typeof ctx (Num _) = Just TNum 
typeof ctx BFalse = Just TBool 
typeof ctx BTrue = Just TBool 
typeof ctx (Add e1 e2) = case (typeof ctx e1, typeof ctx e2) of 
                       (Just TNum, Just TNum) -> Just TNum 
                       _                      -> Nothing

typeof ctx (Sub e1 e2) = case (typeof ctx e1, typeof ctx e2) of
                       (Just TNum, Just TNum) -> Just TNum
                       _                      -> Nothing
typeof ctx (Mul e1 e2) = case (typeof ctx e1, typeof ctx e2) of
                       (Just TNum, Just TNum) -> Just TNum
                       _                      -> Nothing

typeof ctx (Or e1 e2) = case (typeof ctx e1, typeof ctx e2) of
                       (Just TBool, Just TBool) -> Just TBool
                       _                        -> Nothing

typeof ctx (Lt e1 e2) = case (typeof ctx e1, typeof ctx e2) of
                       (Just TNum, Just TNum) -> Just TBool
                       _                      -> Nothing

typeof ctx (Eq e1 e2) = case (typeof ctx e1, typeof ctx e2) of
    (Just t1, Just t2) | t1 == t2 -> Just TBool
    _                             -> Nothing

typeof ctx (Not e) = case typeof ctx e of
                       Just TBool -> Just TBool
                       _          -> Nothing

typeof ctx (Let x e1 e2) =
  case typeof ctx e1 of
    Just t1 -> typeof ((x, t1):ctx) e2
    _       -> Nothing

typeof ctx (And e1 e2) = case (typeof ctx e1, typeof ctx e2) of 
                       (Just TBool, Just TBool) -> Just TBool 
                       _                        -> Nothing 
typeof ctx (If e1 e2 e3) = 
    case (typeof ctx e1) of 
      Just TBool -> case (typeof ctx e2, typeof ctx e3) of 
                      (Just t1, Just t2) | t1 == t2  -> Just t1  
                                         | otherwise -> Nothing 
                      _ -> Nothing 
      _ -> Nothing
typeof ctx (Var v) = lookup v ctx 
typeof ctx (Lam x t1 b) = let ctx' = (x, t1) : ctx in 
                            case typeof ctx' b of 
                              Just t2 -> Just (TFun t1 t2)
                              _       -> Nothing 
typeof ctx (App e1 e2) = 
  case (typeof ctx e1) of 
    Just (TFun t11 t12) -> case typeof ctx e2 of 
                             Just t2 -> if t11 == t2 then 
                                          Just t12 
                                        else 
                                          Nothing 
                             _ -> Nothing 
    _ -> Nothing 

typeof ctx (Paren e) = typeof ctx e 

-- Trabalho
typeof ctx (Tuple es) =
  case mapM (typeof ctx) es of
    Just ts -> Just (TTuple ts)
    _       -> Nothing

--  {1, true, 2}, retorna TTuple [TNum, TBool, TNum]

typeof ctx (Proj e i) =
  case typeof ctx e of
    Just (TTuple ts) | i > 0 && i <= length ts -> Just (ts !! (i - 1))
    _ -> Nothing

-- {1, true, 2}.2, retorna TBool

typecheck :: Expr -> Expr  
typecheck e = case typeof [] e of 
                Just _ -> e 
                _      -> error "Erro de tipo!"