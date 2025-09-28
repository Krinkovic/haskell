-- 2025 Kristoffer

io :: String -> String
io = time . read

time :: Int -> String
time h
  | h >= 4 && h <= 11 = "Good morning"
  | h >= 12 && h <= 17 = "Good afternoon"
  | h >= 18 && h <= 23 = "Good evening"
  | otherwise = "Hi"

main :: IO ()
main = interact $ unlines . map io . lines
