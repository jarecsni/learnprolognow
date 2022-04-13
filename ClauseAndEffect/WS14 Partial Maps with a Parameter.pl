%reduce(InputList, Term, OutputList)

% stop recursion when list is consumed
reduce([], _, []).
% If next element unifies with Term, it is not included 
reduce([Term|InputListTail], Term, OutputList) :- reduce(InputListTail, Term, OutputList), !.
% If the next element does not unify with the Term, include it.
reduce([Head|InputListTail], Term, [Head|OutputList]) :- reduce(InputListTail, Term, OutputList).

/*
    why:
    reduce([a,b,c],a,X)
    yields:
    X=[b,c] AND
    X=[a,b,c]

    The reason is backtracking. When it backtracks, the third rule is also
    a match, so it will incorrectly include the wrong solutions too.

    The solution is to include the cut.
*/