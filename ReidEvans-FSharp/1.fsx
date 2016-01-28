[1..999]
|> Seq.reduce (fun acc n ->
    if n % 3 = 0 || n % 5 = 0
    then acc + n
    else acc)
