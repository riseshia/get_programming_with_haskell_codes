import System.Environment
import Control.Monad

main :: IO ()
main = do
  args <- getArgs
  let linesToRead = if length args > 0
                    then read (head args)
                    else 0 :: Int
  numbers <- replicateM linesToRead getLine
  let ints = map read numbers :: [Int]
  print "sum goes here"

lazyMain :: IO ()
lazyMain = do
  userInput <- getContents
  let numbers = toInts userInput
  print (sum numbers)

sampleData = ['6','2','\n','2','1','\n']

toInts :: String -> [Int]
toInts = map read . lines
