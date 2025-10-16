-- 2025 Kristoffer

discount :: String -> String
discount input
  | (job == "student" && age <= 25) || age < 18 || age >= 65 = "discount"
  | otherwise = "full price"
  where
    job = head $ words input
    age = read . last $ words input

io :: String -> String
io = discount

main :: IO ()
main = interact $ unlines . map io . lines

tests =
  [ discount "student 11" == "discount",
    discount "student 25" == "full price",
    discount "retired 25" == "full price",
    discount "retired 67" == "discount",
    discount "child 11" == "discount"
  ]
