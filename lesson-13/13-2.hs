data FiveSidedDie = D1 | D2 | D3 | D4 | D5

class Show a => Die a where
  display :: a -> String

instance Die FiveSidedDie where
  display _ = "display"

instance Show FiveSidedDie where
  show _ = "show"
