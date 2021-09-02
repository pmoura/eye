% See https://en.wikipedia.org/wiki/Four_color_theorem

:- use_module(library(lists)).

webize(el/1,'https://josd.github.io/eye/thinking/ns#').

el(colors('./color.pl',Places)) :-
    findall(Place-_,el(neighbours(Place,_)),Places),
    places(Places).

places([]).
places([Place-Color|Tail]) :-
    places(Tail),
    el(neighbours(Place,Neighbours)),
    member(Color,[el(c1),el(c2),el(c3),el(c4)]),
    \+ (member(Neighbour-Color,Tail),member(Neighbour,Neighbours)),
    !.

% test data
el(neighbours(el(p1),[el(p2),el(p5),el(p4),el(p3)])).
el(neighbours(el(p2),[el(p1),el(p4),el(p3)])).
el(neighbours(el(p3),[el(p5),el(p1),el(p4),el(p2)])).
el(neighbours(el(p4),[el(p1),el(p2),el(p3)])).
el(neighbours(el(p5),[el(p1),el(p3)])).

% test cases
case(webize(_NS,_P)).
case(el(colors(_SCOPE,_PLACES))).

test :-
    case(A),
    A,
    writeq(A),
    write('.\n'),
    fail.
test :-
    halt.