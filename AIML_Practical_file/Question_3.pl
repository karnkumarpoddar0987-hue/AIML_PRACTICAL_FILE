/*
Q3. Perform append, reverse, member search,
and list length operations.
*/

main :-
    append([1,2,3], [4,5,6], A),
    write('Append: '), write(A), nl,

    reverse([1,2,3,4], B),
    write('Reverse: '), write(B), nl,

    (member(2, [1,2,3]) ->
        write('Member Found')
    ;
        write('Member Not Found')
    ), nl,

    length([1,2,3,4], L),
    write('Length: '), write(L), nl.