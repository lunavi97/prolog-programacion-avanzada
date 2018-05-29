%clauses

transporte(roma, 20).
transporte(londres, 30).
transporte(tunez, 10).

alojamiento(roma, hotel, 50).
alojamiento(roma, hostal, 30).
alojamiento(roma, camping, 10).
alojamiento(londres, hotel, 60).
alojamiento(londres, hostal, 40).
alojamiento(londres, camping, 20).
alojamiento(tunez, hotel, 40).
alojamiento(tunez, hostal, 20).
alojamiento(tunez, camping, 5).

%fin clauses

%reglas secundarias
multiplicar(P, X, Y) :- P is X * Y.
sumar(S, X, Y) :- S is X + Y.
menor(X, Y) :-  X < Y.
%fin reglas secundarias

/*
 * Precio de transporte: independiente de la duración
 * Precio de la semana de estancia: varía según el destino y el nivel de
 * comodidad
*/

%Cantidad de semanas posibles
cantidad_de_semanas(1).
cantidad_de_semanas(2).

%Viaje a la ciudad C durante S semanas con estancia en H cuesta P pesos
viaje(C, S, H, P) :- transporte(C, PTransporte), alojamiento(C, H, PSemana), cantidad_de_semanas(S), multiplicar(PAlojamiento, PSemana, S), sumar(P, PTransporte, PAlojamiento).


