module Hole where

-- step 1030 define "noisy" hole

hole = undefined  -- "quiet" hole
data Hole = Hole  -- "noisy" hole

compose :: (b -> c) -> (a -> b) -> a -> c
compose f g x = Hole
