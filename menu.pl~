%clauses

entrada(paella).
entrada(gazpacho).
entrada(consomé).

carne(filete_de_cerdo).
carne(pollo_asado).

pescado(trucha).
pescado(bacalao).

postre(flan).
postre(helado).
postre(pastel).

%fin clauses

%Menús que ofrece el restaurante
plato_principal(X) :- carne(X); pescado(X).
menu(X, Y, Z) :- entrada(X), plato_principal(Y), postre(Z).

%Menú solicitados
menu_con_consome(X, Y, Z) :- menu(X, Y, Z), X == consomé.
menu_sin_flan(X, Y ,Z) :- menu(X, Y, Z), not(Z == flan).

%bebidas

bebida(vino).
bebida(cerveza).
bebida(agua_mineral).

%fin bebidas

%Comida con elección de bebida
menu_con_bebida(X, Y, Z, W) :- menu(X, Y, Z), bebida(W).
