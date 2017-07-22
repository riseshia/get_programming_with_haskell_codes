import Data.Char

isPalindrome sentence =
  let refined = map toLower $ filter isAlpha sentence
  in
    refined == reverse refined
