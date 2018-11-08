mdc :: Int -> Int -> Int
mdc a b 
        |b > a = mdc b a
        | b == 0 = a
        | otherwise = mdc b resto
        where resto = (mod a b)
        
mmc :: Int -> Int -> Int
mmc a b = (div (a*b) (mdc a b))

mmc2 :: [Int] -> Int
mmc2 (x:[]) = x
mmc2 (x:xs) = (mmc x (mmc2 xs))

main=do
print $ mmc2 [12, 24, 6, 36]
