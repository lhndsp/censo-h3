
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
rel_par_outros.v001 AS v001,
rel_par_outros.v002 AS v002,
rel_par_outros.v003 AS v003,
rel_par_outros.v004 AS v004,
rel_par_outros.v005 AS v005,
rel_par_outros.v006 AS v006,
rel_par_outros.v007 AS v007,
rel_par_outros.v008 AS v008,
rel_par_outros.v009 AS v009,
rel_par_outros.v010 AS v010,
rel_par_outros.v011 AS v011,
rel_par_outros.v012 AS v012,
rel_par_outros.v013 AS v013,
rel_par_outros.v014 AS v014,
rel_par_outros.v015 AS v015,
rel_par_outros.v016 AS v016,
rel_par_outros.v017 AS v017,
rel_par_outros.v018 AS v018,
rel_par_outros.v019 AS v019,
rel_par_outros.v020 AS v020,
rel_par_outros.v021 AS v021,
rel_par_outros.v022 AS v022,
rel_par_outros.v023 AS v023,
rel_par_outros.v024 AS v024,
rel_par_outros.v025 AS v025,
rel_par_outros.v026 AS v026,
rel_par_outros.v027 AS v027,
rel_par_outros.v028 AS v028,
rel_par_outros.v029 AS v029,
rel_par_outros.v030 AS v030,
rel_par_outros.v031 AS v031,
rel_par_outros.v032 AS v032,
rel_par_outros.v033 AS v033,
rel_par_outros.v034 AS v034,
rel_par_outros.v035 AS v035,
rel_par_outros.v036 AS v036,
rel_par_outros.v037 AS v037,
rel_par_outros.v038 AS v038,
rel_par_outros.v039 AS v039,
rel_par_outros.v040 AS v040,
rel_par_outros.v041 AS v041,
rel_par_outros.v042 AS v042,
rel_par_outros.v043 AS v043,
rel_par_outros.v044 AS v044,
rel_par_outros.v045 AS v045,
rel_par_outros.v046 AS v046,
rel_par_outros.v047 AS v047,
rel_par_outros.v048 AS v048,
rel_par_outros.v049 AS v049,
rel_par_outros.v050 AS v050,
rel_par_outros.v051 AS v051,
rel_par_outros.v052 AS v052,
rel_par_outros.v053 AS v053,
rel_par_outros.v054 AS v054,
rel_par_outros.v055 AS v055,
rel_par_outros.v056 AS v056,
rel_par_outros.v057 AS v057,
rel_par_outros.v058 AS v058,
rel_par_outros.v059 AS v059,
rel_par_outros.v060 AS v060,
rel_par_outros.v061 AS v061,
rel_par_outros.v062 AS v062,
rel_par_outros.v063 AS v063,
rel_par_outros.v064 AS v064,
rel_par_outros.v065 AS v065,
rel_par_outros.v066 AS v066,
rel_par_outros.v067 AS v067,
rel_par_outros.v068 AS v068,
rel_par_outros.v069 AS v069,
rel_par_outros.v070 AS v070,
rel_par_outros.v071 AS v071,
rel_par_outros.v072 AS v072,
rel_par_outros.v073 AS v073,
rel_par_outros.v074 AS v074,
rel_par_outros.v075 AS v075,
rel_par_outros.v076 AS v076,
rel_par_outros.v077 AS v077,
rel_par_outros.v078 AS v078,
rel_par_outros.v079 AS v079,
rel_par_outros.v080 AS v080,
rel_par_outros.v081 AS v081,
rel_par_outros.v082 AS v082,
rel_par_outros.v083 AS v083,
rel_par_outros.v084 AS v084,
rel_par_outros.v085 AS v085,
rel_par_outros.v086 AS v086,
rel_par_outros.v087 AS v087,
rel_par_outros.v088 AS v088,
rel_par_outros.v089 AS v089,
rel_par_outros.v090 AS v090,
rel_par_outros.v091 AS v091,
rel_par_outros.v092 AS v092,
rel_par_outros.v093 AS v093,
rel_par_outros.v094 AS v094,
rel_par_outros.v095 AS v095,
rel_par_outros.v096 AS v096,
rel_par_outros.v097 AS v097,
rel_par_outros.v098 AS v098,
rel_par_outros.v099 AS v099,
rel_par_outros.v100 AS v100,
rel_par_outros.v101 AS v101,
rel_par_outros.v102 AS v102,
rel_par_outros.v103 AS v103,
rel_par_outros.v104 AS v104,
rel_par_outros.v105 AS v105,
rel_par_outros.v106 AS v106,
rel_par_outros.v107 AS v107,
rel_par_outros.v108 AS v108,
rel_par_outros.v109 AS v109,
rel_par_outros.v110 AS v110,
rel_par_outros.v111 AS v111,
rel_par_outros.v112 AS v112,
rel_par_outros.v113 AS v113,
rel_par_outros.v114 AS v114,
rel_par_outros.v115 AS v115,
rel_par_outros.v116 AS v116,
rel_par_outros.v117 AS v117,
rel_par_outros.v118 AS v118,
rel_par_outros.v119 AS v119,
rel_par_outros.v120 AS v120,
rel_par_outros.v121 AS v121,
rel_par_outros.v122 AS v122,
rel_par_outros.v123 AS v123,
rel_par_outros.v124 AS v124,
rel_par_outros.v125 AS v125,
rel_par_outros.v126 AS v126,
rel_par_outros.v127 AS v127,
rel_par_outros.v128 AS v128,
rel_par_outros.v129 AS v129,
rel_par_outros.v130 AS v130,
rel_par_outros.v131 AS v131,
rel_par_outros.v132 AS v132,
rel_par_outros.v133 AS v133,
rel_par_outros.v134 AS v134,
rel_par_outros.v135 AS v135,
rel_par_outros.v136 AS v136,
rel_par_outros.v137 AS v137,
rel_par_outros.v138 AS v138,
rel_par_outros.v139 AS v139,
rel_par_outros.v140 AS v140,
rel_par_outros.v141 AS v141,
rel_par_outros.v142 AS v142,
rel_par_outros.v143 AS v143,
rel_par_outros.v144 AS v144,
rel_par_outros.v145 AS v145,
rel_par_outros.v146 AS v146,
rel_par_outros.v147 AS v147,
rel_par_outros.v148 AS v148,
rel_par_outros.v149 AS v149,
rel_par_outros.v150 AS v150,
rel_par_outros.v151 AS v151,
rel_par_outros.v152 AS v152,
rel_par_outros.v153 AS v153,
rel_par_outros.v154 AS v154,
rel_par_outros.v155 AS v155,
rel_par_outros.v156 AS v156,
rel_par_outros.v157 AS v157,
rel_par_outros.v158 AS v158,
rel_par_outros.v159 AS v159,
rel_par_outros.v160 AS v160,
rel_par_outros.v161 AS v161,
rel_par_outros.v162 AS v162,
rel_par_outros.v163 AS v163,
rel_par_outros.v164 AS v164,
rel_par_outros.v165 AS v165,
rel_par_outros.v166 AS v166,
rel_par_outros.v167 AS v167,
rel_par_outros.v168 AS v168,
rel_par_outros.v169 AS v169,
rel_par_outros.v170 AS v170,
rel_par_outros.v171 AS v171,
rel_par_outros.v172 AS v172,
rel_par_outros.v173 AS v173,
rel_par_outros.v174 AS v174,
rel_par_outros.v175 AS v175,
rel_par_outros.v176 AS v176,
rel_par_outros.v177 AS v177,
rel_par_outros.v178 AS v178,
rel_par_outros.v179 AS v179,
rel_par_outros.v180 AS v180,
rel_par_outros.v181 AS v181,
rel_par_outros.v182 AS v182,
rel_par_outros.v183 AS v183,
rel_par_outros.v184 AS v184,
rel_par_outros.v185 AS v185,
rel_par_outros.v186 AS v186,
rel_par_outros.v187 AS v187,
rel_par_outros.v188 AS v188,
rel_par_outros.v189 AS v189,
rel_par_outros.v190 AS v190,
rel_par_outros.v191 AS v191,
rel_par_outros.v192 AS v192,
rel_par_outros.v193 AS v193,
rel_par_outros.v194 AS v194,
rel_par_outros.v195 AS v195,
rel_par_outros.v196 AS v196,
rel_par_outros.v197 AS v197,
rel_par_outros.v198 AS v198,
rel_par_outros.v199 AS v199,
rel_par_outros.v200 AS v200,
rel_par_outros.v201 AS v201,
rel_par_outros.v202 AS v202,
rel_par_outros.v203 AS v203,
rel_par_outros.v204 AS v204,
rel_par_outros.v205 AS v205,
rel_par_outros.v206 AS v206,
rel_par_outros.v207 AS v207,
rel_par_outros.v208 AS v208,
rel_par_outros.v209 AS v209,
rel_par_outros.v210 AS v210,
rel_par_outros.v211 AS v211,
rel_par_outros.v212 AS v212,
rel_par_outros.v213 AS v213,
rel_par_outros.v214 AS v214,
rel_par_outros.v215 AS v215,
rel_par_outros.v216 AS v216,
rel_par_outros.v217 AS v217,
rel_par_outros.v218 AS v218,
rel_par_outros.v219 AS v219,
rel_par_outros.v220 AS v220,
rel_par_outros.v221 AS v221,
rel_par_outros.v222 AS v222,
rel_par_outros.v223 AS v223,
rel_par_outros.v224 AS v224,
rel_par_outros.v225 AS v225,
rel_par_outros.v226 AS v226,
rel_par_outros.v227 AS v227,
rel_par_outros.v228 AS v228,
rel_par_outros.v229 AS v229,
rel_par_outros.v230 AS v230,
rel_par_outros.v231 AS v231,
rel_par_outros.v232 AS v232,
rel_par_outros.v233 AS v233,
rel_par_outros.v234 AS v234,
rel_par_outros.v235 AS v235,
rel_par_outros.v236 AS v236,
rel_par_outros.v237 AS v237,
rel_par_outros.v238 AS v238,
rel_par_outros.v239 AS v239,
rel_par_outros.v240 AS v240

FROM h3_hexagons
JOIN `basedosdados.br_geobr_mapas.setor_censitario_2010` setor_geom
    ON ST_INTERSECTS(h3_hexagons.h3geo, setor_geom.geometria)
JOIN `basedosdados.br_ibge_censo_demografico.setor_censitario_relacao_parentesco_outros_2010` rel_par_outros USING(id_setor_censitario))
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
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v132)) as v132,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v133)) as v133,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v134)) as v134,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v135)) as v135,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v136)) as v136,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v137)) as v137,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v138)) as v138,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v139)) as v139,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v140)) as v140,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v141)) as v141,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v142)) as v142,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v143)) as v143,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v144)) as v144,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v145)) as v145,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v146)) as v146,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v147)) as v147,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v148)) as v148,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v149)) as v149,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v150)) as v150,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v151)) as v151,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v152)) as v152,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v153)) as v153,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v154)) as v154,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v155)) as v155,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v156)) as v156,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v157)) as v157,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v158)) as v158,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v159)) as v159,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v160)) as v160,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v161)) as v161,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v162)) as v162,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v163)) as v163,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v164)) as v164,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v165)) as v165,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v166)) as v166,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v167)) as v167,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v168)) as v168,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v169)) as v169,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v170)) as v170,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v171)) as v171,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v172)) as v172,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v173)) as v173,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v174)) as v174,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v175)) as v175,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v176)) as v176,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v177)) as v177,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v178)) as v178,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v179)) as v179,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v180)) as v180,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v181)) as v181,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v182)) as v182,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v183)) as v183,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v184)) as v184,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v185)) as v185,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v186)) as v186,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v187)) as v187,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v188)) as v188,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v189)) as v189,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v190)) as v190,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v191)) as v191,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v192)) as v192,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v193)) as v193,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v194)) as v194,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v195)) as v195,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v196)) as v196,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v197)) as v197,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v198)) as v198,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v199)) as v199,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v200)) as v200,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v201)) as v201,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v202)) as v202,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v203)) as v203,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v204)) as v204,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v205)) as v205,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v206)) as v206,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v207)) as v207,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v208)) as v208,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v209)) as v209,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v210)) as v210,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v211)) as v211,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v212)) as v212,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v213)) as v213,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v214)) as v214,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v215)) as v215,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v216)) as v216,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v217)) as v217,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v218)) as v218,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v219)) as v219,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v220)) as v220,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v221)) as v221,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v222)) as v222,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v223)) as v223,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v224)) as v224,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v225)) as v225,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v226)) as v226,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v227)) as v227,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v228)) as v228,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v229)) as v229,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v230)) as v230,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v231)) as v231,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v232)) as v232,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v233)) as v233,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v234)) as v234,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v235)) as v235,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v236)) as v236,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v237)) as v237,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v238)) as v238,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v239)) as v239,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v240)) as v240
FROM geom_overlap
  GROUP BY h3