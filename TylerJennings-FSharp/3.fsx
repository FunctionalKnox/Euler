//The prime factors of 13195 are 5, 7, 13 and 29.

//What is the largest prime factor of the number 600851475143 ?

//Mine
let factors (number:int64) = seq {
    for (divisor:int64) in 2L .. (float >> sqrt >> int64) number do
    if number % divisor = 0L then
        yield divisor
        yield number / divisor
}

let x = factors 600851475143L
        |> Seq.max
        |> (fun y -> printfn "%d" y)



//http://stefanoricciardi.com/2010/07/01/project-euler-problem-3-in-f/
let is_prime x =
    let rec check i =
        double i > sqrt (double x) || (x % i <> 0L && check (i + 1L))
    check 2L

let big_number_factors n =
    let factors = seq {
        let limit = n / 2L
        for i in 2L .. limit do
            if n % i = 0L && is_prime i then yield i }
    Seq.max factors
