
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
alf_homem.v086 AS v086,
alf_homem.v087 AS v087,
alf_homem.v088 AS v088,
alf_homem.v089 AS v089,
alf_homem.v090 AS v090,
alf_homem.v091 AS v091,
alf_homem.v092 AS v092,
alf_homem.v093 AS v093,
alf_homem.v094 AS v094,
alf_homem.v095 AS v095,
alf_homem.v096 AS v096,
alf_homem.v097 AS v097,
alf_homem.v098 AS v098,
alf_homem.v099 AS v099,
alf_homem.v100 AS v100,
alf_homem.v101 AS v101,
alf_homem.v102 AS v102,
alf_homem.v103 AS v103,
alf_homem.v104 AS v104,
alf_homem.v105 AS v105,
alf_homem.v106 AS v106,
alf_homem.v107 AS v107,
alf_homem.v108 AS v108,
alf_homem.v109 AS v109,
alf_homem.v110 AS v110,
alf_homem.v111 AS v111,
alf_homem.v112 AS v112,
alf_homem.v113 AS v113,
alf_homem.v114 AS v114,
alf_homem.v115 AS v115,
alf_homem.v116 AS v116,
alf_homem.v117 AS v117,
alf_homem.v118 AS v118,
alf_homem.v119 AS v119,
alf_homem.v120 AS v120,
alf_homem.v121 AS v121,
alf_homem.v122 AS v122,
alf_homem.v123 AS v123,
alf_homem.v124 AS v124,
alf_homem.v125 AS v125,
alf_homem.v126 AS v126,
alf_homem.v127 AS v127,
alf_homem.v128 AS v128,
alf_homem.v129 AS v129,
alf_homem.v130 AS v130,
alf_homem.v131 AS v131,
alf_homem.v132 AS v132,
alf_homem.v133 AS v133,
alf_homem.v134 AS v134,
alf_homem.v135 AS v135,
alf_homem.v136 AS v136,
alf_homem.v137 AS v137,
alf_homem.v138 AS v138,
alf_homem.v139 AS v139,
alf_homem.v140 AS v140,
alf_homem.v141 AS v141,
alf_homem.v142 AS v142,
alf_homem.v143 AS v143,
alf_homem.v144 AS v144,
alf_homem.v145 AS v145,
alf_homem.v146 AS v146,
alf_homem.v147 AS v147,
alf_homem.v148 AS v148,
alf_homem.v149 AS v149,
alf_homem.v150 AS v150,
alf_homem.v151 AS v151,
alf_homem.v152 AS v152,
alf_homem.v153 AS v153,
alf_homem.v154 AS v154,
alf_homem.v155 AS v155,
alf_homem.v156 AS v156,
alf_homem.v157 AS v157,
alf_homem.v158 AS v158,
alf_homem.v159 AS v159,
alf_homem.v160 AS v160,
alf_homem.v161 AS v161,
alf_homem.v162 AS v162,
alf_homem.v163 AS v163,
alf_homem.v164 AS v164,
alf_homem.v165 AS v165,
alf_homem.v166 AS v166,
alf_homem.v167 AS v167,
alf_homem.v168 AS v168,
alf_homem.v169 AS v169,
alf_homem.v170 AS v170,
alf_homem.v171 AS v171,
alf_homem.v172 AS v172,
alf_homem.v173 AS v173,
alf_homem.v174 AS v174,
alf_homem.v175 AS v175,
alf_homem.v176 AS v176,
alf_homem.v177 AS v177,
alf_homem.v178 AS v178,
alf_homem.v179 AS v179,
alf_homem.v180 AS v180,
alf_homem.v181 AS v181,
alf_homem.v182 AS v182,
alf_homem.v183 AS v183,
alf_homem.v184 AS v184,
alf_homem.v185 AS v185,
alf_homem.v186 AS v186,
alf_homem.v187 AS v187,
alf_homem.v188 AS v188,
alf_homem.v189 AS v189,
alf_homem.v190 AS v190,
alf_homem.v191 AS v191,
alf_homem.v192 AS v192,
alf_homem.v193 AS v193,
alf_homem.v194 AS v194,
alf_homem.v195 AS v195,
alf_homem.v196 AS v196,
alf_homem.v197 AS v197,
alf_homem.v198 AS v198,
alf_homem.v199 AS v199,
alf_homem.v200 AS v200,
alf_homem.v201 AS v201,
alf_homem.v202 AS v202,
alf_homem.v203 AS v203,
alf_homem.v204 AS v204,
alf_homem.v205 AS v205,
alf_homem.v206 AS v206,
alf_homem.v207 AS v207,
alf_homem.v208 AS v208,
alf_homem.v209 AS v209,
alf_homem.v210 AS v210,
alf_homem.v211 AS v211,
alf_homem.v212 AS v212,
alf_homem.v213 AS v213,
alf_homem.v214 AS v214,
alf_homem.v215 AS v215,
alf_homem.v216 AS v216,
alf_homem.v217 AS v217,
alf_homem.v218 AS v218,
alf_homem.v219 AS v219,
alf_homem.v220 AS v220,
alf_homem.v221 AS v221,
alf_homem.v222 AS v222,
alf_homem.v223 AS v223,
alf_homem.v224 AS v224,
alf_homem.v225 AS v225,
alf_homem.v226 AS v226,
alf_homem.v227 AS v227,
alf_homem.v228 AS v228,
alf_homem.v229 AS v229,
alf_homem.v230 AS v230,
alf_homem.v231 AS v231,
alf_homem.v232 AS v232,
alf_homem.v233 AS v233,
alf_homem.v234 AS v234,
alf_homem.v235 AS v235,
alf_homem.v236 AS v236,
alf_homem.v237 AS v237,
alf_homem.v238 AS v238,
alf_homem.v239 AS v239,
alf_homem.v240 AS v240,
alf_homem.v241 AS v241,
alf_homem.v242 AS v242,
alf_homem.v243 AS v243,
alf_homem.v244 AS v244,
alf_homem.v245 AS v245,
alf_homem.v246 AS v246,
alf_homem.v247 AS v247,
alf_homem.v248 AS v248,
alf_homem.v249 AS v249,
alf_homem.v250 AS v250,
alf_homem.v251 AS v251,
alf_homem.v252 AS v252,
alf_homem.v253 AS v253,
alf_homem.v254 AS v254,
alf_homem.v255 AS v255

FROM h3_hexagons
JOIN `basedosdados.br_geobr_mapas.setor_censitario_2010` setor_geom
    ON ST_INTERSECTS(h3_hexagons.h3geo, setor_geom.geometria)
JOIN `basedosdados.br_ibge_censo_demografico.setor_censitario_alfabetizacao_homens_mulheres_2010` alf_homem USING(id_setor_censitario))
SELECT
    h3,
    ANY_VALUE(h3geo) as geometry,
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
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v240)) as v240,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v241)) as v241,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v242)) as v242,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v243)) as v243,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v244)) as v244,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v245)) as v245,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v246)) as v246,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v247)) as v247,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v248)) as v248,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v249)) as v249,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v250)) as v250,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v251)) as v251,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v252)) as v252,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v253)) as v253,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v254)) as v254,
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v255)) as v255
FROM geom_overlap
  GROUP BY h3
