% using an accumulator
% the length of the list L when added to accumulator A is the number N
listlen(L, N) :- lenacc(L, 0, N).
lenacc([], A, A).
lenacc([H|T], A, N) :- A1 is A + 1, lenacc(T, A1, N).