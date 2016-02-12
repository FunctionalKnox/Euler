-module(e3).
-compile(export_all).


% The prime factors of 13195 are 5, 7, 13 and 29.
% What is the largest prime factor of the number 600851475143 ?

divisors(N) ->
  lists:filter(
    fun (X) -> (X rem 2 /= 0) or (X == 2) end,
    lists:seq(2, trunc(math:sqrt(N)))
    ).

is_prime(N) ->
  lists:all(
    fun (X) -> N rem X /= 0 end,
    divisors(N)
  ).

first(N, [H|T]) ->
  case (N rem H == 0) and is_prime(H) of
    true -> H;
    false -> first(N, T)
  end.

largest_prime_factor(N) ->
  first(
    N,
    lists:reverse(
      divisors(N)
    )
  ).

solve() -> largest_prime_factor(600851475143).

% e3:solve().
% 6857
% 15 seconds
