-- 2025 Kristoffer

suffix :: Int -> String
suffix x
  | x == 11 = "th"
  | x == 12 = "th"
  | x == 13 = "th"
  | x `mod` 10 == 1 = "st"
  | x `mod` 10 == 2 = "nd"
  | x `mod` 10 == 3 = "rd"
  | otherwise = "th"

ordinal :: Int -> String
ordinal x = show x ++ suffix x

io :: String -> String
io x = ordinal $ read x

main :: IO ()
main = interact $ unlines . map io . lines
