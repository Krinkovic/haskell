import Test.LeanCheck

sort :: [Int] -> [Int]
sort [] = []
sort [x] = [x]
sort (x : xs) = sort lesser ++ [x] ++ sort greater
  where
    lesser = [y | y <- xs, y <= x]
    greater = [z | z <- xs, z > x]

tests =
  [ sort [5, 4, 3, 2, 1] == [1, 2, 3, 4, 5],
    sort [4, 7, 2, -20, 20] == [-20, 2, 4, 7, 20],
    sort [99, 98 .. 1] == [1 .. 99],
    sort [1, 2, 3, 1, 2, 3] == [1, 1, 2, 2, 3, 3]
  ]

prop_elem :: Int -> [Int] -> Bool
prop_elem x xs =
  (x `elem` xs) == (x `elem` sort xs)

prop_ord :: [Int] -> Bool
prop_ord xs = ordered (sort xs)
  where
    ordered (x : y : xs) = x <= y && ordered (y : xs)
    ordered _ = True

prop_length :: [Int] -> Bool
prop_length xs =
  length xs == length (sort xs)
