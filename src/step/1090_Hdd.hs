{-# LANGUAGE ScopedTypeVariables #-}

module Hole where

-- step 1090 remove working and tidy

hole = undefined  -- "quiet" hole
data Hole = Hole  -- "noisy" hole

compose :: forall a b c. (b -> c) -> (a -> b) -> (a -> c)
compose = (.)
