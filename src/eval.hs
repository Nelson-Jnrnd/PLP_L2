import Parser
import Prelude hiding (lookup)

type Env = [(String, EnvValue)]

data EvalReturn =
    Expr Lit
    | Def (String, EnvValue)

data EnvValue =
    EnvLit Lit
  | EnvFunction [String] [Expr]
  deriving (Show)

data Lit =
    Cst Int
  | LBool Bool
  | LTuple Lit Lit
  deriving (Show, Eq)

lookupInEnv :: String -> Env -> Maybe EnvValue
lookupInEnv x [] = Nothing
lookupInEnv x ((y, v):xs) = if x == y then Just v else lookupInEnv x xs

evalUnary :: String -> Lit -> Lit
evalUnary op (Cst x) =
    case op of
        "-" -> Cst (-x)
        _ -> error ("Unknown unary operator: " ++ op)

evalUnary op (LBool x) =
    case op of
        "!" -> LBool (not x)
        _ -> error ("Unknown unary operator: " ++ op)

evalBin :: String -> Lit -> Lit
evalBin op (Cst x) (Cst y) =
  case op of
    "+" -> Cst (x + y)
    "-" -> Cst (x - y)
    "*" -> Cst (x * y)
    "/" -> Cst (x `div` y)
    "^" -> Cst (x ^ y)
    "%" -> Cst (x `mod` y)
    _ -> error ("Unknown operator " ++ op)

evalBin op (LBool x) (LBool y) =
  case op of
    "&" -> LBool (x && y)
    "|" -> LBool (x || y)
    _ -> error ("Unknown operator " ++ op)

evalExpr :: Env -> Expr -> Lit
evalExpr env expr =
    case expr of
        Cst i -> Cst i
        LBool b -> LBool b
        LTuple e1 e2 -> LTuple (evalExpr env e1) (evalExpr env e2)
        Var s ->
            case lookupInEnv s env of
                Just (EnvLit lit) -> lit
                _ -> error $ "Variable " ++ s ++ " not found"
        Bin op e1 e2 -> evalBin op (evalExpr env e1) (evalExpr env e2)
        Unary op e -> evalUnary op (evalExpr env e)
        --FuncCall s e ->
        --   case lookupInEnv s env of
        --        Just (EnvFunction args body) ->
        --            let env' = zip args (map (evalExpr env) e)
        --            in 
        --        _ -> error $ "Function " ++ s ++ " not found"
        Case e paterns otherwise ->
            let lit = evalExpr env e
            in case lookup lit paterns of
                        Just e' -> evalExpr env e'
                        _ -> evalExpr env otherwise
        Let s e e' -> evalExpr ((s, e):env) e'
        _ -> error ("Unknown expression: " ++ show expr)

evalStatement :: Env -> Statement -> (String, EnvValue)
evalStatement env stmt =
    case stmt of
        FuncDeclar name args expr -> (name, EnvFunction args expr)
        Assign s e -> (s, evalExpr env e)

eval :: Program -> Env -> EvalReturn
eval (PExpr expr) env = Expr (evalExpr env expr)
eval (PStatement stmt) env = Def (evalStatement env stmt)