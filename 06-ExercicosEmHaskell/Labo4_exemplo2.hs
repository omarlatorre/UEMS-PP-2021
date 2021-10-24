-- Exercicio 1
pyths :: Int -> [(Int,Int,Int)]
pyths n = [(x,y,n) | x <- [1..n], y <- [1..n], x^2 + y^2 == n^2]

-- Exercicio 2
factors :: Int -> [Int]
factors n = [x | x <- [1..n], n `mod` x == 0]

perfect :: Int -> Bool
perfect n = sum (factors n) == 2*n

perfects :: Int -> [Int]
perfects n = [x | x <- [1..n], perfect x]

-- Exercicio 3
innerProduct :: [Int] -> [Int] -> Int
innerProduct xs ys = sum [x*y | (x,y) <- zip xs ys]