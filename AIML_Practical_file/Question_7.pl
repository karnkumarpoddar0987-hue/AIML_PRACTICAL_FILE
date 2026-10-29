/*
Q7. Implement Greedy Best-First Search using a
heuristic function to find a path in a graph.
*/

edge(a, b).
edge(a, c).
edge(b, d).
edge(c, e).

heuristic(a, 4).
heuristic(b, 3).
heuristic(c, 1).
heuristic(d, 2).
heuristic(e, 0).

greedy(Start, Goal, Path) :-
    greedy_search([[Start]], Goal, RevPath),
    reverse(RevPath, Path).

greedy_search([[Goal|Rest]|_], Goal, [Goal|Rest]).

greedy_search([[Node|Path]|Queue], Goal, Result) :-
    findall(H-[Next,Node|Path],
        (edge(Node, Next),
         \+ member(Next, [Node|Path]),
         heuristic(Next, H)),
        Children),
    keysort(Children, Sorted),
    remove_values(Sorted, NewPaths),
    append(Queue, NewPaths, NewQueue),
    greedy_search(NewQueue, Goal, Result).

remove_values([], []).
remove_values([_-Path|T], [Path|R]) :-
    remove_values(T, R).

main :-
    greedy(a, e, Path),
    write('Path: '),
    write(Path), nl.