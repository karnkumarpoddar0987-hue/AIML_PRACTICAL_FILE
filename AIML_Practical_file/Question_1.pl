/*
Q1. Create a simple Knowledge Base
using facts, predicates, clauses, and goals.
*/

student(karn).
student(rahul).
student(aman).

studies(karn, python).
studies(karn, ai).
studies(rahul, java).
studies(aman, ai).

% Goal: ?- studies(karn, ai).

main :-
    student(X),
    write(X), nl,
    fail.
main.