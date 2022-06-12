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

@operand = @literal | @name | @tuple -- operand

@unary_plus = "+" @operand -- unary plus
@unary_minus = "-" @operand -- unary minus
@unary_not = "!" @operand -- unary not

@unary_op = @unary_plus | @unary_minus | @unary_not

@binary_greater = @operand ">" @operand 
@binary_lesser = @operand "<" @operand 
@binary_greater_equal = @operand ">=" @operand
@binary_lesser_equal = @operand "<=" @operand
@binary_not = @operand "!=" @operand
@binary_equal = @operand "==" @operand
@binary_and = @operand "&" @operand 
@binary_or = @operand "|" @operand 
@binary_mod = @operand "%" @operand 
@binary_xor = @operand "^" @operand 
@binary_plus = @operand "+" @operand 
@binary_minus = @operand "-" @operand 
@binary_multiply = @operand "*" @operand 
@binary_divide = @operand "/" @operand 

@binary_op = 
    @binary_greater | @binary_lesser | @binary_greater_equal | @binary_lesser_equal |
    @binary_not | @binary_equal | @binary_and | @binary_or | @binary_mod | @binary_xor

@declaration = @name "=" @operand -- declaration
@function = @name "(" @operand ")" @operand -- function
@let = "let" @declaration @operand -- let

@expression = @operand | @unary_op | @binary_op

tokens :-

    $white+                        ;
    "("                              { \s -> Parenthesis_Left         }
    ")"                              { \s -> Parenthesis_Right        }
    "["                              { \s -> Brackets_Left      }
    "]"                              { \s -> Brackets_Right     }
    True                             { \s -> Bool True}
    False                            { \s -> Bool False}
    @unary_plus                       { \s -> Unary_Plus }
    @unary_minus                       { \s -> Unary_Minus }
    @unary_not                       { \s -> Unary_Negative }
    @binary_greater              { \s -> Binary_Greater }
    @binary_lesser             { \s -> Binary_Less }
    @binary_greater_equal              { \s -> Binary_Greater_Equal }
    @binary_lesser_equal              { \s -> Binary_Less_Equal }
    @binary_not              { \s -> Binary_Not_Equal }
    @binary_equal              { \s -> Binary_Equal }
    @binary_and              { \s -> Binary_And }
    @binary_or              { \s -> Binary_Or }
    @binary_mod              {\s ->  Binary_Mod }
    @binary_xor              { \s -> Binary_Xor }
    @binary_plus              { \s -> Binary_Plus }
    @binary_minus              { \s -> Binary_Minus }
    @binary_multiply              { \s -> Binary_Multiply }
    @binary_divide              { \s -> Binary_Divide }    
    @declaration             { \s -> Assign }
    @function { \s -> Function_Call }
    $digit+                         { \s -> Int (read s) }
    [\=\+\-\*\/\(\)]                { \s -> Sym (head s) }
    $alpha [$alpha $digit \_ \']*   { \s -> Var s }
    @name                           { \s -> Id s }

{
-- Each action has type :: String -> Token

-- The token type:
data Token
    = Sym Char
    | Id String
    | Var String
    | Int Int
    | Bool Bool
    | Parenthesis_Left
    | Parenthesis_Right
    | Brackets_Left
    | Brackets_Right
    | Unary_Negative
    | Unary_Plus
    | Unary_Minus
    | Binary_Greater
    | Binary_Less
    | Binary_Greater_Equal
    | Binary_Less_Equal
    | Binary_Not_Equal
    | Binary_Equal
    | Binary_And
    | Binary_Or
    | Binary_Mod
    | Binary_Xor
    | Binary_Plus
    | Binary_Minus
    | Binary_Multiply
    | Binary_Divide
    | Assign
    | Function_Definition
    | Function_Call
  deriving (Eq, Show)

main = do
  s <- getContents
  print (alexScanTokens s)
}