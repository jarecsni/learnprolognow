herd([], [], []).
herd([sheep|T], [sheep|S], G) :- herd(T, S, G), !.
herd([goat|T], S, [goat|G]) :- herd(T, S, G), !.
herd([_|T], S, G) :- herd(T, S, G).

% again, because of the more 'permissive' rule #4 you need to apply cuts.