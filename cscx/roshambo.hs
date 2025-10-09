-- 2025 Kristoffer

data Roshambo = Rock | Paper | Scissors deriving (Eq, Show, Read)

beats :: Roshambo -> Roshambo -> Bool
Rock `beats` Scissors = True
Scissors `beats` Paper = True
Paper `beats` Rock = True
_ `beats` _ = False
