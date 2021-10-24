-- exemplo 1
double x    = x + x
quadruple x = double (double x)

factorial n = product [1..n]
average ns = sum ns `div` length ns 

b = a `div` length xs
    where
      a = 10
      xs = [1,2,3,4,5]

ultimo xs = xs !! n
  where
    n = length xs - 1

-- ultimo xs = xs !! (length xs - 1)

-- removeUltimo xs = reverse (drop 1 (reverse xs))

removeUltimo xs = reverse ns
  where
    ns = drop 1 (reverse xs)
