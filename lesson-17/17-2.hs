import qualified Data.Map as Map

data Organ = Heart | Brain | Kidney | Spleen deriving (Show, Eq, Ord)

organs :: [Organ]
organs = [Heart, Heart, Brain, Spleen, Spleen, Kidney]

counts :: [Int]
counts = [2, 7, 13, 14, 21, 24]

organPairs :: [(Organ, Int)]
organPairs = zip organs counts

organCatalog :: Map.Map Organ Int
organCatalog = Map.fromList organPairs
