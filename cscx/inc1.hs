-- 2025 Kristoffer

inc :: Int -> Int
inc x = x + 1

main = do
  num <- readLn
  print (inc num)
