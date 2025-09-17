-- 2025 Kristoffer

main :: IO ()
main = do
  str <- getLine
  let [x, y] = words str
  if (read x :: Int) < (read y :: Int)
    then putStrLn "Yes"
    else putStrLn "No"
