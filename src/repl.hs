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


repl :: Env -> IO ()
repl env typeEnv =
    do
        putStr "> "
        hFlush stdout
        line <- getLine
        let token = alexScanTokens line -- lexing
        let ast = parser token -- parsing
        let newTypeEnv = myProgCheck ast env -- typechecking
        let evalReturn = eval ast env -- evaluation
        let newEnv = case evalReturn of
                        Expr lit -> env
                        Def envEntry -> envEntry : env
        putStr "\n"
        repl newEnv newTypeEnv

main = repl [] []