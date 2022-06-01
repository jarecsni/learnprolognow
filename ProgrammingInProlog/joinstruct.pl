basicpart(rim).
basicpart(spoke).
basicpart(rearframe).
basicpart(handles).
basicpart(gears).
basicpart(bolt).
basicpart(nut).
basicpart(fork).

assembly(bike, [wheel, wheel, frame]).
assembly(wheel, [spoke, rim, hub]).
assembly(frame, [rearframe, frontframe]).
assembly(frontframe, [fork, handles]).
assembly(hub, [gears, axle]).
assembly(axle, [bolt, nut]).

/*
    If first arg is a basicpart, then we return it (in 2nd arg) as a list ([X]).
*/
partsof(X, [X]) :- basicpart(X).

/*
    If first arg is part of an assembly (first clause), then we need to examine
    the list of parts in that assembly in a recursive way (partsoflist) adding to 
    the resulting Assembly all the subparts 
*/
partsof(Part, Assembly) :- assembly(Part, SubParts), partsoflist(SubParts, Assembly).

/*
    This is beautiful: traverse the list, by calling recursively the partsoflist on 
    the ever diminishing tail, while also working out the parts of the head (which itself
    might result in further recursive calls if P is an assembly), gluing together head parts
    with the tailparts. 
*/
partsoflist([], []).
partsoflist([P|Tail], Total) :-
    partsof(P, HeadParts),
    partsoflist(Tail, TailParts),
    append(HeadParts, TailParts, Total).