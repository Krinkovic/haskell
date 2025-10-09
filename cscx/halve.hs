-- 2025 Kristoffer

main :: IO ()
main = interact $ unlines . map io . lines

io :: String -> String
io input = firstHalf input ++ "/" ++ secondHalf input

firstHalf :: [a] -> [a]
firstHalf input = take (length input `div` 2) input

secondHalf :: [a] -> [a]
secondHalf input = drop (length input `div` 2) input
