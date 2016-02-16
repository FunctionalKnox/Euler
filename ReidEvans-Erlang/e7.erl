-module (e7).
-compile(export_all).

% By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

% What is the 10 001st prime number?

solve(N) -> solve(3, N - 1, [2]).

solve(_,0, Acc) -> lists:max(Acc);
solve(I, N, Acc) ->
  case lists:all(
    fun (X) -> I rem X /= 0 end,
    Acc
  ) of
    true -> solve(I + 2, N - 1, [I|Acc]);
    false -> solve(I + 2, N, Acc)
  end.

% solve(10001). 
% 104743
