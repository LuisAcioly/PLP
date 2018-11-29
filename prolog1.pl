tamanho([], 0).
tamanho([X|C], T) :- tamanho(C, TC), T is TC+1.

separa([], [], []).
separa([H|C], [H|P], N,) :- H>=0, separa(C, P, N), !.
separa([H|C], P, [H|N]) :- H<0, separa(C, P, N), !.

segundo([H,O|T], O).
