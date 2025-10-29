-- 2025 Kristoffer

import Data.Char

rot13 :: String -> String
rot13 = map (\x -> if ord x >= 97 && ord x <= 122 then shiftLower x else if ord x >= 65 && ord x <= 90 then shiftUpper x else x)
  where
    shiftUpper u = chr $ (ord u - ord 'A' + 13) `mod` 26 + ord 'A'
    shiftLower l = chr $ (ord l - ord 'a' + 13) `mod` 26 + ord 'a'

io :: String -> String
io = rot13

main :: IO ()
main = interact $ unlines . map io . lines
