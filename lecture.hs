fyrdubbel x = y + y
  where
    y = x + x

main :: IO ()
main = interact $ unlines . map io . lines

-- io :: String -> String
-- io x = x

-- io :: String -> String
-- io x
--   | x == "0" = "Zero"
--   | x == "35" = "Awesome"
--   | otherwise = "Too bad"

io line = show (x ^ 10)
  where
    x = read line
