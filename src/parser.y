{-
    Nom du fichier : parser.hs
    Auteurs :
        - Nelson Jeanrenaud
        - Alice Grunder
-}

{
module Parser (Expr (..), Patern (..), Lit (..), Name) where
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
    func    { TFunc $$  }
    '('     { TLParen   }
    ')'     { TRParen   }
    '{'     { TLBrace   }
    '}'     { TRBrace   }
    '['     { TLBracket }
    ']'     { TRBracket }
    ':'     { TColon    }
    ','     { TComma    }
    '_'     { TSym  '_' }
    '='     { TSym  '=' }
    '+'     { TSym  '+' }
    '-'     { TSym  '-' }
    '*'     { TSym  '*' }
    '/'     { TSym  '/' }
    '!'     { TSym  '!' }
    '&'     { TSym  '&' }
    '|'     { TSym  '|' }
    '%'     { TSym  '%' }
    '^'     { TSym  '^' }


-- Définition des priorités et associativités
%right of
%right in
%left '+' '-'
%left '*' '/' 
%left '%'
%left '^'
%right '&' '|'
%right '!'
%left NEG

%%

-- Régle de la grammaire
Expr : let var '=' Expr in Expr             {Let $2 $4 $6}
     | case Expr of Paterns '_' ':' Expr    {Case $2 $4 $7}
     | func '(' Exprs ')'                   {FuncCall $1 $3}
     | func '(' ')'                         {FuncCall $1 _}
     | func '(' FuncVars ')' '{' Expr '}'   {FuncDeclar $1 $3 $5}
     | func '(' ')' '{' Expr '}'            {FuncDeclar $1 _ $4}
     | '-' Expr %prec NEG                   {Un '-' $2}
     | Expr '+' Expr                        {Bin '+' $1 $3}
     | Expr '-' Expr                        {Bin '-' $1 $3}
     | Expr '*' Expr                        {Bin '*' $1 $3}
     | Expr '/' Expr                        {Bin '/' $1 $3}
     | Expr '%' Expr                        {Bin '%' $1 $3}
     | Expr '^' Expr                        {Bin '^' $1 $3}
     | '!' Expr                             {Un '!' $2}
     | Expr '&' Expr                        {Bin '&' $1 $3}
     | Expr '|' Expr                        {Bin '|' $1 $3}
     | var '=' Expr                         {Assign $1 $3}
     | var                                  {Var $1}
     | int                                  {Cst $1}
     | bool                                 {LBool $1}
     | '[' Expr ',' Expr ']'                {LTuple $2 $4}

Exprs : Expr Exprs                  {$1 : $2}
      | Expr                        {[$1]}

Paterns : Patern Paterns            {$1 : $2}
        | Patern                    {[$1]}

Patern : Lit ':' Expr               {$1 : $3}

FuncVars : var FuncVars             {$2 : $1}
         | var                      {[$1]}

{
parseError :: [Token] -> a
parseError _ = error "Parse error"

data Expr = Let String Expr Expr
    | Case Expr [Patern]
    | FuncCall String [Expr]
    | FuncDeclar String [String] [Expr]
    | Un Char Expr
    | Bin Char Expr Expr
    | Assign String Expr
    | Var String
    | Cst Lit
    deriving (Show, Eq)

data Patern = Patern Lit Expr
    deriving (Show, Eq)

data Lit  = LInt Int
    | LBool Bool
    | LTuple Lit Lit
    deriving (Show)
}
