setify([],[]).
setify([X|T], L) :- member(X, T), setify(T, L), !.
setify([X|T], [X|L]) :- setify(T, L).

% goal 3 will not match if the two lists begin with different atoms
% without the cut, the duplicates will be also generated (by backtracking and matching rule #3)

copy([], []).
copy([X|T], [X|L]) :- copy(T, L).
