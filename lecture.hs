factors :: Int -> [Int]
factors x = [n | n <- [1 .. x], x `mod` n == 0]

prime x = factors x == [1, x]

primes :: Int -> [Int]
primes x = [n | n <- [2 .. x], prime n]
