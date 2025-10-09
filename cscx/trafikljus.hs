-- 2025 Kristoffer

data TrafficLight = Green | Yellow | Red | RedAndYellow -- deriving (Show, Eq, Ord, Read)

instance Show TrafficLight where
  show Green = "Green"
  show Yellow = "Yellow"
  show Red = "Red"
  show RedAndYellow = "RedAndYellow"

instance Eq TrafficLight where
  Green == Green = True
  Yellow == Yellow = True
  Red == Red = True
  RedAndYellow == RedAndYellow = True
  x == y = False

next :: TrafficLight -> TrafficLight
next Green = Yellow
next Yellow = Red
next Red = RedAndYellow
next RedAndYellow = Green

prev :: TrafficLight -> TrafficLight
prev Green = RedAndYellow
prev RedAndYellow = Red
prev Red = Yellow
prev Yellow = Green

valid :: TrafficLight -> TrafficLight -> Bool
valid x y
  | next x == y = True
  | otherwise = False
