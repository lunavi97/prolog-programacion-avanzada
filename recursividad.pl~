gauss(1, 1) :- !.
gauss(N, Y) :-
    N > 1,
    N1 is N - 1,
    gauss(N1, Y1),
    Y is N + Y1.

fibonacci(N, Y) :- (N == 0; N == 1), Y is N, !.
fibonacci(N, Y) :-
    N > 1,
    N1 is N - 1, N2 is N - 2,
    fibonacci(N1, Y1), fibonacci(N2, Y2),
    Y is Y1 + Y2.
