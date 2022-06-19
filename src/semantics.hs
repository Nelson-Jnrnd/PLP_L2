{-
    Nom du fichier : semantics.hs
    Auteurs :
        - Nelson Jeanrenaud
        - Alice Grunder
-}

module Semantics (myProgCheck, TypeEnv, Type (..)) where

  import Parser

  type TypeEnv = [(String, Type)]

  data Type = TInt | TBool | TTuple | TFunc Int {--Type [Type]--} deriving (Show, Eq)

  myLookup :: String -> TypeEnv -> Type
  myLookup x [] = error $ x ++ " not found"
  myLookup x ((n,t) : env)
    | x == n = t
    | otherwise = myLookup x env

  myTypeCheck :: Expr -> TypeEnv -> Type
  myTypeCheck (Cst i) env = TInt
  myTypeCheck (LBool b) env = TBool
  myTypeCheck (LTuple e1 e2) env = TTuple
  myTypeCheck (Var x) env = myLookup x env

  myTypeCheck (Bin op e1 e2) env =
    case (myTypeCheck e1 env, myTypeCheck e2 env) of
      (TInt, TInt) | op `elem` ["+","-","*","/","%","^"] -> TInt
      (TBool, TBool) | op `elem` ["&","|"] -> TBool
      _ -> error "type error"

  myTypeCheck (Un op e) env =
    case myTypeCheck e env of
      TInt | op == "-" -> TInt
      TBool | op == "!" -> TBool
      _ -> error "type error"

  myTypeCheck (Let x e1 e2) env = myTypeCheck e2 env'
    where
      t = myTypeCheck e1 env
      env' = (x, t) : env

  myTypeCheck (Case e1 e2 e3) env =
    let paternHeads = map paternHead e2
        paternlast = map paternTail e2
        filteredHeads = filter (\x -> myTypeCheck x env /= myTypeCheck e1 env) paternHeads
        filteredTails = filter (\x -> myTypeCheck x env /= myTypeCheck e3 env) paternlast
    in if null filteredHeads && null filteredTails then myTypeCheck e3 env else error "type error"


  myTypeCheck (FuncCall x e) env =
    case myLookup x env of
      TFunc numArgs -> if numArgs == length e then myLookup x env else error "type error"
      _ -> error "type error"


  paternHead :: Pat -> Expr
  paternHead (Pat e1 e2) = e1

  paternTail :: Pat -> Expr
  paternTail (Pat e1 e2) = e2


  myProgCheck :: Program -> TypeEnv -> TypeEnv
  myProgCheck (PExpr expr) env =
    case myTypeCheck expr env of -- check if the expression is well typed
      _ -> env
  myProgCheck (PStatement stmt) env = myStatementCheck stmt env


  findFunction :: String -> TypeEnv -> Bool
  findFunction x [] = False
  findFunction x ((n,t) : env)
    | x == n = True
    | otherwise = findFunction x env


  myAssign :: String -> Expr -> TypeEnv -> TypeEnv -> TypeEnv
  myAssign x e [] env = [(x, myTypeCheck e env)]
  myAssign x e ((n,t) : env) env'
    | x == n = (n, myTypeCheck e env') : env
    | otherwise = (n, t) : myAssign x e env env'

{--
  functionArgsTyping :: [String] -> Expr -> TypeEnv -> TypeEnv -> TypeEnv
  functionArgsTyping [] _ env argTypes = argTypes
  functionArgsTyping names expr env argTypes =
    case expr of
      Cst i -> argTypes
      LBool b -> argTypes
      LTuple e1 e2 -> functionArgsTyping names e1 env argTypes ++ functionArgsTyping names e2 env argTypes
      Var x | x `notElem` names -> argTypes
            | otherwise -> error "type error"
      Bin op e1 e2 | op `elem` ["+","-","*","/","%","^"] -> case (e1, e2) of
                                                                 (Var x, Var y) | x `elem` names && y `elem` names -> (x, TInt) : (y, TInt) : argTypes
                                                                                | x `elem` names && y `notElem` names -> (x, TInt) : argTypes
                                                                                | x `notElem` names && y `elem` names -> (y, TInt) : argTypes
                                                                                | otherwise -> argTypes
                                                                     (Var x, _) | x `elem` names -> functionArgsTyping (filter (/= x) names) e2 env ((x, TInt) : argTypes)
                                                                                | otherwise -> functionArgsTyping names e2 env argTypes
                                                                     (_, Var y) | y `elem` names -> functionArgsTyping (filter (/= y) names) e1 env ((y, TInt) : argTypes)
                                                                                | otherwise -> functionArgsTyping names e1 env argTypes
                                                                 _ -> functionArgsTyping names e1 env argTypes ++ functionArgsTyping names e2 env argTypes
                    | op `elem` ["&","|"] -> case (e1, e2) of
                                                  (Var x, Var y) | x `elem` names && y `elem` names -> (x, TBool) : (y, TBool) : argTypes
                                                                | x `elem` names && y `notElem` names -> (x, TBool) : argTypes
                                                                | x `notElem` names && y `elem` names -> (y, TBool) : argTypes
                                                                | otherwise -> argTypes
                                                      (Var x, _) | x `elem` names -> functionArgsTyping (filter (/= x) names) e2 env ((x, TBool) : argTypes)
                                                                | otherwise -> functionArgsTyping names e2 env argTypes
                                                      (_, Var y) | y `elem` names -> functionArgsTyping (filter (/= y) names) e1 env ((y, TBool) : argTypes)
                                                                | otherwise -> functionArgsTyping names e1 env argTypes
                                                  _ -> functionArgsTyping names e1 env argTypes ++ functionArgsTyping names e2 env argTypes
      Un op e | op == "!" -> case e of
                                 Var x | x `elem` names -> (x, TBool) : argTypes
                                 _ -> functionArgsTyping names e env argTypes
              | op == "-" -> case e of
                                 Var x | x `elem` names -> (x, TInt) : argTypes
                                 _ -> functionArgsTyping names e env argTypes
      FuncCall x e -> argTypes
      Let x e1 e2 -> case e1 of
                          Var x | x `elem` names -> functionArgsTyping names e2 env argTypes
                          _ -> functionArgsTyping names e1 env argTypes ++ functionArgsTyping names e2 env argTypes
      Case e1 e2 e3 | case e1 of
                            Var x | x `elem` names -> let paternHeads = map paternHead e2
                                                          paternlast = map paternTail e2
                                                      in
--}
-- J'ai pas réussi à faire en sorte d'obtenir les types des arguments d'une déclaration de fonction


  allDifferent ::(Eq a) => [a] -> Bool
  allDifferent [] = True
  allDifferent (x:xs) = x `notElem` xs && allDifferent xs

  myStatementCheck :: Statement -> TypeEnv -> TypeEnv
  myStatementCheck (Assign x e) env = myAssign x e env env
  myStatementCheck (FuncDeclar name args expr) env
    | findFunction name env = error "function already declared"
    | allDifferent args = (name, TFunc (length args)) : env
                          {--
                          let argTypes = functionArgsTyping args expr env
                              env' = argTypes ++ env
                          in if length argTypes == length args then (name, TFunc (myTypeCheck expr env') (map (`myTypeCheck` env') args)) : env else error "type error"
                          --}
    | otherwise = error "function declaration arguments are not different"


