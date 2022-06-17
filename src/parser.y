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

-- Liste des terminaux de grammaire
%token
    let     { TLet      }
    in      { TIn       }
    case    { TCase     }
    of      { TOf       }
    int     { TInt  $$  }
    bool    { TBool $$  }
    var     { TVar  $$  }
    '('     { TLParen   }
    ')'     { TRParen   }
    '{'     { TLBrace   }
    '}'     { TRBrace   }
    '['     { TLBracket }
    ']'     { TRBracket }
    ','     { TComma    }
    '_'     { TSym  '_' }
    '='     { TSym  '=' }
    '+'     { TSym  '+' }
    '-'     { TSym  '-' }
    '*'     { TSym  '*' }
    '/'     { TSym  '/' }
    '%'     { TSym  '%' }
    '^'     { TSym  '^' }
    '<'     { TSym  '<' }
    '>'     { TSym  '>' }
    '!'     { TSym  '!' }
    '&'     { TSym  '&' }
    '|'     { TSym  '|' }
    "=="    { TSym "==" }
    "!="    { TSym "!=" }
    "<="    { TSym "<=" }
    ">="    { TSym ">=" }

-- Définition des priorités et associativités
%right of
%right in
%nonasoc case '<' '>' '=' "==" "!=" "<=" ">="
%left '+' '-'
%left '*' '/' 
%left '%'
%left '^'
%right '&' '|'
%right '!'
%left NEG

%%

-- Régle de la grammaire
Expr : let var '=' Expr in Expr     {Let $2 $4 $6}
     | case '(' Expr ')' of Paterns {Case $3 $5 $7}
     | Expr '+' Expr                {Add $1 $3}
     | Expr '-' Expr                {Sub $1 $3}
     | Expr '*' Expr                {Mul $1 $3}
     | Expr '/' Expr                {Div $1 $3}
     | Expr '%' Expr                {Mod $1 $3}
     | Expr '^' Expr                {Pow $1 $3}
     | Expr '<' Expr                {Lt $1 $3}
     | Expr '>' Expr                {Gt $1 $3}
     | Expr "==" Expr               {Eq $1 $3}
     | Expr "!=" Expr               {Ne $1 $3}
     | Expr "<=" Expr               {Le $1 $3}
     | Expr ">=" Expr               {Ge $1 $3}
     | '(' Expr ')'                 {Paren $2}
     | '-' Expr %prec NEG           {Neg $2}
     | '!' Expr                     {Not $2}
     | Expr '&' Expr                {And $1 $3}
     | Expr '|' Expr                {Or $1 $3}
     | '{' Expr '}'                 {Brace $2}
     | FuncCall                     {FuncCall}
     | Lit

Paterns : Paterns  Patern           {$2 : $1}
        | Patern                    {[$1]}

Patern : Lit ':' Expr               {$1 : $3}

Lit : int                           {Int $1}
    | bool                          {Bool $1}
    | var                           {Var $1}
    | '[' Lit ',' Lit ']'           {Tuple $1 $3 $5}

{
    parseError :: [Token] -> a
    parseError _ = error "Parse error"

    data Expr
        = Let Name Expr Expr
        | Case Expr [Paterns]
        | Add Expr Expr
        | Sub Expr Expr
        | Mul Expr Expr
        | Div Expr Expr
        | Mod Expr Expr
        | Pow Expr Expr
        | Lt Expr Expr
        | Gt Expr Expr
        | Eq Expr Expr
        | Ne Expr Expr
        | Le Expr Expr
        | Ge Expr Expr
        | Paren Expr
        | Neg Expr
        | Not Expr
        | And Expr Expr
        | Or Expr Expr
        | Brace Expr
        | Lit Lit
    
    data Paterns
        = Patern Name Expr
        | [Patern]
}