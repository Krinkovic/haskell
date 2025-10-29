-- 2025 Kristoffer

palindrome :: Int -> Bool
palindrome input = numstr == reverse numstr
  where
    numstr = show input

io :: String -> String
io input
  | palindrome num = show num ++ " is palindrome"
  | otherwise = show num ++ " is not palindrome"
  where
    num :: Int
    num = read input

main :: IO ()
main = interact $ unlines . map io . lines
