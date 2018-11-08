insere :: Int -> Int -> [Int]
insere a b 
            | a < b = [x | x <- [a..b] ]
            |otherwise = [x | x <- [b..a] ]
            
main=do
print $ insere 50 0
