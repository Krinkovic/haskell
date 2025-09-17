-- 2025 Kristoffer

volume :: Int -> Int -> Int -> Int
volume w h d = w * h * d

area :: Int -> Int -> Int -> Int
area w h d = w * h * 2 + h * d * 2 + d * w * 2

main = do
  nums <- getLine
  let [w, h, d] = words nums
  let v = show (volume (read w) (read h) (read d))
  let a = show (area (read w) (read h) (read d))
  putStrLn ("The volume of a " ++ w ++ " by " ++ h ++ " by " ++ d ++ " box is " ++ v ++ ".")
  putStrLn ("The surface area of a " ++ w ++ " by " ++ h ++ " by " ++ d ++ " box is " ++ a ++ ".")
