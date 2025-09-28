-- 2025 Kristoffer

io :: String -> String
io = oddeven . read

oddeven :: Int -> String
oddeven n
  | even n = "even"
  | odd n = "odd"

main :: IO ()
main = interact $ unlines . map io . lines
