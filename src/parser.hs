{-
    Nom du fichier : parser.hs
    Auteurs :
        - Nelson Jeanrenaud
        - Alice Grunder
-}

{
module Parser where
import Lexer
}

%name parser
%tokentype { Token }
%error { parseError }
