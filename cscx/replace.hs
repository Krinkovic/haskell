-- 2025 Kristoffer

main :: IO ()
main = interact $ unlines . map io . lines

io :: String -> String
io input = fixedWord
  where
    fixedWord = firstPart word i ++ c ++ lastPart word i
    xs = words input
    word = head xs
    i = read $ xs !! 1
    c = last xs

firstPart :: String -> Int -> String
firstPart word i = take i word

lastPart :: String -> Int -> String
lastPart word i = drop (i + 1) word
