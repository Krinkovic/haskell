-- 2025 Kristoffer

main :: IO ()
main = interact $ unlines . map io . lines

io :: String -> String
io input = "Hello, " ++ input ++ "!"
