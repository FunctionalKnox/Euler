-module(e3).
-compile(export_all).


% The prime factors of 13195 are 5, 7, 13 and 29.
% What is the largest prime factor of the number 600851475143 ?

divisors(N) ->
  lists:filter(
    fun (X) -> (X rem 2 /= 0) or (X == 2) end,
    lists:seq(2, trunc(math:sqrt(N)))
    ).





%found on internet. added incrementer. crazy fast
solve() ->
  solve(600851475143, 2, 2, 0).

solve(Number, Factor, Max, I) when Factor > Number ->
  { Max, I };

solve(Number, Factor, _, I) when (Number rem Factor) == 0 ->
  solve(trunc(Number / Factor), Factor, Factor, I + 1);

solve(Number, Factor, Max, I) ->
  solve(Number, Factor + 1, Max, I + 1).
