:- initialization(main).

main :-
    area([[4,3],[6,2],[7,6],[4,6],[5,5],[5,3],[4,3]], Area),
    writeln(Area),
    halt.

area([_], 0).
area([[A,B],[C,D]|E], F) :-
    area([[C,D]|E], G),
    F is (A*D-B*C)/2+G.
