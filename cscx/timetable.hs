-- 2025 Kristoffer

type Start1 = String

type Start2 = String

type End1 = String

type End2 = String

timeTable :: Start1 -> End1 -> Start2 -> End2 -> String
timeTable start1 end1 start2 end2
  | s1 < s2 && s2 < e1 = "conflict"
  | s1 > s2 && s1 < e2 = "conflict"
  | otherwise = "ok"
  where
    [s1, e1, s2, e2] = map timeConvert [start1, end1, start2, end2]

timeConvert :: String -> Int
timeConvert hhmm = read hh * 60 + read mm
  where
    (hh, ':' : mm) = break (== ':') hhmm

io :: String -> String
io input = timeTable start1 end1 start2 end2
  where
    [start1, end1, start2, end2] = words input

main :: IO ()
main = interact $ unlines . map io . lines
