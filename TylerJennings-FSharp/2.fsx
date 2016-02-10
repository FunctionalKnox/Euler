//Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
//1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
//By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

let rec fibList  a b =
  if a + b < 4000000 then
    let current = a + b
    let rest = fibList b current
    current :: rest
  else
    []

//get list of even numbers from fibList
let fibs = 1::2::(fibList 1 2)
          |> Seq.filter (fun i -> i % 2 = 0)


//add all numbers from fibs
let sum = Seq.sum fibs
//write output
printf "%d" sum
