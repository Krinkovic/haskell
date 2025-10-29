-- 2025 Kristoffer

import Data.Char
import System.Environment

rot13 :: Int -> String -> String
rot13 arg = map (\x -> if ord x >= 97 && ord x <= 122 then shiftLower x else if ord x >= 65 && ord x <= 90 then shiftUpper x else x)
  where
    shiftUpper u = chr $ (ord u - ord 'A' + arg) `mod` 26 + ord 'A'
    shiftLower l = chr $ (ord l - ord 'a' + arg) `mod` 26 + ord 'a'

io :: Int -> String -> String
io = rot13

main :: IO ()
main = do
  args <- getArgs
  if null args
    then interact $ unlines . map (io 13) . lines
    else interact $ unlines . map (io ((read . head) args)) . lines
