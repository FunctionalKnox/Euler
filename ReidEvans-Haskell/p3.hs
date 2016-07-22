{- The prime factors of 13195 are 5, 7, 13 and 29.
   What is the largest prime factor of the number 600851475143 ?  -}

isqrt = floor . sqrt . fromIntegral

factors :: Integer -> [Integer]
factors x =
  filter (\y -> x `mod` y == 0) [2..(isqrt x)]

isPrime :: Integer -> Bool
isPrime x 
  | x `mod` 2 == 0 = False
  | otherwise = null (factors x)

largestPrimeFactor :: Integer -> Integer
largestPrimeFactor = last . filter isPrime . factors
