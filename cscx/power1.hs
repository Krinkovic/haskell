-- 2025 Kristoffer

main :: IO ()
main = do
  ns <- getLine
  let [x, y] = words ns
  print $ power (read x) (read y)

power :: Int -> Int -> Int
power x 0 = 1
power x y = x * power x (y - 1)
