{-# LANGUAGE ScopedTypeVariables #-}

module Hole where

-- step 1060 take step forward using f

hole = undefined  -- "quiet" hole
data Hole = Hole  -- "noisy" hole

compose :: forall a b c. (b -> c) -> (a -> b) -> a -> c
compose f g x = f Hole
  where
    _ = f :: b -> c
    _ = g :: a -> b
    _ = x :: a
