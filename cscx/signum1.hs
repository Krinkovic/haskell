-- 2025 Kristoffer

main = do
  num <- readLn
  if num > 0
    then putStrLn "positive"
    else
      if num < 0
        then putStrLn "negative"
        else putStrLn "zero"
