let is3or5multiple (i: int) =
  i % 3 = 0 || i % 5 = 0

let x = [1..999]
        |> Seq.filter is3or5multiple
        |> Seq.reduce (fun p c -> p + c)
printfn "Print an integer like this %d" x
