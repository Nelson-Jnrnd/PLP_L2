{
module Lexer (lexer , Token (..)) where
}

%wrapper "basic"

$digit = 0-9            -- digits
$alpha = [a-zA-Z]       -- alphabetic characters
@literal = $digit | $alpha

@name = [a-z][$alpha $digit]* -- identifier characters
@func = [A-Z][$alpha $digit]* -- function name characters
@symbols = "_" | "+" | "-" | "*" | "/" | "^" | "%" | "|" | "&" | "!" | "="

tokens :-

    $white+                        ;
    "("                            { \s -> TLParen             }
    ")"                            { \s -> TRParen             }
    "["                            { \s -> TLBracket           }
    "]"                            { \s -> TRBracket           }
    "{"                            { \s -> TLBrace             }
    "}"                            { \s -> TRBrace             }
    ","                            { \s -> TComma              }
    "True"                         { \s -> TBool True          }
    "False"                        { \s -> TBool False         }
    ":"                            { \s -> TColon              }
    "let"                          { \s -> TLet                }
    "in"                           { \s -> TIn                 }
    "case"                         { \s -> TCase               }
    "of"                           { \s -> TOf                 }
    @name                          { \s -> TVar s              }
    @func                          { \s -> TFunc s             }    
    $digit+                        { \s -> TInt (read s)       }
    [\_\=\+\-\*\/\^\%\|\&\!]       { \s -> TSym (head s)       }
{
-- Each action has type :: String -> Token

-- The token type:
data Token
    = TVar String
    | TFunc String
    | TInt Int
    | TBool Bool
    | TLParen
    | TRParen
    | TLBracket
    | TRBracket
    | TLBrace
    | TRBrace
    | TComma
    | TSym Char
    | TLet
    | TIn
    | TOf
    | TCase
    | TColon
  deriving (Eq, Show)

lexer = alexScanTokens
}
