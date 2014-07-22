import Prelude hiding (return, fmap)

-- | Trival Monad
data W a = W a deriving Show

-- | Wraps a value with our type W
return :: a -> W a
return x = W x

-- | Manipulate data while leaving it wrapped
fmap :: (a -> b) -> (W a -> W b)
fmap g (W x) = W (g x)

-- | Function to increment a value and then wrap in W
f :: Int -> W  Int
f x = W (x + 1)

-- | Need a way to apply f, unwrap the result and apply f again
bind :: (a -> W b) -> (W a -> W b)
bind g (W x) = g x
