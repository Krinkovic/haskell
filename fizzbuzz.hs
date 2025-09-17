main :: IO ()
main = do
  putStr "nummer 1: "
  x <- readLn
  print x
  putStr "nummer 2: "
  y <- readLn
  print y
  let ns = [x, (x + 1) .. y]
  print ns
  let a = [if x `mod` 3 == 0 then x ++ " fizz" else 0 | x <- ns]
  print a
