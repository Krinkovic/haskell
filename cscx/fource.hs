-- 2025 Kristoffer

-- apply the argument function once to the argument value
once :: (a -> a) -> a -> a
once func = func

-- apply the argument function twice to the argument value
twice :: (a -> a) -> a -> a
twice func arg = func $ func arg

-- apply the argument function thrice to the argument value
thrice :: (a -> a) -> a -> a
thrice func arg = func $ func $ func arg

-- apply the argument function "fource" to the argument value
fource :: (a -> a) -> a -> a
fource func arg = func $ func $ func $ func arg
