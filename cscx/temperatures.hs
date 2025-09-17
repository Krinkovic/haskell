-- 2025 Kristoffer

ctof :: (Fractional a) => a -> a
ctof c = c * (9 / 5) + 32

ftoc :: (Fractional a) => a -> a
ftoc f = (f - 32) * (5 / 9)
