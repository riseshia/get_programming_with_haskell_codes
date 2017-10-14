{-# LANGUAGE OverloadedStrings #-}

import System.IO
import System.Environment
import qualified Data.Text as T
import qualified Data.Text.IO as TI

getCounts :: T.Text -> (Int, Int, Int)
getCounts input = (charCount, wordCount, lineCount)
  where charCount = T.length input
        wordCount = (T.length . T.words) input
        lineCount = (T.length . T.lines) input

countsText :: (Int, Int, Int) -> T.Text
countsText (cc, wc, lc) = T.pack (unwords ["chars:"
                                  , show cc
                                  , "words:"
                                  , show wc
                                  , "lines:"
                                  , show lc])

main :: IO ()
main = do
  args <- getArgs
  let fileName = head args
  input <- TI.readFile fileName
  let summary = (countsText . getCounts) input
  appendFile "stats.dat" (mconcat [fileName, " ", summary, "\n"])
  putStrLn summary
