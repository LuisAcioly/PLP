mdc :: Int -> Int -> Int
mdc a b 
        |b > a = mdc b a
        | b == 0 = a
        | otherwise = mdc b resto
        where resto = (mod a b)
        
mmc :: Int -> Int -> Int
mmc a b = (div (a*b) (mdc a b))

main=do
print $ mmc 6 4
