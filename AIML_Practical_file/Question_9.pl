/*
Q9. Implement Hill Climbing for optimization problems.
*/

value(X, V) :-
    V is -((X - 5) * (X - 5)) + 25.

climb(X, Best) :-
    X1 is X + 1,
    X2 is X - 1,
    value(X, V),
    value(X1, V1),
    value(X2, V2),
    (V1 > V ->
        climb(X1, Best)
    ; V2 > V ->
        climb(X2, Best)
    ; Best = X
    ).

main :-
    climb(0, X),
    value(X, V),
    write('Best Value of X: '), write(X), nl,
    write('Maximum Value: '), write(V), nl.