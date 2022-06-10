{
    module Lexer (lexer, plpLabo2, Token(..)) where
}

%wrapper "basic"
$digit = 0-9
$alpha = a-z | A-Z
$alphanum = $digit | $alpha
$special = '(' | ')' | '[' | ']' | ',' | ':' | ';' | '?' | '!' | '_' | '-' | '.' | '+' | '*' | '/' | '%' | '=' | '<' | '>' | '"' | '&' | '|' | '^' | '~' | '`'

tokens :-
    $digit+ { \s -> TInt (read s) }
    $alpha+ { \s -> TId s }
    $special { \s -> TSpecial s }
    "\"" ($alpha | $digit | $special)+ "\"" { \s -> TString s }