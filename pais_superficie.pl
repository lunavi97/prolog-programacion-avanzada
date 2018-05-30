%Países de América
pais_superficie(canada, 9893340).
pais_superficie(estados_unidos, 9826671).
pais_superficie(brasil, 8514877).
pais_superficie(argentina, 2792573).
pais_superficie(mexico, 1964375).
pais_superficie(peru, 1285216).
pais_superficie(colombia, 1141748).
pais_superficie(bolivia, 1098581).
pais_superficie(venezuela, 916445).
pais_superficie(chile, 756102).
pais_superficie(paraguay, 406752).
pais_superficie(ecuador, 283561).
pais_superficie(guyana, 214970).
pais_superficie(uruguay, 176215).
pais_superficie(surinam, 163820).
pais_superficie(nicaragua, 129494).
pais_superficie(honduras, 112492).
pais_superficie(cuba, 110860).
pais_superficie(guatemala, 108990).
pais_superficie(panama, 78260).
pais_superficie(costa_rica, 51160).
pais_superficie(republica_dominicana, 48762).
pais_superficie(haití, 27850).
pais_superficie(belice, 22966).
pais_superficie(el_salvador, 21481).
pais_superficie(bahamas, 13940).
pais_superficie(jamaica, 11524).
pais_superficie(trinidad_y_tobago, 5128).
pais_superficie(dominica, 754).
pais_superficie(santa_lucia, 623).
pais_superficie(antigua_y_barbuda, 443).
pais_superficie(barbados, 439).
pais_superficie(san_vicente_y_las_granadinas, 389).
pais_superficie(granada, 344).
pais_superficie(san_cristobal_y_nieves, 261).
%Fin Países de América

%Países que no tienen la mayor superficie
proyeccion_superficie(Sup) :- pais_superficie(_, Sup).
menor_que_maxima_superficie(X) :- proyeccion_superficie(X), proyeccion_superficie(Y), X < Y.

%Países que tienen la mayor superficie
pais_mayor_superficie(P, Sup) :- pais_superficie(P, Sup), not(menor_que_maxima_superficie(Sup)).
