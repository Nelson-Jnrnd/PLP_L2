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

