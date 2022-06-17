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

tokens :-

    $white+                        ;
    "("                            { \s -> TLParen   }
    ")"                            { \s -> TRParen  }
    "["                            { \s -> TLBracket      }
    "]"                            { \s -> TRBracket     }
    "{"                            { \s -> TLBrace        }
    "}"                            { \s -> TRBrace       }
    ":"                            { \s -> Colon              }
    ","                            { \s -> TComma              }
    "_"                            { \s -> Underscore         }
    "True"                         { \s -> TBool True          }
    "False"                        { \s -> TBool False         }
    "+"                            { \s -> Plus               }
    "-"                            { \s -> Minus              }
    "!"                            { \s -> Negative           }
    ">"                            { \s -> Greater            }
    "<"                            { \s -> Less               }
    "&"                            { \s -> And                }
    "|"                            { \s -> Or                 }
    "%"                            { \s -> Mod                }
    "^"                            { \s -> Pow                }
    "*"                            { \s -> Multiply           }
    "/"                            { \s -> Divide             }    
    "="                            { \s -> Assign             }
    "let"                          { \s -> TLet                }
    "in"                           { \s -> TIn                 }
    "case"                         { \s -> TCase               }
    @name                          { \s -> TVar s               }    
    $digit+                        { \s -> TInt (read s)       }
{
-- Each action has type :: String -> Token

-- The token type:
data Token
    = TVar String
    | TInt TInt
    | TBool TBool
    | TLParen
    | TRParen
    | TLBracket
    | TRBracket
    | TLBrace
    | TRBrace
    | Colon
    | Underscore
    | TComma
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
    | TLet
    | TIn
    | TCase
  deriving (Eq, Show)

main = do
  s <- getContents
  print (alexScanTokens s)
}