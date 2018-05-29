%afirmaciones

hombre(pedro).
hombre(manuel).
hombre(arturo).
mujer(mar�a).
padre(pedro, manuel).
padre(pedro, arturo).
padre(pedro, mar�a).

%fin afirmaciones

ni�o(X, Y) :- padre(Y, X). %Expresa que X es hijo o hija de Y.
hijo(X, Y) :- ni�o(X, Y), hombre(X). %Expresa que X es un hijo var�n de Y.
hija(X, Y) :- ni�o(X, Y), mujer(X). %Expresa que X es una hija de Y.
hermano_o_hermana(X, Y) :- ni�o(X, _), ni�o(Y, _), not(X == Y). %Expresa que X es hermano o hermana de Y.
hermano(X, Y) :- hermano_o_hermana(X, Y), hombre(X). %Expresa que X es un hermano de Y.
hermana(X, Y) :- hermano_o_hermana(X, Y), mujer(X). %Expresa que X es una hermana de Y.
