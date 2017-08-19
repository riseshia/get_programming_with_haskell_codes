data Dices = D1 | D2 | D3 | D4 deriving Enum
instance Eq Dices where
  (==) a b = (fromEnum a) == (fromEnum b)
instance Ord Dices where
  compare a b = compare (fromEnum a) (fromEnum b)
