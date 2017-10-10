module Euler7 where

{-
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
What is the 10 001st prime number?
-}

isqrt = floor . sqrt  . fromIntegral

isPrime :: Int -> Bool
isPrime x = not $ any (\y -> x `mod` y == 0) [2..isqrt(x)]  

solve x = last $ take x $ filter isPrime [2..]
