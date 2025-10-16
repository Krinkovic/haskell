-- 2025 Kristoffer

import Data.List (sort)
import Prelude hiding (lcm)

lcm :: Int -> Int -> Int
lcm n1 n2 = (n1 * n2) `div` gcd n1 n2

io :: String -> String
io input = show $ lcm n1 n2
  where
    [n1, n2] = sort . map read . words $ input

main :: IO ()
main = interact $ unlines . map io . lines
