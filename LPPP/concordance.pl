normalize([C1, C2| L1], [' '| L2]) :-
    memberchk(C1, [' ', '\t', '\n', '\r', '\f']),
    memberchk(C2, [' ', '\t', '\n', '\r', '\f']),
    !,
    normalize([C2| L1], [' '| L2]).

normalize([C1 | L1], [' '| L2]) :-
    memberchk(C1, [' ', '\t', '\n', '\r', '\f']),
    !,
    normalize(L1, L2).

normalize([C1| L1], [C1| L2]) :-
    \+ memberchk(C1, [' ', '\t', '\n', '\r', '\f']),
    !,
    normalize(L1,L2).
normalize([], []).

