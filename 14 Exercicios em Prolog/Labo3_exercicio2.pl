pai(joao,hugo).
pai(hugo,oscar).
pai(hugo,cesar).
pai(oscar,maria).
irmaos(X,Y) :- pai(Z,X), pai(Z,Y).
