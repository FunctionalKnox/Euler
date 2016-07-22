{- By considering the terms in the Fibonacci sequence whose values do not exceed
 four million, find the sum of the even-valued terms. -}

isEven x = x `mod` 2 == 0 

fib max current next acc 
  | current > max = acc
  | otherwise = fib max next (current + next) (acc ++ [next])
    
solve x =
  sum $ filter isEven $ fib x 1 2 [1]

