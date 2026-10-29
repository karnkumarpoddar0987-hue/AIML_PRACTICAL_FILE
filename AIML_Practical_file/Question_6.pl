/*
Q6. Implement Breadth-First Search (BFS) to find
the shortest path in a graph.
*/

edge(a, b).
edge(a, c).
edge(b, d).
edge(b, e).
edge(c, f).

connected(X, Y) :- edge(X, Y).
connected(X, Y) :- edge(Y, X).

bfs(Goal, [[Goal|Rest]|_], Path) :-
    reverse([Goal|Rest], Path).

bfs(Goal, [Path|Queue], Result) :-
    Path = [Node|_],
    findall([Next|Path],
        (connected(Node, Next),
         \+ member(Next, Path)),
        NewPaths),
    append(Queue, NewPaths, NewQueue),
    bfs(Goal, NewQueue, Result).

shortest_path(Start, Goal, Path) :-
    bfs(Goal, [[Start]], Path).

main :-
    shortest_path(a, f, Path),
    write('Shortest Path: '),
    write(Path), nl.