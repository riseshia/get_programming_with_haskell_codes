import qualified Data.Map as Map

inputMap :: Map.Map String String
inputMap = Map.fromList [("Input", "Value")]

lookupFromTable :: String -> Maybe String
lookupFromTable name = do
  result <- Map.lookup name inputMap
  return result

main :: IO (Maybe String)
main = do
  putStrLn "Hello! What's your name?"
  name <- getLine
  return (lookupFromTable name)
