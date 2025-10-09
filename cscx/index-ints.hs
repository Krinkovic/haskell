-- 2025 Kristoffer

main :: IO ()
main = interact $ unlines . map io . lines

io :: String -> String
io input = ns !! read i
  where
    i = last ns
    (x : ns) = words input
