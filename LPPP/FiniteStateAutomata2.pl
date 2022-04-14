start(q0).
final(q2).
transition(q0, a, q1).
transition(q1, b, q1).
transition(q1, c, q2).
epsilon(q1, q2).
accept(Symbols) :- start(StartState), accept(Symbols, StartState).
accept([], State) :- final(State).
accept([Symbol|Symbols], State) :- 
    transition(State, Symbol, NextState),
    accept(Symbols, NextState).
accept(Symbols, State) :- 
    epsilon(State, NextState),
    accept(Symbols, NextState).