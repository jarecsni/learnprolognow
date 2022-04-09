% Map list of numbers to even numbers.

evens([], []).
evens([X|T], [X|L]) :- 0 is X mod 2, evens(T, L).
evens([X|T], L) :- 1 is X mod 2, evens(T, L).

censored(bother).
censored(blast).
censored(drat).
censored(fiddlestick).
prohibit(X) :- censored(X).
censor([], []).
censor([X|T], [X|L]) :- \+prohibit(X), censor(T, L).
censor([X|T], L) :- prohibit(X), censor(T, L).