-- 2025 Kristoffer

import Text.Printf

io :: String -> String
io r = (printf "%.2f" . circumference . read) r ++ " " ++ (printf "%.2f" . area . read) r

circumference :: Double -> Double
circumference r = 2 * r * pi

area :: Double -> Double
area r = r * r * pi

main :: IO ()
main = interact $ unlines . map io . lines
