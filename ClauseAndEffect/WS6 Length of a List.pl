len([], 0).
len([_|T], N) :- len(T, Nt), N is Nt + 1.

sum([], 0).
sum([H|T], S) :- sum(T, St), S is St + H.
