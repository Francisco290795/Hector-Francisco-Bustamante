use fifa;
create table ejercicio1;
(
SELECT
id_partido,
id_ronda,
fecha_juego,
pais_local.pais as pais_local,
pais_visitante.pais as pais_visitante,
partidos.local_goles,
partidos.visitante_goles,
partidos.local_goles_entretiempo,
partidos.visitante_goles_entretiempo,
0 as local_goles_nuevo,
0 as visitante_goles_nuevo,
0 as resultado,
0 as resultado_nuevo
FROM fifa.partidos
INNER JOIN fifa.paises pais_local ON partidos.id_pais_local = pais_local.id_pais
INNER JOIN fifa.paises pais_visitante ON partidos.id_pais_visitante = pais_visitante.id_pais
WHERE id_copa=(SELECT id_copa FROM fifa.copas where anio=2014));

