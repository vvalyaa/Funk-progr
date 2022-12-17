main :: IO()

main = putStr(show( dupli [1, 5, 7]))


dupli :: [a] -> [a]
dupli [] = []
dupli (x:xs) = x : x : dup xs