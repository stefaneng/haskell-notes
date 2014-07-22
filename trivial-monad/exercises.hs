module Main where

data W x = W x deriving Show

instance Functor W where
    fmap f (W x) = W (f x)

instance Monad W where
    return x = W x
    W x >>= f = f x

-- | Exercise 1
g :: Int -> W Int -> W Int
g x = flip (>>=) $ (return . (+ x))

-- | Exercise 2
h :: W Int -> W Int -> W Int
h x y = x >>= flip g y

-- | Exercise 3
-- Left identity:
--   return a >>= f
--   => W a >>= f
--   => f a
--   ...
-- Right identity:
--   W x >>= return
--   => return x
--   => W x
--   ...
-- Associativity:
--   (W x >>= f) >>= g
--   => (f x) >>= g
--  ...

-- | Exercise 4
-- Need to simulate: (a >>= (\x -> x >>= return x))
-- Without unwrapping manually
joinW :: W (W a) -> W a
joinW x = x >>= id
-- Alternatively:
-- joinW = flip (>>=) id
