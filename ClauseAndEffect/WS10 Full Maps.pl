sqlist([], []).
sqlist([X|T], [Y|L]) :- Y is X * X, sqlist(T, L).

sqterm([], []).
sqterm([X|T], [s(X,Y)|L]) :- Y is X * X, sqterm(T, L).

fullmap([], []).
fullmap([X|T], [Y|L]) :- word(X, Y), fullmap(T, L).

word(the, 17).
word(cat, 23).
word(sits, 46).
word(on, 9).
word(mat, 2).

% query:
% fullmap([the, cat, sits, on, the, mat], X).