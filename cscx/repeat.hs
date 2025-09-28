-- 2025 Kristoffer

io :: String -> String
io s = show x
  where
    x = read s :: Int

io' :: String -> String
io' s = show (read s :: Int)

main :: IO ()
main = interact $ unlines . map io' . lines
