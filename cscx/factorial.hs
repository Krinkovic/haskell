-- 2025 Kristoffer

main :: IO ()
main = interact $ unlines . map io . lines

io :: String -> String
io = show . factorial . read

factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)
