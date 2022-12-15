
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
dom_moradores.v001 AS v001,
dom_moradores.v002 AS v002,
dom_moradores.v003 AS v003,
dom_moradores.v004 AS v004,
dom_moradores.v005 AS v005,
dom_moradores.v006 AS v006,
dom_moradores.v007 AS v007,
dom_moradores.v008 AS v008,
dom_moradores.v009 AS v009,
dom_moradores.v010 AS v010,
dom_moradores.v011 AS v011,
dom_moradores.v012 AS v012,
dom_moradores.v013 AS v013,
dom_moradores.v014 AS v014,
dom_moradores.v015 AS v015,
dom_moradores.v016 AS v016,
dom_moradores.v017 AS v017,
dom_moradores.v018 AS v018,
dom_moradores.v019 AS v019,
dom_moradores.v020 AS v020,
dom_moradores.v021 AS v021,
dom_moradores.v022 AS v022,
dom_moradores.v023 AS v023,
dom_moradores.v024 AS v024,
dom_moradores.v025 AS v025,
dom_moradores.v026 AS v026,
dom_moradores.v027 AS v027,
dom_moradores.v028 AS v028,
dom_moradores.v029 AS v029,
dom_moradores.v030 AS v030,
dom_moradores.v031 AS v031,
dom_moradores.v032 AS v032,
dom_moradores.v033 AS v033,
dom_moradores.v034 AS v034,
dom_moradores.v035 AS v035,
dom_moradores.v036 AS v036,
dom_moradores.v037 AS v037,
dom_moradores.v038 AS v038,
dom_moradores.v039 AS v039,
dom_moradores.v040 AS v040,
dom_moradores.v041 AS v041,
dom_moradores.v042 AS v042,
dom_moradores.v043 AS v043,
dom_moradores.v044 AS v044,
dom_moradores.v045 AS v045,
dom_moradores.v046 AS v046,
dom_moradores.v047 AS v047,
dom_moradores.v048 AS v048,
dom_moradores.v049 AS v049,
dom_moradores.v050 AS v050,
dom_moradores.v051 AS v051,
dom_moradores.v052 AS v052,
dom_moradores.v053 AS v053,
dom_moradores.v054 AS v054,
dom_moradores.v055 AS v055,
dom_moradores.v056 AS v056,
dom_moradores.v057 AS v057,
dom_moradores.v058 AS v058,
dom_moradores.v059 AS v059,
dom_moradores.v060 AS v060,
dom_moradores.v061 AS v061,
dom_moradores.v062 AS v062,
dom_moradores.v063 AS v063,
dom_moradores.v064 AS v064,
dom_moradores.v065 AS v065,
dom_moradores.v066 AS v066,
dom_moradores.v067 AS v067,
dom_moradores.v068 AS v068,
dom_moradores.v069 AS v069,
dom_moradores.v070 AS v070,
dom_moradores.v071 AS v071,
dom_moradores.v072 AS v072,
dom_moradores.v073 AS v073,
dom_moradores.v074 AS v074,
dom_moradores.v075 AS v075,
dom_moradores.v076 AS v076,
dom_moradores.v077 AS v077,
dom_moradores.v078 AS v078,
dom_moradores.v079 AS v079,
dom_moradores.v080 AS v080,
dom_moradores.v081 AS v081,
dom_moradores.v082 AS v082,
dom_moradores.v083 AS v083,
dom_moradores.v084 AS v084,
dom_moradores.v085 AS v085,
dom_moradores.v086 AS v086,
dom_moradores.v087 AS v087,
dom_moradores.v088 AS v088,
dom_moradores.v089 AS v089,
dom_moradores.v090 AS v090,
dom_moradores.v091 AS v091,
dom_moradores.v092 AS v092,
dom_moradores.v093 AS v093,
dom_moradores.v094 AS v094,
dom_moradores.v095 AS v095,
dom_moradores.v096 AS v096,
dom_moradores.v097 AS v097,
dom_moradores.v098 AS v098,
dom_moradores.v099 AS v099,
dom_moradores.v100 AS v100,
dom_moradores.v101 AS v101,
dom_moradores.v102 AS v102,
dom_moradores.v103 AS v103,
dom_moradores.v104 AS v104,
dom_moradores.v105 AS v105,
dom_moradores.v106 AS v106,
dom_moradores.v107 AS v107,
dom_moradores.v108 AS v108,
dom_moradores.v109 AS v109,
dom_moradores.v110 AS v110,
dom_moradores.v111 AS v111,
dom_moradores.v112 AS v112,
dom_moradores.v113 AS v113,
dom_moradores.v114 AS v114,
dom_moradores.v115 AS v115,
dom_moradores.v116 AS v116,
dom_moradores.v117 AS v117,
dom_moradores.v118 AS v118,
dom_moradores.v119 AS v119,
dom_moradores.v120 AS v120,
dom_moradores.v121 AS v121,
dom_moradores.v122 AS v122,
dom_moradores.v123 AS v123,
dom_moradores.v124 AS v124,
dom_moradores.v125 AS v125,
dom_moradores.v126 AS v126,
dom_moradores.v127 AS v127,
dom_moradores.v128 AS v128,
dom_moradores.v129 AS v129,
dom_moradores.v130 AS v130,
dom_moradores.v131 AS v131,
dom_moradores.v132 AS v132

FROM h3_hexagons
JOIN `basedosdados.br_geobr_mapas.setor_censitario_2010` setor_geom
    ON ST_INTERSECTS(h3_hexagons.h3geo, setor_geom.geometria)
JOIN `basedosdados.br_ibge_censo_demografico.setor_censitario_domicilio_moradores_2010` dom_moradores USING(id_setor_censitario))
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
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v108)) as v108,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v109)) as v109,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v110)) as v110,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v111)) as v111,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v112)) as v112,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v113)) as v113,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v114)) as v114,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v115)) as v115,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v116)) as v116,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v117)) as v117,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v118)) as v118,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v119)) as v119,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v120)) as v120,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v121)) as v121,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v122)) as v122,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v123)) as v123,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v124)) as v124,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v125)) as v125,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v126)) as v126,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v127)) as v127,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v128)) as v128,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v129)) as v129,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v130)) as v130,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v131)) as v131,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v132)) as v132
FROM geom_overlap
  GROUP BY h3