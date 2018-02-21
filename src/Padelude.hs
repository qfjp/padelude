{-# LANGUAGE ConstraintKinds       #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE TypeFamilies          #-}
module Padelude (module P, module Set, (++), printf) where

import           Data.Semigroup (Semigroup, (<>))
import           Data.Set.Monad as Set (Set)
import           Protolude      as P hiding (Set, on, (++), (<>))
import           Text.Printf    (printf)

infixr 5  ++
(++) :: Semigroup a => a -> a -> a
(++) = (<>)
