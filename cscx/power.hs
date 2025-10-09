-- 2025 Kristoffer

main :: IO ()
main = interact $ unlines . map io . lines

io :: String -> String
io input = show $ power b n
  where
    [b, n] = map read $ words input

power :: Int -> Int -> Int
power b 0 = 1
power b n = b * power b (n - 1)
