% if this fact is moved after the rule, islist(X) will cause stack overflow
islist([]).
islist([A|B]) :- islist(B).

weak_islist([]).
weak_islist([_|_]).