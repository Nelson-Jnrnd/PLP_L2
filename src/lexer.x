{
module Main (main) where
}

%wrapper "basic"

$digit = 0-9            -- digits
$alpha = [a-zA-Z]       -- alphabetic characters

tokens :-

  $white+                        ;
  True                           { \s -> Bool True }
  False                           { \s -> Bool False }
  $digit+                        { \s -> Int (read s) }
  [\=\+\-\*\/\(\)]               { \s -> Sym (head s) }
  $alpha [$alpha $digit \_ \']*  { \s -> Var s }

{
-- Each action has type :: String -> Token

-- The token type:
data Token
  = Sym Char
  | Var String
  | Int Int
  | Bool Boolean
  deriving (Eq, Show)

main = do
  s <- getContents
  print (alexScanTokens s)
}