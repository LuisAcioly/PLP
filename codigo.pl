duplica([], []).
duplica([X|C], [X,X|D]) :- duplica(C,D).

igual([], []) :- true.
igual([X|C], [Y|D]):- X == Y, igual(C, D). 
