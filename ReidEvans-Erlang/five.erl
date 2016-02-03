-module(five).
-export([solve/1,solveSmarter/1,solveSmartest/1]).

%  2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
%  What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

solve(Numbers) ->
  solve(1, Numbers).

solve(Guess, Numbers) ->
  case lists:all(
        fun(X) -> Guess rem X == 0 end,
        Numbers) of
      true -> Guess;
      false -> solve(Guess + 1, Numbers)
  end.

solveSmarter(Numbers) ->
  Guess = lists:max(Numbers),
  solveSmarter(Guess, Guess, Numbers).

solveSmarter(Guess, Increment, Numbers) ->
    case lists:all(
          fun(X) -> Guess rem X == 0 end,
          Numbers) of
        true -> Guess;
        false -> solveSmarter(Guess + Increment, Increment, Numbers)
    end.

factors(N) ->
  lists:filter(
    fun(X) -> N rem X == 0 end,
    lists:seq(1,N div 2)).

allFactorsOfRange(Range) ->
  allFactorsOfRange(Range, []).

allFactorsOfRange([], Acc) -> lists:usort(Acc);
allFactorsOfRange([H|T], Acc) ->
  allFactorsOfRange(T, factors(H) ++ Acc).

contains(X, List) ->
  case lists:any(fun(Y) -> Y == X end, List) of
    true -> false;
    false -> true
  end.

% remove any items that are factors of another
% item in the list and recurse over the smaller
% list iterating by the largest item in the list
solveSmartest(Numbers) ->
  Guess = lists:max(Numbers),
  Factors = allFactorsOfRange(Numbers),
  Primes = lists:filter(fun(X) -> contains(X, Factors) end, Numbers),
  solveSmartest(Guess, Guess, Primes).

solveSmartest(Guess, Increment, Numbers) ->
    case lists:all(
          fun(X) -> Guess rem X == 0 end,
          Numbers) of
        true -> Guess;
        false -> solveSmartest(Guess + Increment, Increment, Numbers)
    end.

% > five:solve(lists:seq(1,20)).
% 232792560
% 38 seconds

% > five:solveSmarter(lists:seq(1,20)).
% 232792560
% 3 seconds

% > five:solveSmartest(lists:seq(1,20)).
% 232792560
% 1.5 seconds
