-- 2025 Kristoffer

seq1 :: Int -> Int -> IO ()
seq1 a b = do
  if a == b
    then print b
    else do
      print a
      seq1 (a + 1) b

main = do
  ns <- getLine
  let [a, b] = map read $ words ns
  seq1 a b
