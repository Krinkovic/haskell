-- 2025 Kristoffer

main :: IO ()
main = interact $ unlines . map io . lines

io :: String -> String
io input = unwords [n, "elements:", unwords ns]
  where
    (n : ns) = map (show . (read :: String -> Int)) (words input)
