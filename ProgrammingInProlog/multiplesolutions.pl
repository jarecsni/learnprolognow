father(mary, george).
father(john, george).
father(sue, harry).
father(george, edward).

% father(_, X) will show duplicates for 'george'

child(X, Y) :- father(Y, X).

possible_pair(X, Y) :- boy(X), girl(Y).
boy(john).
boy(marmaduke).
boy(bertram).
boy(charles).
girl(griselda).
girl(ermintrude).
girl(brunhilde).

