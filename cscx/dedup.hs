-- 2025 Kristoffer

dedup :: String -> String
dedup [] = []
dedup [x] = [x]
dedup (x : xs) = if x == head xs then dedup xs else x : dedup xs

main :: IO ()
main = interact $ unlines . map dedup . lines
