-- 2025 Kristoffer
main :: IO ()
main = do
  n <- readLn
  putStr $ hello n

hello :: Int -> String
hello 0 = ""
hello n = "Hello, World!\n" ++ hello (n - 1)
