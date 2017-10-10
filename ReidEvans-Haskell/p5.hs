module Euler5 where
{-
  2520 is the smallest number that can be divided by each of
  the numbers from 1 to 10 without any remainder.

  What is the smallest positive number that is evenly
  divisible by all of the numbers from 1 to 20?
-}

isMultiple n x = n `mod` x == 0

solveHelper list max x = 
  case all (isMultiple x) list of
    True -> x
    False -> solveHelper list max (max + x)

solve x =
  solveHelper [2..x] x x


pro :: Int
pro = foldr1 lcm [1..20]
