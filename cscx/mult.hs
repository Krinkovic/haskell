-- 2025 Kristoffer

io :: String -> String
io st = show $ mult x y z
  where
    [x, y, z] = map read (words st)

mult :: Int -> Int -> Int -> Int
mult x y z = x * y * z

main :: IO ()
main = interact $ unlines . map io . lines
