-- Exercicio 01

and' :: [Bool] -> Bool
and' [] = True
and' (x:xs) = x && and' xs

concat' :: [[a]] -> [a]
concat' [] = []
concat' (xs:xss) = xs ++ concat' xss

replicate' :: Int -> a -> [a]
replicate' 0 x = []
replicate' n x = [x] ++ replicate' (n-1) x

(!!!) :: [a] -> Int -> a
(x:xs) !!! 0 = x
xs !!!  n = tail xs !!! (n-1)  

elem' :: Eq a => a -> [a] -> Bool
elem' y []     = False
elem' y (x:xs) = if y == x then True else elem' y xs 

merge :: [Int] -> [Int] -> [Int]
merge xs [] = xs
merge [] xs = xs 
merge (y:ys) (x:xs) = if y <= x then left else rigth
    where
      left = [y] ++ merge ys (x:xs)
      rigth = [x] ++ merge (y:ys) xs

halve :: [a] -> ([a],[a])
halve xs = (take lhx xs, drop lhx xs)
    where lhx = length xs `div` 2

msort    :: [Int] -> [Int]
msort []  = []
msort [x] = [x]
msort xs  = merge (msort ys) (msort zs)
   where
     (ys, zs) = halve xs