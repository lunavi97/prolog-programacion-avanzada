%clauses

entrada(paella).
entrada(gazpacho).
entrada(consom�).

carne(filete_de_cerdo).
carne(pollo_asado).

pescado(trucha).
pescado(bacalao).

postre(flan).
postre(helado).
postre(pastel).
%fin clauses

%Men�s que ofrece el restaurante
plato_principal(X) :- carne(X); pescado(X).
menu(X, Y, Z) :- entrada(X), plato_principal(Y), postre(Z).
