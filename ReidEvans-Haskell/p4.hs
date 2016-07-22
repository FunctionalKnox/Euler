{- A palindromic number reads the same both ways. 
   The largest palindrome made from the product of 
   two 2-digit numbers is 9009 = 91 × 99.
   Find the largest palindrome made from the 
   product of two 3-digit numbers.  -}

isPalindrome x = x == reverse x

tables x = (*) <$> [1..x] <*> [1..x]

solve = maximum . filter (isPalindrome . show) . tables

