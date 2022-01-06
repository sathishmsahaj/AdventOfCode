# AdventOfCode

## Rover First Cut

A robot on a plane surface grid with integral coordinates for location is instructed to either turn left, or turn right, or move ahead.
Given an initial location, orientation, and a command-stream (as a string), return the final coordinates and orientation.

There is no fixed input format - you are free to choose your own as long as you can represent the coordinates and orientation well enough in both input and output.

Single, simple example:
Initial position - x = 0, y = 0, facing North.
Command = "lrmm"
Final position - x = 0, y = 2, facing North


### Instructions to execute the code

Assuming that `cabal` is installed on the laptop , once could do the following:

```
1. Pull the code from the repository
2. cabal build
3. cabal run
```

### Installing ghc and cabal on the machine

1. Assuming one is already using `brew` or a package manager , `brew install ghc cabal-install` should get one started on Haskell.
