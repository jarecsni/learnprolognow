a(g, h).
a(d, a).
a(g, d).
a(e, d).
a(h, f).
a(e, f).
a(a, e).
a(a, b).
a(b, f).
a(b, c).
a(f, c).

% - this solution from WS4 loops indefinitely and blows the stack
%path(X, X).
%path(X, Y) :- a(X, Z), path(Z, Y).

% - this one resolves goals indefinitely (doesnt blow the stack)
%path(X, Y) :- a(X, Y).
%path(X, Y) :- a(X, Z), path(Z, Y).

% path(X, X, T) :- write(T).
% path(X, Y, T) :- a(X, Z), legal(Z, T), path(Z, Y, [Z|T]).
% legal(_, []).
% legal(Z, [H|T]) :- Z \== H, legal(Z, T).

% using the member predicate
path(X, X, T) :- write(T).
path(X, Y, T) :- a(X, Z), \+member(Z, T), path(Z, Y, [Z|T]).
