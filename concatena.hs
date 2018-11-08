concatena :: [Int] -> [Int] -> [Int]
concatena [] [] = []
concatena [] lista = lista
concatena lista [] = lista
concatena [x] lista = x : lista
concatena (x:xs) lista = x : concatena xs lista


main=do
print $ concatena [1] [2,3,4]
