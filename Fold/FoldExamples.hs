module FoldExamples where

dropWhile' :: (a -> Bool) -> [a] -> [a]
dropWhile' p = fst . (dropWhilePair p)

dropWhilePair :: (a -> Bool) -> [a] -> ([a], [a])
dropWhilePair p = foldr f v
  where
    f x (ys,xs) = (if p x then ys else x : xs, x : xs)
    v           = ([], [])
