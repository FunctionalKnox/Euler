let input = [1 .. 999]

let isMultipleOf3 x = x % 3 = 0
let isMultipleOf5 x = x % 5 = 0
let isValidNum x = isMultipleOf3 x || isMultipleOf5 x

input |> List.filter(fun x -> isValidNum x) |> List.sum |> printfn "%i"

