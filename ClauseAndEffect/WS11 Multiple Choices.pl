squint([], []).
squint([X|T], [Y|L]) :- integer(X), Y is X * X, squint(T, L).
squint([X|T], [_|L]) :- \+ integer(X), squint(T, L).

% if there's no test of \+ integer in the third predicate, it will
% yield more 'solutions'