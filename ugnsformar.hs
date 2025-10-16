{-
 [ ] Calcualate a proportional baking dish of a different shape.
 [ ] inch conversion
 [ ] Result in litres
 [ ] Show similar we own
 [ ] A list of currently owned dishes
-}


roundVolume :: Float -> Float -> Float
roundVolume diameter depth = (diameter / 2) ^ 2 * pi * depth

squareVolume :: Int -> Int -> Int -> Int
squareVolume w h d = w * h * d

-- 20 * 30 * 5 = 3000
-- 3000 / 5 = r ^ 2 * pi
-- sqrt(3000 / 5 * pi) = r
-- diameter = r * 2
-- rv = r ^ 2 * pi

squareToRound =

main = do
  putStrLn "Select option:"
  putStrLn "1. Round to Rectangular"
  putStrLn "2. Rectangular to Round"
  selection <- readLn :: IO Int
  case selection of
    1 -> do
      putStrLn "Enter width, height and depth: "
      input <- getLine
      let [w, h, d] = words input
      let volume = squareVolume (read w) (read h) (read d)

    2 -> putStrLn "Enter diameter and depth: "
    _ -> putStrLn "Invalid input"
  input <- getLine

  -- Round to square
  -- let [diameter, depth] = words input
  -- let volume = roundVolume (read diameter) (read depth)
