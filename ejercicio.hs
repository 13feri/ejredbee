{- PARA HACER LOS EJERCICIOS UTILICE EL LENGUAJE HASKELL
-}

-- 1) SumTwoNumbers: That receives two numbers and returns the sum of both

sumtwonumbers :: Int -> Int -> Int
sumtwonumbers x y = x + y

{- para probar en terminal sumtwonumbers 4 6 = 10
 si se prueba con número negativo va entre parentesis
 ejemplo: sumtwonumbers 4 (-3) = 1
 -}



 -- 2) SumArrayNumbers: That receives a list and return the sum of entire list

sumArrayNumbers :: [Int] -> Int
sumArrayNumbers [] = 0
sumArrayNumbers (x:xs) = x + sumArrayNumbers xs

-- para probar en terminal sumArrayNumbers[1,2,3,4] = 10



-- 3)CompareNumbers: That receives three numbers and return the max of them



compareNumbers :: Int -> Int -> Int -> Int
compareNumbers x y z | x >= y && x >= z = x
                     | y > x && y >= z = y
                     | z > x && z > y = z


-- 4) CompareArrayNumbers: That receives two lists of numbers and returns a list with the max of both

maximo :: [Int] -> Int
maximo [] = 0
maximo [x] = x
maximo (y:(x:xs)) | y >= x = maximo (y:xs)
                  | x > y = maximo (x:xs)

compareArrayNumbers :: [Int] -> [Int] -> Int
compareArrayNumbers ys xs | maximo ys >= maximo xs = maximo ys
                          | maximo xs > maximo ys = maximo xs
