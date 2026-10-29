/*
Q8. Implement the A* Search algorithm to find the
optimal path using path cost and heuristic estimate.
*/

edge(a, b, 1).
edge(a, c, 4).
edge(b, d, 2).
edge(c, d, 1).

heuristic(a, 3).
heuristic(b, 2).
heuristic(c, 1).
heuristic(d, 0).

astar(Start, Goal, Path, Cost) :-
    search([[0, 0, Start, [Start]]], Goal, Path, Cost).

search([[_, Cost, Goal, Path]|_], Goal, Path, Cost).

search([[_, Cost, Node, Path]|Rest], Goal, Result, FinalCost) :-
    findall([F, NewCost, Next, [Next|Path]],
        (edge(Node, Next, W),
         \+ member(Next, Path),
         NewCost is Cost + W,
         heuristic(Next, H),
         F is NewCost + H),
        Children),
    append(Rest, Children, All),
    sort(All, Sorted),
    search(Sorted, Goal, Result, FinalCost).

main :-
    astar(a, d, RevPath, Cost),
    reverse(RevPath, Path),
    write('Optimal Path: '), write(Path), nl,
    write('Path Cost: '), write(Cost), nl.