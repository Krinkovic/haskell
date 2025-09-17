thirds :: Int -> Int
-- thirds (n < 3) = 0
thirds 1 = 0
thirds n = 1 + thirds (n `div` 3)

exclamation :: Int -> String -> String
exclamation 0 s = s
-- exclamation n s = s ++ "!" ++ exclamation (n - 1) ""
exclamation n s = exclamation (n - 1) s ++ "!"

countdown :: Int -> IO ()
countdown x = 
