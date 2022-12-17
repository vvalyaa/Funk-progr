main::IO()

main = putStr (show (predlast [1,3,5,3]))
    


predlast :: [a] -> a

predlast [a,b] = a 
predlast [] = error "The list is empty!"
predlast [a] = error "There is only one element"

predlast (a : ab) = predlast ab