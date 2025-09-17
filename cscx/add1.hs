-- 2025 Kristoffer

add :: Int -> Int -> Int
add x y = x + y

main = do
  nums <- getLine
  let [x, y] = words nums
  print (add (read x) (read y))
