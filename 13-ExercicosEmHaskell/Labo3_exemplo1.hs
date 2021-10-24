--abs' :: Int -> Int 
--abs' n = if n >= 0 then n else -n

--signum' :: Int -> Int
--signum' n = if n < 0 then -1 else 
--                if n == 0 then 0 else 1

abs' n | n >= 0    = n
       | otherwise = -n

signum' n | n < 0     = -1
          | n == 0    = 0
          | otherwise = 1

not'       :: Bool -> Bool
not' False = True
not' True  = False

--(&&&)           :: Bool -> Bool -> Bool
--True  &&& True   = True
--True  &&& False  = False
--False &&& True   = False
--False &&& False  = False 

--(&&&)           :: Bool -> Bool -> Bool
--True  &&& True   = True
--_     &&& _      = False

--(&&&)       :: Bool -> Bool -> Bool
--True  &&& b = b
--False &&& _ = False

head'       :: [a] -> a
head' (x:_) = x

tail'        :: [a] -> [a]
tail' (_:xs) = xs

add = \x -> (\y -> x+y)

const'   :: a -> (b -> a)
const' x = \_ -> x

--odds n =  map f [0..n-1]
--          where 
--              f x = x*2 + 1

odds n = map (\x -> x*2+1) [0..n-1]

