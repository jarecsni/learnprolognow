max([], A, A).
max([H|T], A, M) :- H > A, max(T, H, M).
max([H|T], A, M) :- H =< A, max(T, A, M).
maxi([H|T], M) :- max(T, H, M).

min([], A, A).
min([H|T], A, M) :- H < A, min(T, H, M).
min([H|T], A, M) :- H >= A, min(T, A, M).
mini([H|T], M) :- min(T, H, M).

minmax(Arr, Min, Max) :- mini(Arr, Min), maxi(Arr, Max).