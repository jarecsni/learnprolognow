numeral(0).
numeral(succ(X)) :- numeral(X).

% X = succ(succ(succ(0))).
% Y = succ(succ(0)). % X1
% result, Z = X1 + Y is succ(succ(succ(succ(0))))
% Z can be calculated by adding 1 succ to Z

add(0, Y, Y).
add(succ(X), Y, succ(Z)) :- add(X, Y, Z).
