-module(e3).
-compile(export_all).


% The prime factors of 13195 are 5, 7, 13 and 29.
% What is the largest prime factor of the number 600851475143 ?
factors(N) ->
  lists:filter(
    fun (X) -> (X > 1) and (N rem X == 0) end,
    lists:reverse(lists:seq(1,N div 2))
  ).

is_prime(N) ->
  case factors(N) of
    [] -> true;
    _ -> false
  end.

largest_prime_factor(N) ->
  largest_prime_factor(
    N,
    factors(N)
  ).

largest_prime_factor(N, [H|T]) when N rem H == 0 ->
  case is_prime(H) of
    true -> H;
    false -> largest_prime_factor(N, T)
  end;
largest_prime_factor(N,[_|T]) -> largest_prime_factor(N,T).
