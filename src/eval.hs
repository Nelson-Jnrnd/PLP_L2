{-
    Nom du fichier : eval.hs
    Auteurs :
        - Nelson Jeanrenaud
        - Alice Grunder
-}
module Eval(eval, Env(..), EnvValue(..)) where


import Parser

type Env = [(String, EnvValue)]

data EnvValue =
    EnvInt Int
  | EnvBool Bool
  | EnvTuple EnvValue EnvValue
  | EnvFunction [String] Expr
  deriving (Show, Eq)


lookupInEnv :: String -> Env -> Maybe EnvValue
lookupInEnv x [] = Nothing
lookupInEnv x ((y, v):xs) = if x == y then Just v else lookupInEnv x xs

lookupInPatterns :: Expr -> [Pat] -> Maybe Expr
lookupInPatterns _ [] = Nothing
lookupInPatterns e ((Pat e1 e2):ps) = if e == e1 then Just e2 else lookupInPatterns e ps

evalUnary :: String -> EnvValue -> EnvValue
evalUnary op (EnvInt x) =
    case op of
        "-" -> EnvInt (-x)
        _ -> error ("Unknown unary operator: " ++ op)

evalUnary op (EnvBool x) =
    case op of
        "!" -> EnvBool (not x)
        _ -> error ("Unknown unary operator: " ++ op)

evalUnary _ _ = error "Wrong type for unary operator"

evalBin :: String -> EnvValue -> EnvValue -> EnvValue
evalBin op (EnvInt x) (EnvInt y) =
  case op of
    "+" -> EnvInt (x + y)
    "-" -> EnvInt (x - y)
    "*" -> EnvInt (x * y)
    "/" -> EnvInt (x `div` y)
    "^" -> EnvInt (x ^ y)
    "%" -> EnvInt (x `mod` y)
    _ -> error ("Unknown operator " ++ op)

evalBin op (EnvBool x) (EnvBool y) =
  case op of
    "&" -> EnvBool (x && y)
    "|" -> EnvBool (x || y)
    _ -> error ("Unknown operator " ++ op)

evalBin _ _ _ = error "Wrong type for binary operator"

evalExpr :: Env -> Expr -> EnvValue
evalExpr env expr =
    case expr of
        Parser.Cst i -> EnvInt i
        Parser.LBool b -> EnvBool b
        Parser.LTuple e1 e2 -> EnvTuple (evalExpr env e1) (evalExpr env e2)
        Var name ->
            case lookupInEnv name env of
                Just (EnvInt x) -> EnvInt x
                Just (EnvBool x) -> EnvBool x
                Just (EnvTuple x y) -> EnvTuple x y
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
        Let s e e' -> evalExpr ((s, evalExpr env e):env) e'

evalStatement :: Env -> Statement -> (EnvValue, Env)
evalStatement env stmt =
    case stmt of
        FuncDeclar name args expr -> (EnvFunction args expr, (name, EnvFunction args expr) : env)
        Assign varname e -> (evalExpr env e, (varname, evalExpr env e) :env)

eval :: Program -> Env -> (EnvValue, Env)
eval (PExpr expr) env = (evalExpr env expr, env)
eval (PStatement stmt) env = evalStatement env stmt