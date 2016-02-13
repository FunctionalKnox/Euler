//A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

//Find the largest palindrome made from the product of two 3-digit numbers.


//check if number is a palindrome
let isPalindrome num =
    let str = num.ToString()
    let arr = str.ToCharArray()
    str.ToCharArray() =  (arr |>  Array.rev )

//isPalindrome 4004


//getting error
let palindromes l1 n1 =
      l1
      |> List.map (fun x -> x * n1)
      |> List.filter (fun x -> isPalindrome x)
      |> Seq.max


[100..999]
|> List.map (fun x -> palindromes [100..999] x)
