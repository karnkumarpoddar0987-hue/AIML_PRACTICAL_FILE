/*
Q10. Solve an optimization problem using Simulated
Annealing to escape local optima.
*/

:- use_module(library(random)).

value(X, V) :-
    V is -((X - 5) * (X - 5)) + 25.

anneal(X, T, Best) :-
    T > 1,
    random_member(D, [-1, 1]),
    Y is X + D,
    value(X, VX),
    value(Y, VY),
    (VY > VX ->
        X1 = Y
    ;
        X1 = X
    ),
    T1 is T * 0.9,
    anneal(X1, T1, Best).

anneal(X, _, X).

main :-
    anneal(0, 100, X),
    value(X, V),
    write('Best Value of X: '), write(X), nl,
    write('Maximum Value: '), write(V), nl.