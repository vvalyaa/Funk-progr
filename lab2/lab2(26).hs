main :: IO()

main = do
    print $ combinations 3 "abcdef"



combinations :: Int -> [a] -> [[a]]

combinations _ [] = [[]]

combinations 0 _  = [[]]

combinations comb (x:xs) = start ++ others
    where start = [ x : rest | rest <- combinations (comb-1) xs ]
          others  = if comb <= length xs then combinations comb xs else []