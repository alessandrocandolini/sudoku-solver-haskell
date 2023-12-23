module Sudoku where

import qualified Data.List.NonEmpty as N

data Digit
  = One
  | Two
  | Three
  | Four
  | Five
  | Six
  | Seven
  | Eight
  | Nine
  deriving (Eq, Show, Enum, Bounded)

newtype Grid a = Grid
  { cells :: [[a]]
  }
  deriving (Eq, Show)

solutions :: Grid (Maybe Digit) -> [Grid Digit]
solutions = undefined

solution :: Grid (Maybe Digit) -> Maybe (Grid Digit)
solution = fmap N.head . N.nonEmpty . solutions

valid :: Grid Digit -> Bool
valid = undefined
