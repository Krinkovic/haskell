-- 2025 Kristoffer

digitSum :: Int -> Int
digitSum 0 = 0
digitSum n = n `mod` 10 + digitSum (n `div` 10)

io :: String -> String
io input = show $ digitSum . read $ input

main :: IO ()
main = interact $ unlines . map io . lines
