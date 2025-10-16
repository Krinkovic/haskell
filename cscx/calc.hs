-- 2025 Kristoffer

import Text.Printf

calc :: Double -> String -> Double -> Double
calc x o y
  | o == "+" = x + y
  | o == "-" = x - y
  | o == "/" = x / y
  | o == "*" = x * y
  | o == "^" = x ** y

io :: String -> String
io input = printf "%.2f" (calc (read x) o (read y))
  where
    [x, o, y] = words input

main :: IO ()
main = interact $ unlines . map io . lines
