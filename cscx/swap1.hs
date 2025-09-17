-- 2025 Kristoffer
main :: IO ()
main = do
  line <- getLine
  let [num, str] = words line
  putStrLn (str ++ " " ++ num)
