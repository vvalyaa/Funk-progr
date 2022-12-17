data Solved = Dvaotv {x1 , x2 :: Double} | Odinotv {x :: Double} | Nootv


main :: IO()

main = do
    putStrLn "Give a"
    a <- getLine
    putStrLn "Give b"
    b <- getLine
    putStrLn "Give c"
    c <- getLine
    print . printAnswer $ quad (read a :: Double) (read b :: Double) (read c :: Double)

printAnswer :: Solved -> String
printAnswer Nootv = "Net otveta"
printAnswer (Odinotv x) = show x
printAnswer (Dvaotv x1 x2) = show x1 ++ " " ++ show x2


quad a b c
    | disc < 0 = Nootv
    | disc > 0 = Dvaotv {x1 = x1, x2 = x2}
    | otherwise = Odinotv {x = x1}   
    where
        disc = b ^ 2 - 4 * a * c
        x1 = (- b - sqrt disc) / (2 * a)
        x2 = (- b + sqrt disc) / (2 * a) 