progenitor(maria, jose).
progenitor(joao, jose).
progenitor(joao, ana).
progenitor(jose, julia).
progenitor(jose, iris).
progenitor(iris, jorge).

masculino(joao).
masculino(jose).
masculino(jorge).

feminino(maria).
feminino(julia).
feminino(ana).
feminino(iris).

filho(X,Y):-progenitor(Y,X).
pai(X,Y):-progenitor(X,Y),masculino(X).
mae(X,Y):-progenitor(X,Y),feminino(X).
avo(X,Y):-progenitor(X,Z),
    progenitor(Z,Y),
    masculino(X).
avvo(X,Y):-progenitor(X,Z),
    progenitor(Z,Y),
    feminino(X).
irma(X,Y):-progenitor(Z,X),
    progenitor(Z,Y),
    feminino(X),
    feminino(Y),
    X\==Y.

