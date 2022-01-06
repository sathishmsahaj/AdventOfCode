module Rover where


data Instruction = L | R | M deriving (Show , Eq)

data Orientation = North | East | West | South deriving (Show,Eq)

invertOrientation :: Orientation -> Orientation
invertOrientation North = South
invertOrientation South = North
invertOrientation East = West
invertOrientation West = East


data Location = Location { x ::Integer , y :: Integer } deriving (Show , Eq)

data GridPosition = GridPosition { location :: Location , facing :: Orientation} deriving (Show, Eq)


executeInstructions :: GridPosition -> [Instruction] -> GridPosition
executeInstructions  = foldl applyInstruction 

alterLocation :: GridPosition -> Location
alterLocation (GridPosition (Location x y) North) = Location x (y+1)
alterLocation (GridPosition (Location x y) South) = Location x (y-1)
alterLocation (GridPosition (Location x y) East) = Location (x+1) y
alterLocation (GridPosition (Location x y) West) = Location (x-1) y



alterOrientation :: Orientation -> Instruction -> Orientation
alterOrientation North L = East 
alterOrientation East L = South 
alterOrientation West L = North
alterOrientation South L = West 
alterOrientation orientation R = invertOrientation ( alterOrientation orientation L) 
alterOrientation orientation _ = orientation


applyInstruction :: GridPosition -> Instruction -> GridPosition
applyInstruction g@(GridPosition l o) M = GridPosition (alterLocation g) o
applyInstruction (GridPosition l o) instruction = GridPosition l (alterOrientation o instruction)
