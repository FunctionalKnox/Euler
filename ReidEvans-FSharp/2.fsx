let evenFibonacciSum max =

  let rec fib max list current =
    if current > max
    then list
    else
      match list with
      | h::t -> let next = h + current
                fib max (current::list) next
      | [] -> [1]

  fib max [1] 2
  |> Seq.filter (fun x -> x % 2 = 0)
  |> Seq.sum
