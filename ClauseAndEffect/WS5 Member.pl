member(X, [X|_]).
member(X, [_|T]) :- member(X, T).
mystery(X, A, B) :- member(X, A), member(X, B).