raiz :: Int -> Int
raiz a = raiz2 a 0 1

raiz2 :: Int -> Int -> Int -> Int
raiz2 m n i 
            | m >= i = raiz2 (m - i) (n+1) (i+2)
            | otherwise = n
            
main=do
print $ raiz 15
