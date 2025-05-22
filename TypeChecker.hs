module TypeChecker where 

import Lexer 

-- Contexto de tipos: associa nomes de variáveis aos seus tipos
type Ctx = [(String, Ty)]

-- Função principal de inferência de tipos
-- Recebe um contexto e uma expressão, retorna o tipo da expressão (se bem tipada)
typeof :: Ctx -> Expr -> Maybe Ty 

-- Tipagem de constantes
typeof ctx (Num _) = Just TNum 
typeof ctx BFalse = Just TBool 
typeof ctx BTrue = Just TBool 

-- Tipagem de operações aritméticas: só aceita números
typeof ctx (Add e1 e2) = case (typeof ctx e1, typeof ctx e2) of 
                       (Just TNum, Just TNum) -> Just TNum 
                       _                      -> Nothing
typeof ctx (Sub e1 e2) = case (typeof ctx e1, typeof ctx e2) of 
                       (Just TNum, Just TNum) -> Just TNum 
                       _                      -> Nothing
typeof ctx (Mult e1 e2) = case (typeof ctx e1, typeof ctx e2) of 
                       (Just TNum, Just TNum) -> Just TNum 
                       _                      -> Nothing
typeof ctx (Div e1 e2) = case (typeof ctx e1, typeof ctx e2) of 
                       (Just TNum, Just TNum) -> Just TNum 
                       _                      -> Nothing
typeof ctx (Mod e1 e2) = case (typeof ctx e1, typeof ctx e2) of 
                       (Just TNum, Just TNum) -> Just TNum 
                       _                      -> Nothing

-- Tipagem de operações booleanas
typeof ctx (And e1 e2) = case (typeof ctx e1, typeof ctx e2) of 
                       (Just TBool, Just TBool) -> Just TBool 
                       _                        -> Nothing 
-- OBS: Aqui Or e Xor estão aceitando apenas números, o que pode ser um erro de implementação
typeof ctx (Or e1 e2) = case (typeof ctx e1, typeof ctx e2) of 
                       (Just TNum, Just TNum) -> Just TNum 
                       _                      -> Nothing
typeof ctx (Xor e1 e2) = case (typeof ctx e1, typeof ctx e2) of 
                       (Just TNum, Just TNum) -> Just TNum 
                       _                      -> Nothing
typeof ctx (Not e1) = case typeof ctx e1 of
    Just TBool -> Just TBool
    _          -> Nothing

-- Tipagem de operações relacionais: só aceita números, retorna booleano
typeof ctx (GThan e1 e2) = case (typeof ctx e1, typeof ctx e2) of
    (Just TNum, Just TNum) -> Just TBool
    _                      -> Nothing

typeof ctx (LThan e1 e2) = case (typeof ctx e1, typeof ctx e2) of
    (Just TNum, Just TNum) -> Just TBool
    _                      -> Nothing

typeof ctx (Equal e1 e2) = case (typeof ctx e1, typeof ctx e2) of
    (Just TNum, Just TNum) -> Just TBool
    _                      -> Nothing

-- Tipagem do if: condição deve ser booleana e os dois ramos devem ter o mesmo tipo
typeof ctx (If e1 e2 e3) = 
    case (typeof ctx e1) of 
      Just TBool -> case (typeof ctx e2, typeof ctx e3) of 
                      (Just t1, Just t2) | t1 == t2  -> Just t1  
                                         | otherwise -> Nothing 
                      _ -> Nothing 
      _ -> Nothing 

-- Tipagem de variáveis: busca no contexto
typeof ctx (Var v) = lookup v ctx 

-- Tipagem de lambda: adiciona o parâmetro ao contexto e infere o tipo do corpo
typeof ctx (Lam x t1 b) = let ctx' = (x, t1) : ctx in
                        case typeof ctx' b of 
                            Just t2 -> Just (TFun t1 t2)
                            _       -> Nothing

-- Tipagem de aplicação: verifica se o primeiro termo é função e se o argumento bate com o tipo esperado
typeof ctx (App e1 e2) = case (typeof ctx e1) of 
                            Just (TFun t11 t12) -> case typeof ctx e2 of
                                                    Just t2 -> if t11 == t2 then 
                                                        Just t12 
                                                        else
                                                            Nothing
                                                    _ -> Nothing
                            _ -> Nothing

-- Função para checagem de tipo: retorna a expressão se bem tipada, senão lança erro
typecheck :: Expr -> Expr 
typecheck e = case typeof [] e of 
             Just _ -> e 
             _ -> error "Erro de tipo"

