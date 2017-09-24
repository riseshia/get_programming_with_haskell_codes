import Data.Semigroup

data Events = Events [String]
data Probs = Probs [Double]
data PTable = PTable Events Probs

createPTable :: Events -> Probs -> PTable
createPTable events (Probs probs) = PTable events normalizedProbs
  where totalProbs = sum probs
        normalizedProbs = Probs (map (\x -> x / totalProbs) probs)

showPair :: String -> Double -> String
showPair event prob = mconcat [event, "|", show prob, "\n"]

instance Show PTable where
  show (PTable (Events events) (Probs probs)) = mconcat pairs
    where pairs = zipWith showPair events probs

cartCombine :: (a -> b -> c) -> [a] -> [b] -> [c]
cartCombine func l1 l2  = zipWith func newL1 cycledL2
  where nToAdd = length l2
        repeatedL1 = map ((take nToAdd) . repeat) l1
        newL1 = mconcat repeatedL1
        cycledL2 = cycle l2

instance Semigroup PTable where
  (<>) ptable1 (PTable (Events []) (Probs [])) = ptable1
  (<>) (PTable (Events []) (Probs [])) ptable2 = ptable2
  (<>) (PTable e1 p1) (PTable e2 p2) = createPTable newEvents newProbs
    where newEvents = mappend e1 e2
          newProbs = mappend p1 p2

instance Monoid PTable where
  mempty = PTable (Events []) (Probs [])
  mappend = (<>)

instance Semigroup Events where
  (<>) (Events []) e = e
  (<>) e (Events []) = e
  (<>) (Events e1) (Events e2) = Events (cartCombine combiner e1 e2)
    where combiner = (\x y -> mconcat [x, "-", y])

instance Monoid Events where
  mempty = Events []
  mappend = (<>)

instance Semigroup Probs where
  (<>) (Probs []) p = p
  (<>) p (Probs []) = p
  (<>) (Probs p1) (Probs p2) = Probs (cartCombine (*) p1 p2)

instance Monoid Probs where
  mempty = Probs []
  mappend = (<>)
