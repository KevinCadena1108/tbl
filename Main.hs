module Main where 

import Lexer 
import Parser 
import Interpreter
import TypeChecker

-- Para testar o interpretador no Linux é possível rodar:
-- happy Parser.y
-- * runghc Main.hs < examples/ex1.hs 
-- * echo "2 + 5" | runghc Main.hs

main = getContents >>= print . eval . typecheck . parser . lexer 