-- 2025 Kristoffer

main = do
  num <- readLn
  print (triple num)

triple :: Int -> Int
triple x = 3 * x
