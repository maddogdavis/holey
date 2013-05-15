module Hole where

-- step 1020 define "quiet" hole

hole = undefined  -- "quiet" hole

compose :: (b -> c) -> (a -> b) -> a -> c
compose f g x = hole
