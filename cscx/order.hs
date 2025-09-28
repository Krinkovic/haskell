-- 2025 Kristoffer

io :: String -> String
io = order . map read . words

order :: [Int] -> String
order [a, b]
  | a < b = "Yes"
  | otherwise = "No"

main :: IO ()
main = interact $ unlines . map io . lines
