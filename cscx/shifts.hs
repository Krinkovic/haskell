-- 2025 Kristoffer Forsberg

shiftLeft :: [a] -> [a]
shiftLeft (x : xs) = xs ++ [x]

shiftRight :: [a] -> [a]
shiftRight ls = last ls : init ls
