:- dynamic(loves/2).

loves(romeo, juliet).
loves(juliet, romeo) :- loves(romeo, juliet).

male(joe).
male(bob).
male(johnny).

female(lisa).
female(julia).
female(nicole).

parent(albert, bob).
parent(albert, betsy).
parent(albert, bill).
parent(alice, bob).
parent(alice, betsy).
parent(alice, bill).
parent(bob, carl).
parent(bob, charlie).

get_grand_children_of_albert :-
    parent(albert, X),
    parent(X, Y),
    write('Alberts grandchild is '),
    write(Y), nl.

get_grandparent :-
    parent(X, carl),
    parent(X, charlie),
    format('~w ~s grandparent ~n', [X, "is the"]).

grand_parent(X, Y) :- % Y is a grandparent of X given
    parent(Z, X), % there exist a Z parent for X
    parent(Y, Z). % for whome Y is a parent

warm_blooded(penguin).
warm_blooded(human).
produce_milk(penguin).
produce_milk(human).
have_feathers(penguin).
have_hair(human).
mammal(X) :-
    warm_blooded(X),
    produce_milk(X),
    have_hair(X).


related(X, Y) :-
    parent(X, Y).

related(X, Y) :-
    parent(X, Z),
    related(Z, Y).

say_hi :- 
    write('What is your name? '),
    read(X),
    write('Hi '),
    write(X).

count_to_10(10) :- write(10), nl.
count_to_10(X) :-
    write(X), nl,
    Y is X + 1,
    count_to_10(Y).
