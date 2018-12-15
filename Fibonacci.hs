fib1 :: Integer -> Integer
fib1(0) = 0
fib1(1) = 1
fib1(n) = fib1(n - 1) + fib1(n - 2)

data Nat = Zero | Succ Nat
    deriving (Show)

instance Num Nat where
    fromInteger 0 = Zero
    fromInteger n = Succ . fromInteger $ n - 1

add :: Nat -> Nat -> Nat
add Zero n = n
add (Succ m) n = Succ (add m n)

fib :: Nat -> Nat
fib Zero = Zero
fib (Succ(Zero)) = Succ(Zero)
fib (Succ(Succ(n))) = add (fib(Succ(n))) (fib(n))
