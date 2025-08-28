-- Learn You a Haskell
doubleMe x = x + x
doubleUs x y = x * 2 + y * 2
doubleSmallNumber x = if x > 100
  then x
  else x * 2
doubleSmallNumber' x = (if x > 100 then x else x * 2) + 1
factorial n = product [1..n]
average ns = sum ns `div` length ns

-- Programming in Haskell
-- Exercises chapter 2

-- 2
{-
(2^3)*4
(2*3)+(4*5)
2+(3*(4^5))
-}

-- 3
n = a `div` length xs
  where
    a = 10
    xs = [1,2,3,4,5]

-- 4
last' xs = xs !! (length xs - 1)
last'' xs = head (reverse xs)

-- 5
