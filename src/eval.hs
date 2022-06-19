{-
    Nom du fichier : eval.hs
    Auteurs :
        - Nelson Jeanrenaud
        - Alice Grunder
-}
module Eval(eval, Env(..), EnvValue(..), Lit(..), EvalReturn(..)) where


import Parser

type Env = [(String, EnvValue)]

data EvalReturn =
    Expr Lit
    | Def (String, EnvValue)

data EnvValue =
    EnvLit Lit
  | EnvFunction [String] Expr
  deriving (Show)

data Lit =
    Cst Int
  | LBool Bool
  | LTuple Lit Lit
  deriving (Show, Eq)

lookupInEnv :: String -> Env -> Maybe EnvValue
lookupInEnv x [] = Nothing
lookupInEnv x ((y, v):xs) = if x == y then Just v else lookupInEnv x xs

lookupInPatterns :: Expr -> [Pat] -> Maybe Expr
lookupInPatterns _ [] = Nothing
lookupInPatterns e ((Pat e1 e2):ps) = if e == e1 then Just e2 else lookupInPatterns e ps

evalUnary :: String -> Lit -> Lit
evalUnary op (Eval.Cst x) =
    case op of
        "-" -> Eval.Cst (-x)
        _ -> error ("Unknown unary operator: " ++ op)

evalUnary op (Eval.LBool x) =
    case op of
        "!" -> Eval.LBool (not x)
        _ -> error ("Unknown unary operator: " ++ op)

evalBin :: String -> Lit -> Lit -> Lit
evalBin op (Eval.Cst x) (Eval.Cst y) =
  case op of
    "+" -> Eval.Cst (x + y)
    "-" -> Eval.Cst (x - y)
    "*" -> Eval.Cst (x * y)
    "/" -> Eval.Cst (x `div` y)
    "^" -> Eval.Cst (x ^ y)
    "%" -> Eval.Cst (x `mod` y)
    _ -> error ("Unknown operator " ++ op)

evalBin op (Eval.LBool x) (Eval.LBool y) =
  case op of
    "&" -> Eval.LBool (x && y)
    "|" -> Eval.LBool (x || y)
    _ -> error ("Unknown operator " ++ op)

evalExpr :: Env -> Expr -> Lit
evalExpr env expr =
    case expr of
        Parser.Cst i -> Eval.Cst i
        Parser.LBool b -> Eval.LBool b
        Parser.LTuple e1 e2 -> Eval.LTuple (evalExpr env e1) (evalExpr env e2)
        Var name ->
            case lookupInEnv name env of
                Just (EnvLit lit) -> lit
                _ -> error $ "Variable " ++ name ++ " not found"
        Bin op e1 e2 -> evalBin op (evalExpr env e1) (evalExpr env e2)
        Un op e -> evalUnary op (evalExpr env e)
        FuncCall name argsValue ->
           case lookupInEnv name env of
                Just (EnvFunction args body) ->
                    let env' = zip args (map (evalExpr env) argsValue)
                    in evalExpr env' body
                _ -> error $ "Function " ++ name ++ " not found"
        Case e paterns otherWise ->
            case lookupInPatterns e paterns of
                Just es -> evalExpr env es 
                _ -> evalExpr env otherWise
        Let s e e' -> evalExpr ((s, e):env) e'
        _ -> error ("Unknown expression: " ++ show expr)

evalStatement :: Env -> Statement -> (String, EnvValue)
evalStatement env stmt =
    case stmt of
        FuncDeclar name args expr -> (name, EnvFunction args expr)
        Assign varname e -> (varname, evalExpr env e)

eval :: Program -> Env -> EvalReturn
eval (PExpr expr) env = Expr (evalExpr env expr)
eval (PStatement stmt) env = Def (evalStatement env stmt)