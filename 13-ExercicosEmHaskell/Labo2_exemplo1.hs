isDigit   :: Char -> Bool
isDigit c =  c >= '0' && c <= '9'

add       :: (Int,Int) -> Int
add (x,y) = x+y

zeroto   :: Int -> [Int]
zeroto n = [0..n]

add'  :: Int -> (Int -> Int)
add' x y = x+y

mult       :: Int -> (Int -> (Int -> Int))
mult x y z = x*y*z