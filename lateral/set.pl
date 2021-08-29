% See original code at https://samples.jbpub.com/9780763772062/PrologLabBook09.pdf

wrapper(el,'https://josd.github.io/eye/lateral/ns#').

% facts
p(0,1).
p(0,2).
p(1,3).
p(2,4).

% test cases
case(wrapper(_NS,_P)).
% _S = {x | ∃y p(x,y)} = {0,1,2}.
case((findall(p(X,Y),p(X,Y),_F),setof(X,Y^p(X,Y),_S))).
% _S = {x | p(0,x)} = {1,2}.
case((findall(p(X,Y),p(X,Y),_F),setof(X,p(0,X),_S))).
% _S = {g(x,y) | ∃z (p(x,z) ∧ p(z,y))} = {g(0,3),g(0,4)}.
case((findall(p(X,Y),p(X,Y),_F),setof(g(X,Y),Z^(p(X,Z),p(Z,Y)),_S))).

test :-
    case(A),
    A,
    writeq(A),
    write('.\n'),
    fail.
test :-
    halt.
