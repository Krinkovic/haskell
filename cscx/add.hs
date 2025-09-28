-- 2025 Kristoffer

add :: Int -> Int -> Int
add x y = x + y

io :: String -> String
io line = show $ add x y
  where
    [first, second] = words line
    x = read first :: Int
    y = read second :: Int

main :: IO ()
main = interact $ unlines . map io . lines
