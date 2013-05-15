{-# LANGUAGE ScopedTypeVariables #-}

module Hole where

-- step 1050 use "noisy" hole to direct to result

hole = undefined  -- "quiet" hole
data Hole = Hole  -- "noisy" hole

compose :: forall a b c. (b -> c) -> (a -> b) -> a -> c
compose f g x = Hole
  where
    _ = f :: b -> c
    _ = g :: a -> b
    _ = x :: a
