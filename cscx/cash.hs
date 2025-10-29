-- 2025 Kristoffer

notes :: [Int]
notes = [100, 50, 20, 10, 5, 2, 1]

cash :: Int -> Int -> String
cash 0 _ = ""
cash total n
  | total `div` note == 0 = cash (total `mod` note) (n + 1)
  | otherwise =
      let count = total `div` note
          remainder = total `mod` note
          current = show count ++ "x" ++ show note
       in if remainder == 0
            then current
            else unwords [current, cash remainder (n + 1)]
  where
    note = notes !! n

io :: String -> String
io input = cash (read input) 0

main :: IO ()
main = interact $ unlines . map io . lines
