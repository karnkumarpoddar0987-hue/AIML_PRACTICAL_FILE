/*
Q2. Implement arithmetic operations, Factorial,
and Fibonacci Series using recursion.
*/

factorial(0, 1).
factorial(N, F) :-
    N > 0,
    N1 is N - 1,
    factorial(N1, F1),
    F is N * F1.

fib(0, 0).
fib(1, 1).
fib(N, F) :-
    N > 1,
    N1 is N - 1,
    N2 is N - 2,
    fib(N1, F1),
    fib(N2, F2),
    F is F1 + F2.

main :-
    A is 10 + 5,
    B is 10 - 5,
    C is 10 * 5,
    D is 10 / 5,
    write(A), nl,
    write(B), nl,
    write(C), nl,
    write(D), nl,
    factorial(5, F),
    write(F), nl,
    fib(6, R),
    write(R), nl.