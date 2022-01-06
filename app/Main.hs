module Main where

import qualified MyLib (someFunc)
import Rover
    ( Instruction(M, L, R),
      Orientation(North),
      Location(Location),
      GridPosition(GridPosition),
      executeInstructions )

initialGridPositions = GridPosition (Location 0 0) North

initialInstructions = [L , R , M , M]

main :: IO ()
main = do
  x <- putStrLn "Testing Hello Haskell"
  MyLib.someFunc "Test"
  print (executeInstructions initialGridPositions initialInstructions)
