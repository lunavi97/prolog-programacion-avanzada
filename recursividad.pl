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

factorial(0, 1) :- !.
factorial(N, Y) :-
    N > 0,
    N1 is N - 1,
    factorial(N1, Y1),
    Y is N * Y1.

producto_sumas_sucesivas(0, _, 0) :- !.
producto_sumas_sucesivas(_, 0, 0) :- !.
producto_sumas_sucesivas(X, Y, P) :-
    Y > 0,
    Y1 is Y - 1,
    producto_sumas_sucesivas(X, Y1, P1),
    P is X + P1, !.
producto_sumas_sucesivas(X, Y, P) :-
    X > 0,
    X1 is X - 1,
    producto_sumas_sucesivas(X1, Y, P1),
    P is Y + P1, !.
producto_sumas_sucesivas(X, Y, P) :-
    XP is -X, YP is -Y,
    producto_sumas_sucesivas(XP, YP, P).


potencia_multiplicaciones_sucesivas(X, 0, P) :- P is 1, not(X == 0), !.
potencia_multiplicaciones_sucesivas(0, Y, P) :- P is 0, not(Y == 0), !.
potencia_multiplicaciones_sucesivas(X, Y, P) :-
    Y > 0,
    Y1 is Y - 1,
    potencia_multiplicaciones_sucesivas(X, Y1, P1),
    P is X * P1, !.
potencia_multiplicaciones_sucesivas(X, Y, P) :-
    Y < 0,
    YP is -Y,
    potencia_multiplicaciones_sucesivas(X, YP, P1),
    P is 1 / P1.

cociente_restas_sucesivas(X, Y, 0) :-
    X >= 0, Y > 0,
    X < Y, !.
cociente_restas_sucesivas(X, Y, 0) :-
    X =< 0, Y < 0,
    Y < X, !.
cociente_restas_sucesivas(X, Y, 0) :-
    X =< 0, Y > 0,
    Y > -X, !.
cociente_restas_sucesivas(X, Y, 0) :-
    X >= 0, Y < 0,
    Y < -X, !.
cociente_restas_sucesivas(X, Y, C) :-
    ((X > 0, Y > 0); (X < 0, Y < 0)),
    X1 is X - Y,
    cociente_restas_sucesivas(X1, Y, C1),
    C is 1 + C1, !.
cociente_restas_sucesivas(X, Y, C) :-
    ((X > 0, Y < 0); (X < 0, Y > 0)),
    X1 is X + Y,
    cociente_restas_sucesivas(X1, Y, C1),
    C is C1 - 1, !.
