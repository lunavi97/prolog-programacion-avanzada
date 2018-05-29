%parciales

parcial1(ana, 7).
parcial1(ivan, 6).
parcial1(juan, 4).
parcial1(jorge, 9).
parcial1(luciana, 10).
parcial1(lujan, 2).
parcial1(maria, 7).
parcial1(mariano, 3).
parcial1(nahuel, 8).
parcial1(rocio, 8).
parcial1(rosario, 5).
parcial1(sandra, 7).
parcial1(sol, 7).

parcial2(ana, 9).
parcial2(geronimo, 4).
parcial2(juan, 8).
parcial2(luciana, 8).
parcial2(lujan, 3).
parcial2(maria, 6).
parcial2(mariano, 8).
parcial2(nahuel, 10).
parcial2(rocio, 7).
parcial2(rosario, 3).
parcial2(sandra, 8).
parcial2(sol, 9).
parcial2(vanesa, 4).

%fin parciales

promedio(P, X, Y) :- P is (X + Y) / 2.

presente(Nombre, N1, N2) :- parcial1(Nombre, N1), parcial2(Nombre, N2).

promocionado(Nombre, NotaFinal) :- presente(Nombre, N1, N2), N1 >= 7, N2 >= 7, promedio(NotaFinal, N1, N2).
obtiene_cursada(Nombre) :- presente(Nombre, N1, N2), N1 >= 4, N2 >= 4, promedio(NotaFinal, N1, N2), not(promocionado(Nombre, NotaFinal)).
recursa(Nombre) :- presente(Nombre, N1, N2),  (N1 < 4; N2 < 4).

%Seleccionar los promedios que no son el mayor
proyeccionPromediosPromocionados(Prom) :- promocionado(_, Prom).

productoCartesiano(X, Y) :- proyeccionPromediosPromocionados(X), proyeccionPromediosPromocionados(Y).
seleccionDeMenores(X) :- productoCartesiano(X, Y), X < Y.

%Obtener los estudiantes que tienen el mayor promedio
medalla_al_merito(Estudiante) :- promocionado(Estudiante, Prom), not(seleccionDeMenores(Prom)).

%Estudiantes que adeudan uno de los parciales
ausente(Nombre) :- (parcial1(Nombre, _); parcial2(Nombre, _)), not(presente(Nombre, _, _)).
