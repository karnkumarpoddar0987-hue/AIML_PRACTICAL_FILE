/*
Q12. Solve the N-Queens problem using backtracking
to satisfy CSP constraints.
*/

safe(_, []).
safe(X, [Y|Rest]) :-
    X =\= Y,
    abs(X - Y) =\= 1,
    safe(X, Rest).

queens(0, []).
queens(N, [Q|Rest]) :-
    N > 0,
    N1 is N - 1,
    queens(N1, Rest),
    between(1, 4, Q),
    safe(Q, Rest).

main :-
    queens(4, Board),
    write('N-Queens Solution: '),
    write(Board), nl.