setify([],[]).
setify([X|T], L) :- member(X, T), setify(T, L).
setify([X|T], [X|L]) :- setify(T, L).

% goal 3 will not match if the two lists begin with different atoms