-- 2025 Kristoffer

io :: String -> String
io = show . triple . read

triple :: Int -> Int
triple x = x + x + x

main :: IO ()
main = interact $ unlines . map io . lines
