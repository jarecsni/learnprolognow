sqlist([], []).
sqlist([X|T], [Y|L]) :- Y is X * X, sqlist(T, L).

sqterm([], []).
sqterm([X|T],[s(X,Y)|L]) :- Y is X * X, sqterm(T, L).