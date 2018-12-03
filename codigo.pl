duplica([], []).
duplica([X|C], [X,X|D]) :- duplica(C,D).

igual([], []) :- true.
igual([X|C], [Y|D]):- X == Y, igual(C, D). 

tamanho([], 0).
tamanho([_|C], T) :- tamanho(C, TC), T is TC+1.

separa([], [], []).
separa([H|C], [H|P], N) :- H>=0, separa(C, P, N), !.
separa([H|C], P, [H|N]) :- H<0, separa(C, P, N), !.

segundo([_,O|_], O).

ultimo([X], X):- !.
ultimo([_|C], Y):- ultimo(C, Y).

soma([], 0).
soma([X|T], S):- soma(T, ST), S is ST+X.

fatorial(0, 1) :- !. 
fatorial(N, F) :- N > 0 ,M is N - 1, fatorial(M, F1), F is F1*N.

contiguo([]):- false, !.
contiguo([X,X|_]):- true, !.
contiguo([_|T]):- contiguo(T).

particiona([], L1, L2).
particona([X], [L1|X], L2).
particona([X,Y], [L1|X], [L2|Y]).
particiona([X,Y,Z], [L1|X,Z], [L2|Y]).
particiona([X,Y|T], L1, L2):- particiona(T, [L1|X], [L2|Y]).
