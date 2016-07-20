let factors n =
    [1..(n/2)]
    |> List.filter (fun x -> n % x = 0)

let rec allFactorsOfRange range acc =
    match range with
    | [] -> acc |> List.distinct |> List.sort
    | h::t ->
        let hFactors = factors h
        allFactorsOfRange t (List.concat [hFactors; acc])

let rec solveSmarter guess increment numbers =
    if numbers |> List.forall (fun x -> guess % x = 0)
    then guess
    else solveSmarter (guess + increment) increment numbers

let solve numbers =
    let guess = numbers |> List.max
    let factors = allFactorsOfRange numbers []
    let primes = numbers |> List.filter (fun x -> factors |> List.contains x |> not)
    solveSmarter guess guess primes

solve [1..20]