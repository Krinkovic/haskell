main :: IO ()
main = do
  putStrLn "Enter a number: "
  x <- readLn :: IO Int
  putStrLn "Enter a 2nd number: "
  y <- readLn :: IO Int
  let z = x * y
  putStr "The product is: "
  print z
