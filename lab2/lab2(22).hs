main = putStr(show(range 10 (-10)))


range :: Int -> Int -> [Int]
range a b
    | a == b = [a]
    | a < b = a:(range (a+1) b)
    | a > b = a:(range (a-1) b)