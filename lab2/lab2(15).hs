main :: IO()

main = putStr(show(repli "abc" 3))


repli :: [a] -> Int -> [a]
repli [] _ = []
repli _ 0 = []
repli (x:xs) n = x : repli [x] (n-1) ++ repli xs n