-module (e6).
-compile(export_all).



% The sum of the squares of the first ten natural numbers is,
% 12 + 22 + ... + 102 = 385

% The square of the sum of the first ten natural numbers is,
% (1 + 2 + ... + 10)2 = 552 = 3025

% Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

% Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

sum_of_squares(Start, End) ->
  lists:sum(
    lists:map(
      fun(X) -> math:pow(X, 2) end,
      lists:seq(Start, End)
    )
  ).

square_of_sums(Start, End) ->
  math:pow(
    lists:sum(
      lists:seq(Start, End)
    ),
    2
  ).

solve() ->
  square_of_sums(1,100) - sum_of_squares(1, 100).
