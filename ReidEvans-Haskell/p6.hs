module Euler6 where

{-
The sum of the squares of the first ten natural numbers is,
	1² + 2² + ... + 10² = 385

The square of the sum of the first ten natural numbers is,
	(1 + 2 + ... + 10)² = 552 = 3025

Hence the difference between the sum of the squares of the first ten 
natural numbers and the square of the sum is 3025 − 385 = 2640.

Find the difference between the sum of the squares of the first one 
hundred natural numbers and the square of the sum.
-}

sumOfSquares :: Int -> Int
sumOfSquares x = sum $ map (^2) $ [1..x]

squareOfSums :: Int -> Int
squareOfSums x = (^2) $ sum [1..x]

solve :: Int -> Int
solve x = squareOfSums x - sumOfSquares x



