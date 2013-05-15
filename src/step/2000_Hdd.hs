{-# LANGUAGE ScopedTypeVariables #-}

module Hole where

hole = undefined  -- "quiet" hole
data Hole = Hole  -- "noisy" hole

compose :: forall a b c. (b -> c) -> (a -> b) -> (a -> c)
compose = (.)

-- step 2000 define semi monad

class Functor f => SemiMonad f where
  bind :: (a -> f b) -> f a -> f b
