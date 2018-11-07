mdc :: Int -> Int -> Int
mdc a b 
        |b > a = mdc b a
        | b == 0 = a
        | otherwise = mdc b resto
        where resto = (mod a b)

main=do
print $ mdc 2160 888
