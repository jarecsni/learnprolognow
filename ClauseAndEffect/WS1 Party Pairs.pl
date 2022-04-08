male(bertram).
male(percival).
female(lucinda).
female(camilla).

pair(X, Y) :- male(X), female(Y).
pair(X, Y) :- female(X), male(Y).