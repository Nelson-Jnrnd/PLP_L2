{-
    Nom du fichier : parser.hs
    Auteurs :
        - Nelson Jeanrenaud
        - Alice Grunder
-}

{
module Parser (Expr (..), Patern (..), Lit (..), Program(..), Statement(..), Name) where
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
    "("     { TLParen   }
    ")"     { TRParen   }
    "{"     { TLBrace   }
    "}"     { TRBrace   }
    "["     { TLBracket }
    "]"     { TRBracket }
    ":"     { TColon    }
    ","     { TComma    }
    "_"     { TSym  "_" }
    "="     { TSym  "=" }
    "+"     { TSym  "+" }
    "-"     { TSym  "-" }
    "*"     { TSym  "*" }
    "/"     { TSym  "/" }
    "!"     { TSym  "!" }
    "&"     { TSym  "&" }
    "|"     { TSym  "|" }
    "%"     { TSym  "%" }
    "^"     { TSym  "^" }
    "True"  { TBool True }
    "False" { TBool False }


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

Program :
    Expr                                    { PExpr $1 }
    | Statement                             { PStatement $1 }

Statement : func "(" FuncVars ")" "{" Expr "}"   {FuncDeclar $1 $3 $5}
     | func "(" ")" "{" Expr "}"            {FuncDeclar $1 _ $4}
     | var "=" Expr                         {Assign $1 $3}


-- Régle de la grammaire
Expr : "True"                               {TBool True}
     | "False"                              {TBool False}
     | let var "=" Expr in Expr             {Let $2 $4 $6}
     | case Expr of Paterns "_" ":" Expr    {Case $2 $4 $7}
     | func "(" Exprs ")"                   {FuncCall $1 $3}
     | func "(" ")"                         {FuncCall $1 _}
     | "-" Expr %prec NEG                   {Un "-" $2}
     | Expr "+" Expr                        {Bin "+" $1 $3}
     | Expr "-" Expr                        {Bin "-" $1 $3}
     | Expr "*" Expr                        {Bin "*" $1 $3}
     | Expr "/" Expr                        {Bin "/" $1 $3}
     | Expr "%" Expr                        {Bin "%" $1 $3}
     | Expr "^" Expr                        {Bin "^" $1 $3}
     | "!" Expr                             {Un "!" $2}
     | Expr "&" Expr                        {Bin "&" $1 $3}
     | Expr "|" Expr                        {Bin "|" $1 $3}
     | var                                  {Var $1}
     | Lit                                  {$1}
     

Exprs : Expr Exprs                  {$1 : $2}
      | Expr                        {[$1]}

Paterns : Patern Paterns            {$1 : $2}
        | Patern                    {[$1]}

Patern : Lit ":" Expr               {$1 : $3}

FuncVars : var FuncVars             {$2 : $1}
         | var                      {[$1]}

Lit : int                                  {Cst $1}
    | bool                                 {LBool $1}
    | "[" Expr "," Expr "]"                {LTuple $2 $4}

{
parseError :: [Token] -> a
parseError _ = error "Parse error"

data Expr = Let String Expr Expr
    | Case Expr [Patern]
    | FuncCall String [Expr]
    | Un String Expr
    | Bin String Expr Expr
    | Var String
    | Lit Lit
    deriving (Show, Eq)

data Patern = Patern Lit Expr
    deriving (Show, Eq)

data Lit = Cst Int
    | LBool Bool
    | LTuple Expr Expr
    deriving (Show, Eq)

data Statement = 
    FuncDeclar String [String] [Expr]
    | Assign String Expr
    deriving (Show, Eq)

data Program
    = PExpr Expr
    | PStatement Statement
    deriving (Show, Eq)

}
