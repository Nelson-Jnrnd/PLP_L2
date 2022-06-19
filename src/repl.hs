{-
    Nom du fichier : repl.hs
    Auteurs :
        - Nelson Jeanrenaud
        - Alice Grunder
-}

module Main where

import Lexer
import Parser
--import Semantic
import Eval
import System.IO


repl :: Env -> IO ()
repl env =
    do
        putStr "> "
        hFlush stdout
        line <- getLine
        let token = alexScanTokens line -- lexing
        let ast = parser token -- parsing
        --let (t, newEnvType) = typeof ast env -- typechecking
        let evalReturn = eval ast env -- evaluation
        let newEnv = 
            case evalReturn of
                Expr lit -> env
                Def envEntry -> envEntry : env
        putStr "\n"
        repl newEnv

main = repl []