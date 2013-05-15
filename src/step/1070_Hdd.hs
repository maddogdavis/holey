{-# LANGUAGE ScopedTypeVariables #-}

module Hole where

-- step 1070 take another step using g

hole = undefined  -- "quiet" hole
data Hole = Hole  -- "noisy" hole

compose :: forall a b c. (b -> c) -> (a -> b) -> a -> c
compose f g x = f (g Hole)
  where
    _ = f :: b -> c
    _ = g :: a -> b
    _ = x :: a
