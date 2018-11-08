menores :: [Float] -> [Float]
menores [] = []
menores [x] = []
menores lista = [ x | x <- lista, x < m]
        where m = (sum lista) / (tamanho lista)
        
tamanho :: [Float] -> Float
tamanho [] = 0
tamanho (x:xs) = 1 + tamanho xs


main=do

 print $ menores [4, 4, 4, 2]
