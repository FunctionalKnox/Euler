{-If we list all the natural numbers below 10 that are multiples of 3 or 5, we-}
{-get 3, 5, 6 and 9. The sum of these multiples is 23. Find the sum of all the-}
{-multiples of 3 or 5 below 1000.-}

import Data.List as List

multOf3 x = x `mod` 3 == 0
multOf5 x = x `mod` 5 == 0

multOf3Or5 x = (multOf3 x) || (multOf5 x)

sumOfMultsUpTo n = List.foldl
  (\x y -> if multOf3Or5 y then x + y else x) 0 [1..n-1]

main = putStrLn $ show $ sumOfMultsUpTo 1000
