/*
Q11. Represent a Map-Coloring problem as a CSP and
solve it using backtracking search.
*/

color(red).
color(green).
color(blue).

different(A, B) :-
    A \= B.

solve(A, B, C) :-
    color(A),
    color(B),
    color(C),
    different(A, B),
    different(A, C),
    different(B, C).

main :-
    solve(A, B, C),
    write('Region A: '), write(A), nl,
    write('Region B: '), write(B), nl,
    write('Region C: '), write(C), nl.