main :: IO()

main = do
    print $ (endElem [1,3,5,1,2,7])
    

getLast ::[a] -> a
getLast = myfoldr (const id)

myfoldr f z []     = z
myfoldr f z (x:xs) = f x (myfoldr f z xs)  

myconst :: a -> b -> a
myconst a _ = a