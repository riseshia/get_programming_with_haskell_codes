{-# LANGUAGE OverloadedStrings #-}
import qualified Data.Text as T
import Data.Semigroup

-- T.pack :: String -> T.Text
-- T.unpack :: T.Text -> String

firstWord :: String
firstWord = "pessimism"

secondWord :: T.Text
secondWord = T.pack firstWord

thirdWord :: String
thirdWord = T.unpack secondWord

aWord :: T.Text
aWord = "Cheese"

main :: IO ()
main = do
  print aWord

sampleInput :: T.Text
sampleInput = "this\nis\ninput"
-- T.lines sameInput

someText :: T.Text
someText = "Some\ntext for\t you"
-- T.words someText

breakText :: T.Text
breakText = "simple"

exampleText :: T.Text
exampleText = "This is simple to do"
-- T.splitOn breakText exampleText

-- T.unlines (T.lines sampleInput)
-- T.unwords (T.words someText)

-- T.intercalate breakText (T.splitOn breakText exampleText)

combined :: String
combined = "some" ++ " " ++ "strings"

combinedTextMonoid :: T.text
combinedTextMonoid = mconcat ["some", " ", "text"]

combinedTextSemigroup :: T.Text
combinedTextSemigroup = "some" <> " " <> "text"
