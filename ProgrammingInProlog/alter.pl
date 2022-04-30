change(you, i).
change(are, [am, not]).
change(french, german).
change(do, no).
change(X, X).

alter([], []).
alter([H|T], [HH|TT]) :- change(H, HH), !, alter(T, TT), write([HH|TT]).

% alter([you, are, a, computer])
 
% note the use of cut in the above rule, without it the catch-all change(X,X) will also unify
