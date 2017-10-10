module Euler3 where

{- The prime factors of 13195 are 5, 7, 13 and 29.
   What is the largest prime factor of the number 600851475143 ?  -}

isqrt = floor . sqrt  . fromIntegral

isFactor :: Int -> Int -> Bool
isFactor x y = x `mod` y == 0

factors :: Int -> [Int]
factors x = filter (isFactor x) [2..(isqrt x)]

isPrime :: Int -> Bool
isPrime = null . factors 

largestPrimeFactor = last . filter isPrime . factors
