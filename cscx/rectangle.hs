-- 2025 Kristoffer

data Rectangle = Rectangle Int Int

area :: Rectangle -> Int
area (Rectangle w h) = w * h

perimeter :: Rectangle -> Int
perimeter (Rectangle w h) = 2 * w + 2 * h

io :: String -> String
io input = show w ++ "x" ++ show h ++ " rectangle, area = " ++ show (area rectangle) ++ ", perimeter = " ++ show (perimeter rectangle)
  where
    [w, h] = map (abs . read) $ words input
    rectangle = Rectangle w h

main :: IO ()
main = interact $ unlines . map io . lines
