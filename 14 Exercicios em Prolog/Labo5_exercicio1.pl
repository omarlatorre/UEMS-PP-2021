member(X,[X|_]).
member(X,[_|Y]) :- member(X,Y).

appendd([],L,L).
appendd([X|L1],L2,[X|L3]) :- appendd(L1,L2,L3).

lenacc([ ], A, A).
lenacc([H|T], A, N) :- A1 is A + 1, lenacc(T, A1, N).
listlenacc(L, N) :- lenacc(L, 0, N).

rev(L1, L3) :- revacc(L1, [ ], L3).
revacc([ ], L3, L3).
revacc([H|L1], L2, L3) :- revacc(L1, [H|L2], L3).
