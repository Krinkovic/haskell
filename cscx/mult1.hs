-- 2025 Kristoffer

mult :: Int -> Int -> Int -> Int
mult x y z = x * y * z

main = do
  nums <- getLine
  let [x, y, z] = words nums
  print (mult (read x) (read y) (read z))
