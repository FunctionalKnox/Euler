-module(four).
-compile(export_all).

% A palindromic number reads the same both ways.
% The largest palindrome made from the product of two
% 2-digit numbers is 9009 = 91 × 99.
% Find the largest palindrome made from the product of two 3-digit numbers.

isPalindrome(Number) ->
  List = integer_to_list(Number),
  List =:= lists:reverse(List).

multiplicationTable(N) ->
  List = lists:seq(1,N),
  lists:usort(
    lists:foldl(
      fun (X, AccIn) ->
        AccIn ++ lists:map(fun(Y) -> X*Y end, List)
      end,
      [],
      List
    )
  ).

firstPalindrome([]) -> 0;
firstPalindrome([H|T]) ->
  case isPalindrome(H) of
    true -> H;
    false -> firstPalindrome(T)
  end.

solve(N) ->
  firstPalindrome(
    lists:reverse(
      multiplicationTable(N))).

% solve(999).
% 906609
