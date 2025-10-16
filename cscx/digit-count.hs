-- 2025 Kristoffer

digitCount :: Int -> Int -> Int
digitCount d x
  | x == 0 = 0
  | x `mod` 10 == d = 1 + digitCount d (x `div` 10)
  | otherwise = digitCount d (x `div` 10)

io :: String -> String
io input = show $ digitCount d x
  where
    [d, x] = map read . words $ input

main :: IO ()
main = interact $ unlines . map io . lines
