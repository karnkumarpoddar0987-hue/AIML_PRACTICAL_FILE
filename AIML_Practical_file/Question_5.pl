/*
Q5. Classify students as topper, average, and fail
using rule-based reasoning.
*/

marks(karn, 90).
marks(rahul, 65).
marks(aman, 30).

result(Name, topper) :-
    marks(Name, M),
    M >= 80.

result(Name, average) :-
    marks(Name, M),
    M >= 40,
    M < 80.

result(Name, fail) :-
    marks(Name, M),
    M < 40.

main :-
    result(Name, Result),
    write('Student: '), write(Name),
    write(' - Result: '), write(Result), nl,
    fail.
main.