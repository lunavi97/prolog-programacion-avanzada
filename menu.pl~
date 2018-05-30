%clauses

entrada(paella, 143).
entrada(gazpacho, 19).
entrada(consome, 12).

carne(filete_de_cerdo, 242).
carne(pollo_asado, 188).

pescado(trucha, 190).
pescado(bacalao, 80).

postre(flan, 146).
postre(helado, 207).
postre(pastel, 297).

%fin clauses

%Menús que ofrece el restaurante
plato_principal(X, Cal) :- (carne(X, Cal); pescado(X, Cal)).
menu(X, Y, Z, Cal) :-
    entrada(X, C1), plato_principal(Y, C2), postre(Z, C3),
    Cal is C1 + C2 + C3.

%Menús solicitados
menu_con_consome(X, Y, Z, Cal) :- menu(X, Y, Z, Cal), X == consome.
menu_sin_flan(X, Y ,Z, Cal) :- menu(X, Y, Z, Cal), not(Z == flan).

%bebidas

bebida(vino, 83).
bebida(cerveza, 43).
bebida(agua_mineral, 0).

%fin bebidas

%Comida con elección de bebida
menu_con_bebida(X, Y, Z, W, Cal) :-
    menu(X, Y, Z, C1), bebida(W, C2),
    Cal is C1 + C2.


%Menús que no tienen la menor cantidad de calorías
proyeccion(Cal) :- menu(_, _, _, Cal).
mayor_que_minimo(X) :- proyeccion(X), proyeccion(Y), X > Y.

%Menús con la menor cantidad de calorías
menu_minimo(E, PP, P, Cal) :- menu(E, PP, P, Cal), not(mayor_que_minimo(Cal)).


%Menús con bebida que no tienen la menor cantidad de calorías
proyeccion_con_bebida(Cal) :- menu_con_bebida(_, _, _, _, Cal).
mayor_que_minimo_con_bebida(X) :- proyeccion_con_bebida(X), proyeccion_con_bebida(Y), X > Y.

%Menús con bebida con la menor cantidad de calorías
menu_con_bebida_minimo(E, PP, P, B, Cal) :- menu_con_bebida(E, PP, P, B, Cal), not(mayor_que_minimo_con_bebida(Cal)).


