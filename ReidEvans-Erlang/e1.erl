-module(e1).
-export([solveRecursive/0,solve/0]).

% If we list all the natural numbers below 10 that are multiples of 3
% or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
% Find the sum of all the multiples of 3 or 5 below 1000.

%Solve using recursion
solveRecursive() -> sumMultiples(lists:seq(1,999)).

sumMultiples(L) -> sumMultiples(L,0).

sumMultiples([], Acc) -> Acc;
sumMultiples([H|T], Acc) when (H rem 3 =:= 0) or (H rem 5 =:= 0) ->
  sumMultiples(T, Acc + H);
sumMultiples([_|T],Acc) -> sumMultiples(T, Acc).

%Solve using lists module
solve() ->
	lists:sum(
		lists:filter(
			fun(Elem) -> (Elem rem 3 == 0) or (Elem rem 5 == 0) end,
			lists:seq(1,999)
		)
	).
