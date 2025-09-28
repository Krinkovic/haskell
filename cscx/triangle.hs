-- 2025 Kristoffer

import Data.List

main :: IO ()
main = interact $ unlines . map io . lines

io :: String -> String
io input =
  if not (trianglePossible sides)
    then "impossible"
    else unwords [triangleSideType sides, triangleAngleType sides]
  where
    sides = sort . map read $ words input

trianglePossible :: [Int] -> Bool
trianglePossible [x, y, z]
  | x + y <= z = False
  | otherwise = True

triangleAngleType :: [Int] -> String
triangleAngleType [x, y, z]
  | x ^ 2 + y ^ 2 == z ^ 2 = "right"
  | x ^ 2 + y ^ 2 < z ^ 2 = "obtuse"
  | x ^ 2 + y ^ 2 > z ^ 2 = "acute"

triangleSideType :: [Int] -> String
triangleSideType [x, y, z]
  | x == y && y == z = "equilateral"
  | x /= y && y /= z && z /= x = "scalene"
  | otherwise = "isosceles"
