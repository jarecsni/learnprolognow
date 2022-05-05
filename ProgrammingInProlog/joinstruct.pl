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

partsof(X, [X]) :- basicpart(X).
partsof(Part, Assembly) :- assembly(Part, SubParts), partsoflist(SubParts, Assembly).
partsoflist([], []).
partsoflist([P|Tail], Total) :-
    partsof(P, HeadParts),
    partsoflist(Tail, TailParts),
    append(HeadParts, TailParts, Total).