module Euler2 where
{- By considering the terms in the Fibonacci sequence whose values do not exceed
 four million, find the sum of the even-valued terms. -}

fibs :: [Integer]
fibs = 1 : 1 : zipWith (+) fibs (tail fibs)

solve :: Integer -> Integer
solve x = sum $ filter even $ takeWhile (<= x) fibs

