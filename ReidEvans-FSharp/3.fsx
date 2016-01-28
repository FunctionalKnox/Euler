let factors (x:int64) =
    [2L..(x-1L)]
    |> Seq.filter (fun i -> x % i = 0L)

let isPrime x =
    x
    |> factors
    |> Seq.tryHead = None

let primeFactors x =
    x
    |> factors
    |> Seq.filter isPrime

let largestPrimeFactor x =
    x
    |> primeFactors
    |> Seq.max

isPrime 5L
isPrime 4L

factors 12L
primeFactors 12L

largestPrimeFactor 13195L = 29L

factors 600851475143L
largestPrimeFactor 600851475143L
