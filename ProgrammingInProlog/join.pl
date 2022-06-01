append([], L, L).
append([X|L1], L2, [X|L3]) :- append(L1, L2, L3).

/*
    append([a,b,c], [d,e,f], [a,b,c,d,e,f]) -> true.

    The way the above code works is this. It will recursively call append, by essentially
    consuming L1 down to an empty list, where the target list L3 becomes L2, at this
    point L3 is [d, e, f]. Now as we come back from the recursive stack, the head 
    elements of L1 get appended to this list in order, like:

        [c] [d,e,f] => [c,d,e,f]
        [b] [c,d,e,f] => [b,c,d,e,f]
        [a] [b,c,d,e,f] => [a,b,c,d,e,f]
*/
