{
module Main (main) where
}

%wrapper "basic"
-- digit negatif ??
-- tuple de tuple ??
-- Comment faire les unaires ??

$digit = 0-9            -- digits
$alpha = [a-zA-Z]       -- alphabetic characters
@literal = $digit | $alpha

@name = $alpha [$alpha $digit]* -- identifier characters
@tuple = "[" @literal "," @literal "]" -- tuple

tokens :-

    $white+                        ;
    "("                              { \s -> Parenthesis_Left         }
    ")"                              { \s -> Parenthesis_Right        }
    "["                              { \s -> Brackets_Left      }
    "]"                              { \s -> Brackets_Right     }
    "{"                             { \s -> Braces_Left        }
    "}"                             { \s -> Braces_Right       }
    ":"                              { \s -> Colon               }
    "_"                              { \s -> Underscore          }
    "True"                             { \s -> Bool True}
    "False"                            { \s -> Bool False}
    "+"                       { \s -> Plus }
    "-"                       { \s -> Minus }
    "!"                       { \s -> Negative }
    ">"              { \s -> Greater }
    "<"             { \s -> Less }
    "&"              { \s -> And }
    "|"              { \s -> Or }
    "%"              {\s ->  Mod }
    "^"              { \s -> Pow }
    "*"              { \s -> Multiply }
    "/"              { \s -> Divide }    
    "="             { \s -> Assign }
    "let"          { \s -> Let }
    "in"          { \s -> In }
    "case"          { \s -> Case }
    
    $digit+                         { \s -> Int (read s) }
    $alpha [$alpha $digit \_ \']*   { \s -> Var s }
    @name                           { \s -> Id s }

{
-- Each action has type :: String -> Token

-- The token type:
data Token
    = Id String
    | Var String
    | Int Int
    | Bool Bool
    | Parenthesis_Left
    | Parenthesis_Right
    | Brackets_Left
    | Brackets_Right
    | Braces_Left
    | Braces_Right
    | Colon
    | Underscore
    | Plus
    | Minus
    | Negative
    | Greater
    | Less
    | And
    | Or
    | Mod
    | Pow
    | Multiply
    | Divide
    | Assign
    | Let
    | In
    | Case
  deriving (Eq, Show)

main = do
  s <- getContents
  print (alexScanTokens s)
}