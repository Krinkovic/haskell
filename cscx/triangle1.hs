-- 2025 Kristoffer

main :: IO ()
main = do
  xs <- getLine
  let [x, y, z] = words xs
  triangle (read x) (read y) (read z)

triangle :: Int -> Int -> Int -> IO ()
triangle x y z
  | x + y < z || x + z < y || y + z < x = putStrLn "impossible"
  | x == y && y == z = putStrLn "equilateral"
  | x == y || y == z || x == z = putStrLn "isosceles"
  | otherwise = putStrLn "scalene"
