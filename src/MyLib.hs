module MyLib (someFunc) where

someFunc :: String -> IO ()
someFunc x = putStrLn (x ++ "someFunc")
