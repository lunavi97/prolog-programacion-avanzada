mcd(A, 0, A) :- !.
mcd(A, B, Y) :-
    A1 is B, B1 is A mod B,
    mcd(A1, B1, Y).
