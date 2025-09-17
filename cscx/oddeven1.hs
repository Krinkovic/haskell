-- 2025 Kristoffer

main :: IO ()
main = do
  num <- readLn
  if even num
    then putStrLn "even"
    else putStrLn "odd"
