-- Exercicio (1)
-- (a) a conditional expression
--safeTail :: [a] -> [a]
--safeTail [] = []
--safeTail (x:xs) = if null xs then [] else xs

-- (b) guarded equations
--safeTail :: [a] -> [a]
--safeTail [] = []
--safeTail (x:xs) | null xs = []
--                | otherwise = xs

-- (c) pattern matching
safeTail :: [a] -> [a]
safeTail [] = []
safeTail ((:) x xs) = xs

-- Exercicio (2)
--(|||)           :: Bool -> Bool -> Bool
--True ||| True   = True
--True ||| False  = True
--False ||| True  = True
--False ||| False = False

--(|||)           :: Bool -> Bool -> Bool
--False ||| False = False
--_     ||| _     = True

(|||)           :: Bool -> Bool -> Bool
False ||| b = b
True  ||| _ = True

-- Exercicio (3)
--(&&&)           :: Bool -> Bool -> Bool
--a &&& b = if a == False then False else 
--               if b == True then True else False 


-- Exercicio (4)
(&&&)           :: Bool -> Bool -> Bool
a &&& b = if a == True then b else 
               if b == True then False else False   

