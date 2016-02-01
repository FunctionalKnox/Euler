-module(five).
-export([solve/1]).

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

% > c(five).
% > five:solve(lists:seq(1,10)).
% 2520
% > five:solve(lists:seq(1,20)).
% 232792560
