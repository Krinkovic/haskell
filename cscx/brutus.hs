-- 2025 Kristoffer

import Data.Char
import System.Environment
import System.IO

rot13 :: Int -> String -> String
rot13 arg = map (\x -> if ord x >= 97 && ord x <= 122 then shiftLower x else if ord x >= 65 && ord x <= 90 then shiftUpper x else x)
  where
    shiftUpper u = chr $ (ord u - ord 'A' + arg) `mod` 26 + ord 'A'
    shiftLower l = chr $ (ord l - ord 'a' + arg) `mod` 26 + ord 'a'

io :: [String] -> String -> String
io = rot13

main :: IO ()
main = do
  args <- getArgs
  let lowerArgs = toLower args
  interact $ unlines . map (io args) . lines
