-- Examples from Learn You a Haskell

doubleMe x = x + x

doubleUs x y = x * 2 + y * 2

doubleSmallNumber x =
  if x > 100
    then x
    else x * 2

doubleSmallNumber' x = (if x > 100 then x else x * 2) + 1

factorial n = product [1 .. n]

average ns = sum ns `div` length ns

faulty 0 = error "Baka-berg"
faulty x = print x

capital :: String -> String
capital "" = "Empty string, whoops!"
capital all@(x : xs) = "The first letter of " ++ all ++ " is " ++ [x]

maximum' :: (Ord a) => [a] -> a
maximum' [] = error "Empty list. CRASH!!!"
maximum' [x] = x
maximum' (x : xs) = max x (maximum' xs)
