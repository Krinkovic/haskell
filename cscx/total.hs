-- 2025 Kristoffer

-- total :: Int -> Int -> IO Int
-- total 0 x = return x
-- total count x = do
--   num <- readLn
--   total (count - 1) (x + num)

total' :: Int -> Int -> IO ()
total' 0 x = print x
total' count x = do
  num <- readLn
  total' (count - 1) (x + num)

main :: IO ()
main = do
  count <- readLn
  total' count 0

-- print sum
