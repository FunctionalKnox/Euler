-- if we list all the natural numbers below 10 that are multiples of 3 or 5,
-- we get 3, 5, 6 and 9. The sum of these multiples is 23.
-- Find the sum of all multiples of 3 or 5 below 1000.

multiple x
  | x `mod` 3 == 0 = x
  | x `mod` 5 == 0 = x
  | otherwise      = 0

solve :: Integer -> Integer
solve x =
  foldl (\p c -> p + multiple c) 0 [1..x-1]
