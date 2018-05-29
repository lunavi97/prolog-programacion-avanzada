%afirmaciones

hombre(pedro).
hombre(manuel).
hombre(arturo).
mujer(maría).
padre(pedro, manuel).
padre(pedro, arturo).
padre(pedro, maría).

%fin afirmaciones

niño(X, Y) :- padre(Y, X). %Expresa que X es hijo o hija de Y.
hijo(X, Y) :- niño(X, Y), hombre(X). %Expresa que X es un hijo varón de Y.
hija(X, Y) :- niño(X, Y), mujer(X). %Expresa que X es una hija de Y.
hermano_o_hermana(X, Y) :- niño(X, _), niño(Y, _), not(X == Y). %Expresa que X es hermano o hermana de Y.
hermano(X, Y) :- hermano_o_hermana(X, Y), hombre(X). %Expresa que X es un hermano de Y.
hermana(X, Y) :- hermano_o_hermana(X, Y), mujer(X). %Expresa que X es una hermana de Y.
