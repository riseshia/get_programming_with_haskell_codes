class Describable a where
  describe :: a -> String

data Icecream = Chocolate | Vanilla deriving (Show, Eq, Ord)

cycleSucc :: (Bounded a, Enum a, Num a, Ord a) => a -> a
cycleSucc x = x + 1

a = 1 :: Int
cycleSucc a
