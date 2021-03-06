{-
    Nom du fichier : parser.hs
    Auteurs :
        - Nelson Jeanrenaud
        - Alice Grunder
-}

{
module Parser (parser, Expr (..), Pat (..), Program(..), Statement(..)) where
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


-- Définition des priorités et associativités
%right of
%right in
%nonassoc  "="
%left "+" "-"
%left "*" "/" 
%left "%"
%left "^"
%right "&" "|"
%right "!"
%left NEG NOT

%%

Program :
    Expr                                    { PExpr $1 }
    | Statement                             { PStatement $1 }

Statement : func "(" FuncVars ")" "{" Expr "}"   {FuncDeclar $1 $3 $6}
     | func "(" ")" "{" Expr "}"            {FuncDeclar $1 [] $5}
     | var "=" Expr                         {Assign $1 $3}


-- Régle de la grammaire
Expr : let var "=" Expr in Expr             {Let $2 $4 $6}
     | case Expr of Paterns "_" ":" Expr    {Case $2 $4 $7}
     | func "(" Exprs ")"                   {FuncCall $1 $3}
     | func "(" ")"                         {FuncCall $1 []}
     | "-" Expr %prec NEG                   {Un "-" $2}
     | Expr "+" Expr                        {Bin "+" $1 $3}
     | Expr "-" Expr                        {Bin "-" $1 $3}
     | Expr "*" Expr                        {Bin "*" $1 $3}
     | Expr "/" Expr                        {Bin "/" $1 $3}
     | Expr "%" Expr                        {Bin "%" $1 $3}
     | Expr "^" Expr                        {Bin "^" $1 $3}
     | "!" Expr %prec NOT                   {Un "!" $2}
     | Expr "&" Expr                        {Bin "&" $1 $3}
     | Expr "|" Expr                        {Bin "|" $1 $3}
     | var                                  {Var $1}
     | int                                  {Cst $1}
     | bool                                 {LBool $1}
     | "[" Expr "," Expr "]"                {LTuple $2 $4}

Exprs : Expr Exprs                  {$1 : $2}
      | Expr                        {[$1]}

Paterns : Patern Paterns            {$1 : $2}
        | Patern                    {[$1]}

Patern : Expr ":" Expr               {Pat $1 $3}

FuncVars : var FuncVars             {$1 : $2}
         | var                      {[$1]}

{
parseError :: [Token] -> a
parseError _ = error "Parse error"

data Expr = Let String Expr Expr
    | Case Expr [Pat] Expr
    | FuncCall String [Expr]
    | Un String Expr
    | Bin String Expr Expr
    | Var String
    | Cst Int
    | LBool Bool
    | LTuple Expr Expr
    deriving (Show, Eq)

data Pat = Pat Expr Expr deriving (Show, Eq)

data Statement = FuncDeclar String [String] Expr
    | Assign String Expr
    deriving (Show, Eq)

data Program = PExpr Expr
    | PStatement Statement
    deriving (Show, Eq)

}
