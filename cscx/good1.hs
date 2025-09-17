-- 2025 Kristoffer

main :: IO ()
main = do
  h <- readLn
  putStrLn $ time h

time h
  | h >= 4 && h <= 11 = "Good morning"
  | h >= 12 && h <= 17 = "Good afternoon"
  | h >= 18 && h <= 23 = "Good evening"
  | otherwise = "Hi"

-- if h >= 4 && h <= 11
--   then putStrLn "Good Morning"
--   else
--     if h >= 12 && h <= 17
--       then putStrLn "Good Afternoon"
--       else
--         if h >= 18 && h <= 23
--           then putStrLn "Good Evening"
--           else putStrLn "Hi"
