{-# LANGUAGE ScopedTypeVariables #-}

module Hole where

-- step 1080 final step yields result

hole = undefined  -- "quiet" hole
data Hole = Hole  -- "noisy" hole

compose :: forall a b c. (b -> c) -> (a -> b) -> a -> c
compose f g x = f (g x)
  where
    _ = f :: b -> c
    _ = g :: a -> b
    _ = x :: a
