-- 2025 Kristoffer

countdown :: Int -> IO ()
countdown 0 = putStrLn "Go!"
countdown n = do
  print n
  countdown (n - 1)

main = do
  n <- readLn
  countdown n
