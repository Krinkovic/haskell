-- 2025 Kristoffer

import Text.Printf

io :: String -> String
io input = "The volume of a " ++ show w ++ " by " ++ show h ++ " by " ++ show d ++ " box is " ++ v ++ ".\n" ++ "The surface area of a " ++ show w ++ " by " ++ show h ++ " by " ++ show d ++ " box is " ++ a ++ ".\n"
  where
    [w, h, d] = map read $ words input
    a = show $ area w h d
    v = show $ volume w h d

volume :: Int -> Int -> Int -> Int
volume w h d = w * h * d

area :: Int -> Int -> Int -> Int
area w h d = 2 * w * h + 2 * w * d + 2 * h * d

main :: IO ()
main = interact $ unlines . map io . lines
