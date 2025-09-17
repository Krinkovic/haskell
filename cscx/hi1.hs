-- 2025 Kristoffer
main :: IO ()
main = do
  name <- getLine
  putStrLn ("Hello, " ++ name ++ "!")
