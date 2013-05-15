{-# LANGUAGE ScopedTypeVariables #-}

module Hole where

class Functor f => SemiMonad f where
  bind :: (a -> f b) -> f a -> f b

hole = undefined  -- "quiet" hole
data Hole = Hole  -- "noisy" hole

--

compose :: (b -> c) -> (a -> b) -> (a -> c)
compose = (.)

--

composeKleisli :: SemiMonad n => (b -> n c) -> (a -> n b) -> (a -> n c)
composeKleisli f g x = bind f (g x)

-- step 3000 prepare for cokleisli compose

-- fmap   ::      a ->   b
-- bind   ::      a -> f b
-- cobind ::    f a ->   b
-- apply  :: f (  a ->   b)
