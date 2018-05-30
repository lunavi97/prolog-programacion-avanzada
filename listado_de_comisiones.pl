ventas1erSem(carolina, 21000).
ventas1erSem(coralina, 29500).
ventas1erSem(emilia, 16000).
ventas1erSem(javier, 12000).
ventas1erSem(horacio, 30000).
ventas1erSem(mariana, 21000).
ventas1erSem(natalia, 13570).
ventas1erSem(oscar, 15000).

ventas2doSem(antonela, 9000).
ventas2doSem(carolina, 20250).
ventas2doSem(emilia, 17525).
ventas2doSem(javier, 13000).
ventas2doSem(horacio, 18000).
ventas2doSem(malena, 16000).
ventas2doSem(mariana, 9750).
ventas2doSem(raul, 18000).

vendio_los_dos_semestres(Ven, V1, V2) :-
    ventas1erSem(Ven, V1), ventas2doSem(Ven, V2).

comision(Vendedor, Com) :- %Comisión del 20%
    vendio_los_dos_semestres(Vendedor, V1, V2),
    V1 > 20000, V2 > 20000,
    Ventas is V1 + V2, Com is Ventas * 20/100.
comision(Vendedor, Com) :- %Comisión del 10%
    vendio_los_dos_semestres(Vendedor, V1, V2),
    (V1 =< 20000; V2 =< 20000),
    Ventas is V1 + V2, Com is Ventas * 10/100.
comision(Vendedor, Com) :- %Comisión del 5%
    (ventas1erSem(Vendedor, Ventas); ventas2doSem(Vendedor, Ventas)),
    not(vendio_los_dos_semestres(Vendedor, _, _)),
    Com is Ventas * 5/100.












