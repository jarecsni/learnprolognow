/*
    father(X, Y)
    mother(X, Y)
    male(X)
    female(X)
    parent(X, Y)
    diff(X, Y)

    is_mother(X) :- mother(X, Y)
    is_father(X) :- father(X, Y)
    is_son(X) :- male(X), parent(P, X)
    sister_of(X, Y) :- female(X), parent(P, X), parent(P, Y)
    grandpa_of(X, Y) :- parent(X, P), parent(P, Y)
    sibling(X, Y) :- parent(P, X), parent(P, Y) 
*/