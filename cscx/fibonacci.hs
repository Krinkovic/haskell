-- 2025 Kristoffer

main :: IO ()
main = interact $ unlines . map io . lines

io :: String -> String
io = show . fibonacci . read

fibonacci :: Int -> Int
fibonacci = fibaux 0 1

fibaux :: Int -> Int -> Int -> Int
fibaux a b 0 = a
fibaux a b 1 = b
fibaux a b n = fibaux b (a + b) (n - 1)
