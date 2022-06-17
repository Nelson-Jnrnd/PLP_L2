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
     | '-' Expr %prec NEG           {Un '-' $2}
     | Expr '+' Expr                {Bin '+' $1 $3}
     | Expr '-' Expr                {Bin '-' $1 $3}
     | Expr '*' Expr                {Bin '*' $1 $3}
     | Expr '/' Expr                {Bin '/' $1 $3}
     | Expr '%' Expr                {Bin '%' $1 $3}
     | Expr '^' Expr                {Bin '^' $1 $3}
     | Expr '<' Expr                {Bin '<' $1 $3}
     | Expr '>' Expr                {Bin '>' $1 $3}
     | Expr "==" Expr               {Bin "==" $1 $3}
     | Expr "!=" Expr               {Bin "!=" $1 $3}
     | Expr "<=" Expr               {Bin "<=" $1 $3}
     | Expr ">=" Expr               {Bin ">=" $1 $3}
     | '!' Expr                     {Un '!' $2}
     | Expr '&' Expr                {Bin '&' $1 $3}
     | Expr '|' Expr                {Bin '|' $1 $3}
     | '(' Expr ')'                 {Paren $2}
     | '{' Expr '}'                 {Brace $2}
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
        | Un Char Expr
        | Bin Char Expr Expr
        | Paren Expr
        | Brace Expr
        | Lit Lit
    
    data Paterns
        = Patern Name Expr
        | [Patern]
}