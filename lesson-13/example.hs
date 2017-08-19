-- data SixSidedDie = S1 | S2 | S3 | S4 | S5 | S6

-- data SixSidedDie = S1 | S2 | S3 | S4 | S5 | S6 deriving (Show)

-- data SixSidedDie = S1 | S2 | S3 | S4 | S5 | S6
-- instance Show SixSidedDie where
--   show S1 = "one"
--   show S2 = "two"
--   show S3 = "three"
--   show S4 = "four"
--   show S5 = "five"
--   show S6 = "six"

-- data SixSidedDie = S1 | S2 | S3 | S4 | S5 | S6
-- show :: SixSidedDie -> String
-- show S1 = "one"
-- show S2 = "two"
-- show S3 = "three"
-- show S4 = "four"
-- show S5 = "five"
-- show S6 = "six"

-- data TwoSidedDie = One | Two
-- show :: TwoSidedDie -> String
-- show One = "one"
-- show Two = "two"

-- data SixSidedDie = S1 | S2 | S3 | S4 | S5 | S6
-- instance Eq SixSidedDie where
--   (==) S6 S6 = True
--   (==) S5 S5 = True
--   (==) S4 S4 = True
--   (==) S3 S3 = True
--   (==) S2 S2 = True
--   (==) S1 S1 = True
--   (==) _ _ = False

-- data SixSidedDie = S1 | S2 | S3 | S4 | S5 | S6 deriving (Eq, Ord)
-- data SixSidedDie = S1 | S2 | S3 | S4 | S5 | S6 deriving (Eq, Ord, Show)
-- instance Enum SixSidedDie where
--   toEnum 0 = S1
--   toEnum 1 = S2
--   toEnum 2 = S3
--   toEnum 3 = S4
--   toEnum 4 = S5
--   toEnum 5 = S6
--   toEnum _ = error "No such value"
--
--   fromEnum S1 = 0
--   fromEnum S2 = 1
--   fromEnum S3 = 2
--   fromEnum S4 = 3
--   fromEnum S5 = 4
--   fromEnum S6 = 5

data SixSidedDie = S1 | S2 | S3 | S4 | S5 | S6 deriving (Eq, Ord, Show, Enum)

-- type Name = (String, String)
data Name = Name (String, String) deriving (Show, Eq)

names :: [Name]
names = [ Name ("Emil", "Cioran")
        , Name ("Eugene", "Thacker")
        , Name ("Friedrich", "Nietzsche") ]

instance Ord Name where
  compare (Name (f1, l1)) (Name (f2, l2)) = compare (l1, f1) (l2, f2)
