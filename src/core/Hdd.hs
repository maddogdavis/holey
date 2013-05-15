{-# LANGUAGE ScopedTypeVariables #-}

module Hole where

class Functor f => SemiMonad f where
  bind :: (a -> f b) -> f a -> f b

hole = undefined  -- "quiet" hole
data Hole = Hole  -- "noisy" hole

--

compose :: forall a b c. (b -> c) -> (a -> b) -> (a -> c)
compose = (.)

-- step 2050 introduce other goodies at our disposal

composeKleisli :: forall a b c n.
                  SemiMonad n => (b -> n c) -> (a -> n b) -> a -> n c 
composeKleisli f g x = hole
  where
    _ = bind :: (d -> n e) -> n d -> n e 
    _ = fmap :: (d ->   e) -> n d -> n e 
    _ = f    :: b -> n c 
    _ = g    :: a -> n b 
    _ = x    :: a
