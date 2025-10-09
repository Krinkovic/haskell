-- 2025 Kristoffer

fizzBuzz :: Int -> String
fizzBuzz x = if y == "" then show x else y
  where
    y = (if x `mod` 3 == 0 then "Fizz" else "") ++ (if x `mod` 5 == 0 then "Buzz" else "")

fizzBuzzCount :: Int -> [String]
fizzBuzzCount n = [fizzBuzz x | x <- [1 .. n]]

main :: IO ()
main = do
  input <- getLine
  let n = read input
  let nums = unlines $ fizzBuzzCount n
  putStrLn nums
