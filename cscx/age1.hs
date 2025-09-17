-- 2025 Kristoffer
main :: IO ()
main = do
  line <- getLine
  let [str, num] = words line
  putStrLn (str ++ " is " ++ num ++ " years old.")
