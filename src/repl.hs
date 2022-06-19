{-
    Nom du fichier : repl.hs
    Auteurs :
        - Nelson Jeanrenaud
        - Alice Grunder
-}

module Main where

import Lexer
import Parser
import Semantics
import Eval
import System.IO 


repl :: Env -> TypeEnv -> IO ()
repl env typeEnv =
    do
        putStr "> "
        hFlush stdout
        line <- getLine
        let token = lexer line -- lexing
        let ast = parser token -- parsing
        let newTypeEnv = myProgCheck ast typeEnv -- typechecking
        let evalReturn = eval ast env -- evaluation
        print (fst evalReturn) -- printing the result
        putStr "\n"
        repl (snd evalReturn) newTypeEnv

main = repl [] []