
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
dom_mulher.v001 AS v001,
dom_mulher.v002 AS v002,
dom_mulher.v003 AS v003,
dom_mulher.v004 AS v004,
dom_mulher.v005 AS v005,
dom_mulher.v006 AS v006,
dom_mulher.v007 AS v007,
dom_mulher.v008 AS v008,
dom_mulher.v009 AS v009,
dom_mulher.v010 AS v010,
dom_mulher.v011 AS v011,
dom_mulher.v012 AS v012,
dom_mulher.v013 AS v013,
dom_mulher.v014 AS v014,
dom_mulher.v015 AS v015,
dom_mulher.v016 AS v016,
dom_mulher.v017 AS v017,
dom_mulher.v018 AS v018,
dom_mulher.v019 AS v019,
dom_mulher.v020 AS v020,
dom_mulher.v021 AS v021,
dom_mulher.v022 AS v022,
dom_mulher.v023 AS v023,
dom_mulher.v024 AS v024,
dom_mulher.v025 AS v025,
dom_mulher.v026 AS v026,
dom_mulher.v027 AS v027,
dom_mulher.v028 AS v028,
dom_mulher.v029 AS v029,
dom_mulher.v030 AS v030,
dom_mulher.v031 AS v031,
dom_mulher.v032 AS v032,
dom_mulher.v033 AS v033,
dom_mulher.v034 AS v034,
dom_mulher.v035 AS v035,
dom_mulher.v036 AS v036,
dom_mulher.v037 AS v037,
dom_mulher.v038 AS v038,
dom_mulher.v039 AS v039,
dom_mulher.v040 AS v040,
dom_mulher.v041 AS v041,
dom_mulher.v042 AS v042,
dom_mulher.v043 AS v043,
dom_mulher.v044 AS v044,
dom_mulher.v045 AS v045,
dom_mulher.v046 AS v046,
dom_mulher.v047 AS v047,
dom_mulher.v048 AS v048,
dom_mulher.v049 AS v049,
dom_mulher.v050 AS v050,
dom_mulher.v051 AS v051,
dom_mulher.v052 AS v052,
dom_mulher.v053 AS v053,
dom_mulher.v054 AS v054,
dom_mulher.v055 AS v055,
dom_mulher.v056 AS v056,
dom_mulher.v057 AS v057,
dom_mulher.v058 AS v058,
dom_mulher.v059 AS v059,
dom_mulher.v060 AS v060,
dom_mulher.v061 AS v061,
dom_mulher.v062 AS v062,
dom_mulher.v063 AS v063,
dom_mulher.v064 AS v064,
dom_mulher.v065 AS v065,
dom_mulher.v066 AS v066,
dom_mulher.v067 AS v067,
dom_mulher.v068 AS v068,
dom_mulher.v069 AS v069,
dom_mulher.v070 AS v070,
dom_mulher.v071 AS v071,
dom_mulher.v072 AS v072,
dom_mulher.v073 AS v073,
dom_mulher.v074 AS v074,
dom_mulher.v075 AS v075,
dom_mulher.v076 AS v076,
dom_mulher.v077 AS v077,
dom_mulher.v078 AS v078,
dom_mulher.v079 AS v079,
dom_mulher.v080 AS v080,
dom_mulher.v081 AS v081,
dom_mulher.v082 AS v082,
dom_mulher.v083 AS v083,
dom_mulher.v084 AS v084,
dom_mulher.v085 AS v085,
dom_mulher.v086 AS v086,
dom_mulher.v087 AS v087,
dom_mulher.v088 AS v088,
dom_mulher.v089 AS v089,
dom_mulher.v090 AS v090,
dom_mulher.v091 AS v091,
dom_mulher.v092 AS v092,
dom_mulher.v093 AS v093,
dom_mulher.v094 AS v094,
dom_mulher.v095 AS v095,
dom_mulher.v096 AS v096,
dom_mulher.v097 AS v097,
dom_mulher.v098 AS v098,
dom_mulher.v099 AS v099,
dom_mulher.v100 AS v100,
dom_mulher.v101 AS v101,
dom_mulher.v102 AS v102,
dom_mulher.v103 AS v103,
dom_mulher.v104 AS v104,
dom_mulher.v105 AS v105,
dom_mulher.v106 AS v106,
dom_mulher.v107 AS v107,
dom_mulher.v108 AS v108

FROM h3_hexagons
JOIN `basedosdados.br_geobr_mapas.setor_censitario_2010` setor_geom
    ON ST_INTERSECTS(h3_hexagons.h3geo, setor_geom.geometria)
JOIN `basedosdados.br_ibge_censo_demografico.setor_censitario_responsavel_domicilios_mulheres_2010` dom_mulher USING(id_setor_censitario))
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
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v085)) as v085,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v086)) as v086,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v087)) as v087,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v088)) as v088,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v089)) as v089,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v090)) as v090,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v091)) as v091,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v092)) as v092,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v093)) as v093,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v094)) as v094,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v095)) as v095,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v096)) as v096,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v097)) as v097,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v098)) as v098,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v099)) as v099,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v100)) as v100,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v101)) as v101,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v102)) as v102,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v103)) as v103,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v104)) as v104,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v105)) as v105,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v106)) as v106,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v107)) as v107,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v108)) as v108
FROM geom_overlap
  GROUP BY h3
