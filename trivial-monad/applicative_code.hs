module Main where

import Control.Applicative (Applicative(..))

data W x = W x deriving Show

instance Functor W where
    fmap f (W x) = W (f x)

instance Applicative W where
    pure = W
    (W f) <*> (W x) = W (f x)

-- Exercise 1:
g :: Int -> W Int -> W Int
g x y = pure (+ x) <*> y

-- Exercise 2:
h :: W Int -> W Int -> W Int
h x y = pure (+) <*> x <*> y
