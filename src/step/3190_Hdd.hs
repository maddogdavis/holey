{-# LANGUAGE ScopedTypeVariables #-}

module Hole where

class Functor f => SemiMonad f where
  bind :: (a -> f b) -> f a -> f b

class Functor f => SemiComonad f where
  cobind :: (f a -> b) -> f a -> f b

hole = undefined  -- "quiet" hole
data Hole = Hole  -- "noisy" hole

--

compose :: (b -> c) -> (a -> b) -> (a -> c)
compose = (.)

--

composeKleisli :: SemiMonad n => (b -> n c) -> (a -> n b) -> (a -> n c)
composeKleisli f g x = bind f (g x)

-- step 3190 back substitute again

composeCokleisli :: forall a b c n.
                    SemiComonad n => (n b -> c) -> (n a -> b) -> n a -> c
composeCokleisli f g x = f (cobind g x :: n b)
