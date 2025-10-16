-- 2025 Kristoffer

data Rectangle = Rectangle
  { x1 :: Int,
    y1 :: Int,
    x2 :: Int,
    y2 :: Int
  }
  deriving (Eq, Show)

main :: IO ()
main = interact $ unlines . map io . lines

io :: String -> String
io input = rect1 `intersect` rect2
  where
    [x1, y1, x2, y2, x3, y3, x4, y4] = map read $ words input
    rect1 = Rectangle {x1 = x1, y1 = y1, x2 = x2, y2 = y2}
    rect2 = Rectangle {x1 = x3, y1 = y3, x2 = x4, y2 = y4}

intersect :: Rectangle -> Rectangle -> String
intersect rect1 rect2
  | x1 rect1 > x2 rect2 || x2 rect1 < x1 rect2 || y1 rect1 > y2 rect2 || y2 rect1 < y1 rect2 = "no"
  | otherwise = "yes"
