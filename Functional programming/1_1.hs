data BinOp = Plus | Minus | Mult deriving (Show, Eq)
data UnOp = UnMinus deriving (Show, Eq)

data Term = IntConstant{ intValue :: Int }
            | Variable{ varName :: String }
            | BinaryTerm{ bop :: BinOp, lhv :: Term, rhv :: Term }
            | UnaryTerm{ uop :: UnOp, v :: Term } deriving (Show, Eq)

(<+>) :: Term -> Term -> Term
infixl 6
(<+>) (IntConstant x) (IntConstant y) = IntConstant (x+y)
(<+>) x y = BinaryTerm Plus x y

(<->) :: Term -> Term -> Term
infixl 6
(<->) (IntConstant x) (IntConstant y) = IntConstant (x-y)
(<->) x y = BinaryTerm Minus x y

(<*>) :: Term -> Term -> Term
infixl 7
(<*>) (IntConstant x) (IntConstant y) = IntConstant (x*y)
(<*>) x y = BinaryTerm Mult x y

replaceVar :: Term -> String -> Term -> Term
replaceVar (IntConstant const) _ _ = IntConstant const
replaceVar (Variable var) nameVar newTerm = if var==nameVar then newTerm else Variable var
replaceVar (BinaryTerm op l r) nameVar newTerm = BinaryTerm op (replaceVar l nameVar newTerm) (replaceVar r nameVar newTerm)
replaceVar (UnaryTerm op r) nameVar newTerm = UnaryTerm op (replaceVar r nameVar newTerm)