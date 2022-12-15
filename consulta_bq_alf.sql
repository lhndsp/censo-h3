
WITH
    -- Preencher setores
    setores_polyfill AS (
        SELECT
            jslibs.h3.ST_H3_POLYFILLFROMGEOG(geometria , 9) as geo
        FROM `basedosdados.br_geobr_mapas.setor_censitario_2010`
            WHERE zona = 'URBANO' AND geometria IS NOT NULL
    ),
    -- Malha H3
    h3_hexagons as (
    SELECT
        h3,
        jslibs.h3.ST_H3_BOUNDARY(h3) as h3geo
    FROM setores_polyfill, UNNEST(geo) as h3
    ),
    -- Calculo
    geom_overlap AS(
      SELECT
          h3_hexagons.h3,
          h3_hexagons.h3geo,
          ST_AREA(ST_INTERSECTION(h3geo, setor_geom.geometria)) as intersection_h3,
          ST_AREA(geometria) as setor_area,
alf.v001 AS v001,
alf.v002 AS v002,
alf.v003 AS v003,
alf.v004 AS v004,
alf.v005 AS v005,
alf.v006 AS v006,
alf.v007 AS v007,
alf.v008 AS v008,
alf.v009 AS v009,
alf.v010 AS v010,
alf.v011 AS v011,
alf.v012 AS v012,
alf.v013 AS v013,
alf.v014 AS v014,
alf.v015 AS v015,
alf.v016 AS v016,
alf.v017 AS v017,
alf.v018 AS v018,
alf.v019 AS v019,
alf.v020 AS v020,
alf.v021 AS v021,
alf.v022 AS v022,
alf.v023 AS v023,
alf.v024 AS v024,
alf.v025 AS v025,
alf.v026 AS v026,
alf.v027 AS v027,
alf.v028 AS v028,
alf.v029 AS v029,
alf.v030 AS v030,
alf.v031 AS v031,
alf.v032 AS v032,
alf.v033 AS v033,
alf.v034 AS v034,
alf.v035 AS v035,
alf.v036 AS v036,
alf.v037 AS v037,
alf.v038 AS v038,
alf.v039 AS v039,
alf.v040 AS v040,
alf.v041 AS v041,
alf.v042 AS v042,
alf.v043 AS v043,
alf.v044 AS v044,
alf.v045 AS v045,
alf.v046 AS v046,
alf.v047 AS v047,
alf.v048 AS v048,
alf.v049 AS v049,
alf.v050 AS v050,
alf.v051 AS v051,
alf.v052 AS v052,
alf.v053 AS v053,
alf.v054 AS v054,
alf.v055 AS v055,
alf.v056 AS v056,
alf.v057 AS v057,
alf.v058 AS v058,
alf.v059 AS v059,
alf.v060 AS v060,
alf.v061 AS v061,
alf.v062 AS v062,
alf.v063 AS v063,
alf.v064 AS v064,
alf.v065 AS v065,
alf.v066 AS v066,
alf.v067 AS v067,
alf.v068 AS v068,
alf.v069 AS v069,
alf.v070 AS v070,
alf.v071 AS v071,
alf.v072 AS v072,
alf.v073 AS v073,
alf.v074 AS v074,
alf.v075 AS v075,
alf.v076 AS v076,
alf.v077 AS v077,
alf.v078 AS v078,
alf.v079 AS v079,
alf.v080 AS v080,
alf.v081 AS v081,
alf.v082 AS v082,
alf.v083 AS v083,
alf.v084 AS v084,
alf.v085 AS v085

FROM h3_hexagons
JOIN `basedosdados.br_geobr_mapas.setor_censitario_2010` setor_geom
    ON ST_INTERSECTS(h3_hexagons.h3geo, setor_geom.geometria)
JOIN `basedosdados.br_ibge_censo_demografico.setor_censitario_alfabetizacao_total_2010` alf USING(id_setor_censitario))
SELECT
    h3,
    ANY_VALUE(h3geo) as geometry,
    ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v001)) as v001,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v002)) as v002,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v003)) as v003,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v004)) as v004,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v005)) as v005,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v006)) as v006,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v007)) as v007,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v008)) as v008,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v009)) as v009,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v010)) as v010,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v011)) as v011,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v012)) as v012,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v013)) as v013,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v014)) as v014,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v015)) as v015,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v016)) as v016,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v017)) as v017,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v018)) as v018,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v019)) as v019,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v020)) as v020,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v021)) as v021,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v022)) as v022,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v023)) as v023,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v024)) as v024,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v025)) as v025,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v026)) as v026,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v027)) as v027,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v028)) as v028,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v029)) as v029,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v030)) as v030,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v031)) as v031,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v032)) as v032,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v033)) as v033,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v034)) as v034,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v035)) as v035,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v036)) as v036,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v037)) as v037,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v038)) as v038,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v039)) as v039,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v040)) as v040,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v041)) as v041,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v042)) as v042,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v043)) as v043,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v044)) as v044,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v045)) as v045,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v046)) as v046,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v047)) as v047,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v048)) as v048,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v049)) as v049,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v050)) as v050,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v051)) as v051,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v052)) as v052,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v053)) as v053,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v054)) as v054,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v055)) as v055,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v056)) as v056,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v057)) as v057,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v058)) as v058,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v059)) as v059,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v060)) as v060,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v061)) as v061,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v062)) as v062,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v063)) as v063,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v064)) as v064,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v065)) as v065,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v066)) as v066,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v067)) as v067,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v068)) as v068,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v069)) as v069,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v070)) as v070,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v071)) as v071,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v072)) as v072,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v073)) as v073,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v074)) as v074,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v075)) as v075,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v076)) as v076,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v077)) as v077,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v078)) as v078,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v079)) as v079,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v080)) as v080,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v081)) as v081,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v082)) as v082,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v083)) as v083,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v084)) as v084,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v085)) as v085
FROM geom_overlap
  GROUP BY h3