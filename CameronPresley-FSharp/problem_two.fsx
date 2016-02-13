let fib = Seq.unfold (fun (first,second) ->
    if (second > 4000000) then None
    else Some(first + second, (second, first + second))) (1,1)

fib |> Seq.filter(fun x -> x % 2 = 0) |> Seq.sum |> printfn "%A"
