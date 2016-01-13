[1..1000] |> Seq.iter(fun x ->
  match x with
  | i when i % 3 = 0 && i %5 = 0 -> printfn "fizzbuzz"
  | i when i % 3 = 0 -> printfn "fizz"
  | i when i % 5 = 0 -> printfn "buzz"
  | i -> printfn "%i" i)
