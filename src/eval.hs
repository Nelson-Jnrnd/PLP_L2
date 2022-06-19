{-
    Nom du fichier : eval.hs
    Auteurs :
        - Nelson Jeanrenaud
        - Alice Grunder
-}
module Eval(eval, Env(..), EnvValue(..), Lit(..), EvalReturn(..)) where

import Semantics
import Parser
import Prelude hiding (lookup)

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

lookupInPatterns :: Expr -> [[Expr]] -> Maybe [Expr]
lookupInPatterns _ [] = Nothing
lookupInPatterns e ((p:ps):pps) = if e == p then Just ps else lookupInPatterns e pps

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
        Var name ->
            case lookupInEnv name env of
                Just (EnvLit lit) -> lit
                _ -> error $ "Variable " ++ name ++ " not found"
        Bin op e1 e2 -> evalBin op (evalExpr env e1) (evalExpr env e2)
        Unary op e -> evalUnary op (evalExpr env e)
        FuncCall name argsValue ->
           case lookupInEnv name env of
                Just (EnvFunction args body) ->
                    let env' = zip args (map (evalExpr env) argsValue)
                    in evalExpr env' body
                _ -> error $ "Function " ++ name ++ " not found"
        Case e paterns otherwise ->
            case lookupInPatterns e paterns of
                Just es -> evalExpr env (last es) 
                Just [] -> evalExpr env otherwise
                _ -> error $ "Case not found"
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