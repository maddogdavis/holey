{-# LANGUAGE ScopedTypeVariables #-}

module Hole where

class Functor f => SemiMonad f where
  bind :: (a -> f b) -> f a -> f b

hole = undefined  -- "quiet" hole
data Hole = Hole  -- "noisy" hole

--

compose :: forall a b c. (b -> c) -> (a -> b) -> (a -> c)
compose = (.)

-- step 2130 try g as result producer for s

composeKleisli :: forall a b c n.
                  SemiMonad n => (b -> n c) -> (a -> n b) -> a -> n c 
composeKleisli f g x = k 
  where
    _ = bind           :: (d -> n e) -> n d -> n e 
    _ = fmap           :: (d ->   e) -> n d -> n e 
    _ = f              :: b -> n c 
    _ = g              :: a -> n b 
    _ = x              :: a

    k = bind r s :: n c
      where
        r = f      :: b -> n c
        s = g hole :: n b
