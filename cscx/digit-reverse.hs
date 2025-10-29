-- 2025 Kristoffer

reverseDigits :: Int -> Int
reverseDigits n = read $ helper n
  where
    helper x
      | x `div` 10 == 0 = show (x `mod` 10)
      | otherwise = show (x `mod` 10) ++ helper (x `div` 10)

io :: String -> String
io input = show $ reverseDigits n
  where
    n = read input

main :: IO ()
main = interact $ unlines . map io . lines
