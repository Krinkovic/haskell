-- 2025 Kristoffer

solid :: Double -> Bool
solid x
  | x <= 0 = True
  | otherwise = False

liquid :: Double -> Bool
liquid x
  | 0 < x && x < 100 = True
  | otherwise = False

gas :: Double -> Bool
gas x
  | x >= 100 = True
  | otherwise = False
