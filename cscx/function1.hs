-- 2025 Kristoffer

import Text.Printf

-- f(x) = ax + b
function :: Double -> Double -> Double -> Double -> String
function x1 y1 x2 y2 = "f(x) = " ++ printf "%.1f" a ++ "*x + " ++ printf "%.1f" b
  where
    a :: Double
    a = (y2 - y1) / (x2 - x1)
    b :: Double
    b = y1 - a * x1

-- io :: String -> String
-- io input = function x1 y1 x2 y2
--   where
--     [x1, y1, x2, y2] = map read $ words input

-- main :: IO ()
-- main = interact $ unlines . map io . lines

main :: IO ()
main = do
  input <- getLine
  let [x1, y1, x2, y2] = map (read :: String -> Double) $ words input
  putStrLn $ function x1 y1 x2 y2
