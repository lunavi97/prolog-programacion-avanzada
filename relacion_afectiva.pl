/*
 * hombre(N, A, C, E).
 * mujer(N, A, C, E).
 *
 * N: Nombre
 * A: Altura
 * C: Color de cabello
 * E: Edad
*/

%Caracter�sticas

altura(alta).
altura(media).
altura(baja).

color_cabello(negro).
color_cabello(casta�o).
color_cabello(rubio).
color_cabello(pelirrojo).

edad(joven).
edad(adulta).
edad(vieja).

%Fin caracter�sticas

hombre(gustavo, media, casta�o, vieja).
hombre(jorge, media, negro, joven).
hombre(lautara, alta, casta�o, adulta).
hombre(marcos, alta, negro, joven).
hombre(mauricio, media, rubio, adulta).
hombre(osvaldo, baja, negro, adulta).
hombre(patricio, media, rubio, joven).

mujer(antonela, media, negro, joven).
mujer(belen, media, casta�o, joven).
mujer(camila, media, rubio, joven).
mujer(dolores, baja, pelirrojo, joven).
mujer(eleonora, media, rubio, adulta).
mujer(edna, alta, pelirroja, joven).
mujer(graciela, media, negro, joven).
mujer(ines, media, rubio, vieja).

/*
 * gusta(N, M, L, S).
 *
 * N: Nombre
 * M: G�nero de m�sica
 * L: G�nero de literatura
 * S: Deporte
*/

%Gustos

genero_musical(clasica).
genero_musical(pop).
genero_musical(jazz).

genero_literario(aventura).
genero_literario(ciencia_ficcion).
genero_literario(policiaca).

deporte(tenis).
deporte(natacion).
deporte(jogging).

%Fin gustos

gusta(gustavo, pop, aventura, jogging).
gusta(jorge, clasica, ciencia_ficcion, jogging).
gusta(lautaro, jazz, ciencia_ficcion, natacion).
gusta(marcos, jazz, ciencia_ficcion, tenis).
gusta(mauricio, pop, ciencia_ficcion, tenis).
gusta(osvaldo, jazz, policiaca, natacion).
gusta(patricio, clasica, policiaca, jogging).

gusta(antonela, jazz, ciencia_ficcion, tenis).
gusta(belen, pop, ciencia_ficcion, natacion).
gusta(camila, clasica, ciencia_ficcion, jogging).
gusta(dolores, jazz, policiaca, jogging).
gusta(eleonora, clasica, aventura, tenis).
gusta(edna, clasica, policiaca, natacion).
gusta(graciela, pop, ciencia_ficcion, tenis).
gusta(ines, jazz, policiaca, jogging).

/*
 * busca(N, A, C, E).
 *
 * N: Nombre
 * A: Altura
 * C: Color de cabello
 * E: Edad
*/

busca(gustavo, media, rubio, vieja).
busca(jorge, media, rubio, joven).
busca(lautaro, media, rubio, joven).
busca(marcos, media, negro, joven).
busca(mauricio, media, rubio, adulta).
busca(osvaldo, alta, pelirrojo, joven).
busca(patricio, media, negro, adulta).

busca(antonela, alta, rubio, joven).
busca(belen, alta, casta�o, joven).
busca(camila, media, negro, joven).
busca(dolores, alta, rubio, joven).
busca(eleonora, alta, negro, adulta).
busca(edna, alta, negro, adulta).
busca(graciela, media, negro, joven).
busca(ines, media, negro, vieja).

%X conviene a Y
conviene_fisicamente(X, Y) :-
    (hombre(X, _, _, _), busca(X, A, C, E), mujer(Y, A, C, E));
    (mujer(X, _, _, _), busca(X, A, C, E), hombre(Y, A, C, E)).

coinciden_gustos(X, Y) :- gusta(X, M, L, C), gusta(Y, M, L, C).

conviene(X, Y) :- conviene_fisicamente(X, Y), coinciden_gustos(X, Y).

son_adecuadas(X, Y) :- conviene(X, Y), conviene(Y, X).
