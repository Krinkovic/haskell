-- 2025 Kristoffer

io :: String -> String
io = show . inc . read

inc :: Int -> Int
inc x = x + 1

main :: IO ()
main = interact $ unlines . map io . lines
