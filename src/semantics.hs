module Sementics where

  import Parser

  type TypeEnv = [(String, Type)]

  data Type = Tint | TBool | TTuple | TFunc Type [Type] deriving (Show, Eq)

  myLookup :: String -> TypeEnv -> Type
  myLookup x [] = error $ x ++ " not found"
  myLookup x ((n,t) : env)
    | x == n = t
    | otherwise = myLookup x env

  myTypeCheck :: Expr -> TypeEnv -> Type
  myTypeCheck (Cst i) env = Tint
  myTypeCheck (LBool b) env = TBool
  myTypeCheck (LTuple e1 e2) env = TTuple
  myTypeCheck (Var x) env = myLookup x env

  myTypeCheck (Bin op e1 e2) env =
    case (myTypeCheck e1 env, myTypeCheck e2 env) of
      (Tint, Tint) | op `elem` ["+","-","*","/","%","^"] -> Tint
      (TBool, TBool) | op `elem` ["&","|"] -> TBool
      _ -> error "type error"

  myTypeCheck (Un op e) env =
    case myTypeCheck e env of
      Tint | op == "-" -> Tint
      TBool | op == "!" -> TBool
      _ -> error "type error"

  myTypeCheck (Let x e1 e2) env = myTypeCheck e2 env'
    where
      t = myTypeCheck e1 env
      env' = (x, t) : env

  myTypeCheck (Case e1 e2 e3) env =
    let paternHeads = map head e2
        paternlast = map last e2
        filteredHeads = filter (\x -> myTypeCheck x env /= myTypeCheck e1 env) paternHeads
        filteredTails = filter (\x -> myTypeCheck x env /= myTypeCheck e3 env) paternlast
    in if null filteredHeads && null filteredTails then myTypeCheck e3 env else error "type error"


  myTypeCheck (FuncCall x e) env =
    case myLookup x env of
      TFunc t tVars -> let t' = map (`myTypeCheck` env) e in if tVars == t' then t else error "type error"
      _ -> error "type error"


