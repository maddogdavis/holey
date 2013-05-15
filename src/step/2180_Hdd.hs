{-# LANGUAGE ScopedTypeVariables #-}

module Hole where

class Functor f => SemiMonad f where
  bind :: (a -> f b) -> f a -> f b

hole = undefined  -- "quiet" hole
data Hole = Hole  -- "noisy" hole

--

compose :: forall a b c. (b -> c) -> (a -> b) -> (a -> c)
compose = (.)

-- step 2180 final tidy

composeKleisli :: SemiMonad n => (b -> n c) -> (a -> n b) -> a -> n c 
composeKleisli f g x = bind f (g x)
