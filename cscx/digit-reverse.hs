-- 2025 Kristoffer

digitReverse :: Int -> Int
digitReverse n = show (n `mod` 10) ++ show $ digitReverse (n `div` 10)

io :: String -> String
io input = digitReverse n
  where
    n = read input

main :: IO ()
main = interact $ unlines . map io . lines
