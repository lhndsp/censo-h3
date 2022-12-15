
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
dom_renda.v001 AS v001,
dom_renda.v002 AS v002,
dom_renda.v003 AS v003,
dom_renda.v004 AS v004,
dom_renda.v005 AS v005,
dom_renda.v006 AS v006,
dom_renda.v007 AS v007,
dom_renda.v008 AS v008,
dom_renda.v009 AS v009,
dom_renda.v010 AS v010,
dom_renda.v011 AS v011,
dom_renda.v012 AS v012,
dom_renda.v013 AS v013,
dom_renda.v014 AS v014

FROM h3_hexagons
JOIN `basedosdados.br_geobr_mapas.setor_censitario_2010` setor_geom
    ON ST_INTERSECTS(h3_hexagons.h3geo, setor_geom.geometria)
JOIN `basedosdados.br_ibge_censo_demografico.setor_censitario_domicilio_renda_2010` dom_renda USING(id_setor_censitario))
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
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v014)) as v014
FROM geom_overlap
  GROUP BY h3
