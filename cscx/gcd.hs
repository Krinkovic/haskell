-- 2025 Kristoffer

import Data.List (sort)
import Prelude hiding (gcd)

gcd :: Int -> Int -> Int
gcd n1 n2
  | n1 == 0 = n2
  | n1 == 1 = n1
  | n2 `mod` n1 == 0 = n1
  | otherwise = gcd n2 (n1 `mod` n2)

io :: String -> String
io input = show $ gcd n1 n2
  where
    [n1, n2] = sort . map read . words $ input

main :: IO ()
main = interact $ unlines . map io . lines
