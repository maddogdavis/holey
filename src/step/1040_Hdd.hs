{-# LANGUAGE ScopedTypeVariables #-}

module Hole where

-- step 1040 shadow bindings for compose parameters

hole = undefined  -- "quiet" hole
data Hole = Hole  -- "noisy" hole

compose :: forall a b c. (b -> c) -> (a -> b) -> a -> c
compose f g x = hole
  where
    _ = f :: b -> c
    _ = g :: a -> b
    _ = x :: a
