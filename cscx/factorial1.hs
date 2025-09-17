-- 2025 Kristoffer

factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

factorial' :: Int -> Int
factorial' n = if n == 0 then 1 else n * factorial (n - 1)

factorial'' :: Int -> Int
factorial'' n
  | n == 0 = 1
  | otherwise = n * factorial (n - 1)
