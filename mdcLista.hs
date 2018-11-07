mdc :: Int -> Int -> Int
mdc a b 
        |b > a = mdc b a
        | b == 0 = a
        | otherwise = mdc b resto
        where resto = (mod a b)
        
mdc2 :: [Int] -> Int
mdc2 (x:[]) = x
mdc2 (x:xs) = mdc x (mdc2 xs)

main=do
print $ mdc2 [25, 255, 65, 75, 105, 385]
