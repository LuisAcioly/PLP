duplica([], []).
duplica([X|C], [X,X|D]) :- duplica(C,D).

igual([], []) :- true.
igual([X|C], [Y|D]):- X == Y, igual(C, D). 

tamanho([], 0).
tamanho([X|C], T) :- tamanho(C, TC), T is TC+1.

separa([], [], []).
separa([H|C], [H|P], N,) :- H>=0, separa(C, P, N), !.
separa([H|C], P, [H|N]) :- H<0, separa(C, P, N), !.

segundo([H,O|T], O).
