//A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

//Find the largest palindrome made from the product of two 3-digit numbers.


//check if number is a palindrome
let isPalindrome num =
    let str = num.ToString()
    let arr = str.ToCharArray()
    str.ToCharArray() =  (arr |>  Array.rev )

//isPalindrome 4004

let palindromes l1 =
      l1
      |> Seq.filter (fun x -> isPalindrome x)
      |> Seq.max


//generate list
let li = seq {
  for i in 100..999 do
    for j in 100..999 do
      yield i*j
}

//check list for palindromes
palindromes li
