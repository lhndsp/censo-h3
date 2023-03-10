
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
rel_par_conj.v001 AS v001,
rel_par_conj.v002 AS v002,
rel_par_conj.v003 AS v003,
rel_par_conj.v004 AS v004,
rel_par_conj.v005 AS v005,
rel_par_conj.v006 AS v006,
rel_par_conj.v007 AS v007,
rel_par_conj.v008 AS v008,
rel_par_conj.v009 AS v009,
rel_par_conj.v010 AS v010,
rel_par_conj.v011 AS v011,
rel_par_conj.v012 AS v012,
rel_par_conj.v013 AS v013,
rel_par_conj.v014 AS v014,
rel_par_conj.v015 AS v015,
rel_par_conj.v016 AS v016,
rel_par_conj.v017 AS v017,
rel_par_conj.v018 AS v018,
rel_par_conj.v019 AS v019,
rel_par_conj.v020 AS v020,
rel_par_conj.v021 AS v021,
rel_par_conj.v022 AS v022,
rel_par_conj.v023 AS v023,
rel_par_conj.v024 AS v024,
rel_par_conj.v025 AS v025,
rel_par_conj.v026 AS v026,
rel_par_conj.v027 AS v027,
rel_par_conj.v028 AS v028,
rel_par_conj.v029 AS v029,
rel_par_conj.v030 AS v030,
rel_par_conj.v031 AS v031,
rel_par_conj.v032 AS v032,
rel_par_conj.v033 AS v033,
rel_par_conj.v034 AS v034,
rel_par_conj.v035 AS v035,
rel_par_conj.v036 AS v036,
rel_par_conj.v037 AS v037,
rel_par_conj.v038 AS v038,
rel_par_conj.v039 AS v039,
rel_par_conj.v040 AS v040,
rel_par_conj.v041 AS v041,
rel_par_conj.v042 AS v042,
rel_par_conj.v043 AS v043,
rel_par_conj.v044 AS v044,
rel_par_conj.v045 AS v045,
rel_par_conj.v046 AS v046,
rel_par_conj.v047 AS v047,
rel_par_conj.v048 AS v048,
rel_par_conj.v049 AS v049,
rel_par_conj.v050 AS v050,
rel_par_conj.v051 AS v051,
rel_par_conj.v052 AS v052,
rel_par_conj.v053 AS v053,
rel_par_conj.v054 AS v054,
rel_par_conj.v055 AS v055,
rel_par_conj.v056 AS v056,
rel_par_conj.v057 AS v057,
rel_par_conj.v058 AS v058,
rel_par_conj.v059 AS v059,
rel_par_conj.v060 AS v060,
rel_par_conj.v061 AS v061,
rel_par_conj.v062 AS v062,
rel_par_conj.v063 AS v063,
rel_par_conj.v064 AS v064,
rel_par_conj.v065 AS v065,
rel_par_conj.v066 AS v066,
rel_par_conj.v067 AS v067,
rel_par_conj.v068 AS v068,
rel_par_conj.v069 AS v069,
rel_par_conj.v070 AS v070,
rel_par_conj.v071 AS v071,
rel_par_conj.v072 AS v072,
rel_par_conj.v073 AS v073,
rel_par_conj.v074 AS v074,
rel_par_conj.v075 AS v075,
rel_par_conj.v076 AS v076,
rel_par_conj.v077 AS v077,
rel_par_conj.v078 AS v078,
rel_par_conj.v079 AS v079,
rel_par_conj.v080 AS v080,
rel_par_conj.v081 AS v081,
rel_par_conj.v082 AS v082,
rel_par_conj.v083 AS v083,
rel_par_conj.v084 AS v084,
rel_par_conj.v085 AS v085,
rel_par_conj.v086 AS v086,
rel_par_conj.v087 AS v087,
rel_par_conj.v088 AS v088,
rel_par_conj.v089 AS v089,
rel_par_conj.v090 AS v090,
rel_par_conj.v091 AS v091,
rel_par_conj.v092 AS v092,
rel_par_conj.v093 AS v093,
rel_par_conj.v094 AS v094,
rel_par_conj.v095 AS v095,
rel_par_conj.v096 AS v096,
rel_par_conj.v097 AS v097,
rel_par_conj.v098 AS v098,
rel_par_conj.v099 AS v099,
rel_par_conj.v100 AS v100,
rel_par_conj.v101 AS v101,
rel_par_conj.v102 AS v102,
rel_par_conj.v103 AS v103,
rel_par_conj.v104 AS v104,
rel_par_conj.v105 AS v105,
rel_par_conj.v106 AS v106,
rel_par_conj.v107 AS v107,
rel_par_conj.v108 AS v108,
rel_par_conj.v109 AS v109,
rel_par_conj.v110 AS v110,
rel_par_conj.v111 AS v111,
rel_par_conj.v112 AS v112,
rel_par_conj.v113 AS v113,
rel_par_conj.v114 AS v114,
rel_par_conj.v115 AS v115,
rel_par_conj.v116 AS v116,
rel_par_conj.v117 AS v117,
rel_par_conj.v118 AS v118,
rel_par_conj.v119 AS v119,
rel_par_conj.v120 AS v120,
rel_par_conj.v121 AS v121,
rel_par_conj.v122 AS v122,
rel_par_conj.v123 AS v123,
rel_par_conj.v124 AS v124,
rel_par_conj.v125 AS v125,
rel_par_conj.v126 AS v126,
rel_par_conj.v127 AS v127,
rel_par_conj.v128 AS v128,
rel_par_conj.v129 AS v129,
rel_par_conj.v130 AS v130,
rel_par_conj.v131 AS v131,
rel_par_conj.v132 AS v132,
rel_par_conj.v133 AS v133,
rel_par_conj.v134 AS v134,
rel_par_conj.v135 AS v135,
rel_par_conj.v136 AS v136,
rel_par_conj.v137 AS v137,
rel_par_conj.v138 AS v138,
rel_par_conj.v139 AS v139,
rel_par_conj.v140 AS v140,
rel_par_conj.v141 AS v141,
rel_par_conj.v142 AS v142,
rel_par_conj.v143 AS v143,
rel_par_conj.v144 AS v144,
rel_par_conj.v145 AS v145,
rel_par_conj.v146 AS v146,
rel_par_conj.v147 AS v147,
rel_par_conj.v148 AS v148,
rel_par_conj.v149 AS v149,
rel_par_conj.v150 AS v150,
rel_par_conj.v151 AS v151,
rel_par_conj.v152 AS v152,
rel_par_conj.v153 AS v153,
rel_par_conj.v154 AS v154,
rel_par_conj.v155 AS v155,
rel_par_conj.v156 AS v156,
rel_par_conj.v157 AS v157,
rel_par_conj.v158 AS v158,
rel_par_conj.v159 AS v159,
rel_par_conj.v160 AS v160,
rel_par_conj.v161 AS v161,
rel_par_conj.v162 AS v162,
rel_par_conj.v163 AS v163,
rel_par_conj.v164 AS v164,
rel_par_conj.v165 AS v165,
rel_par_conj.v166 AS v166,
rel_par_conj.v167 AS v167,
rel_par_conj.v168 AS v168,
rel_par_conj.v169 AS v169,
rel_par_conj.v170 AS v170,
rel_par_conj.v171 AS v171,
rel_par_conj.v172 AS v172,
rel_par_conj.v173 AS v173,
rel_par_conj.v174 AS v174,
rel_par_conj.v175 AS v175,
rel_par_conj.v176 AS v176,
rel_par_conj.v177 AS v177,
rel_par_conj.v178 AS v178,
rel_par_conj.v179 AS v179,
rel_par_conj.v180 AS v180,
rel_par_conj.v181 AS v181,
rel_par_conj.v182 AS v182,
rel_par_conj.v183 AS v183,
rel_par_conj.v184 AS v184,
rel_par_conj.v185 AS v185,
rel_par_conj.v186 AS v186,
rel_par_conj.v187 AS v187,
rel_par_conj.v188 AS v188,
rel_par_conj.v189 AS v189,
rel_par_conj.v190 AS v190,
rel_par_conj.v191 AS v191,
rel_par_conj.v192 AS v192,
rel_par_conj.v193 AS v193,
rel_par_conj.v194 AS v194,
rel_par_conj.v195 AS v195,
rel_par_conj.v196 AS v196,
rel_par_conj.v197 AS v197,
rel_par_conj.v198 AS v198,
rel_par_conj.v199 AS v199,
rel_par_conj.v200 AS v200,
rel_par_conj.v201 AS v201,
rel_par_conj.v202 AS v202,
rel_par_conj.v203 AS v203,
rel_par_conj.v204 AS v204,
rel_par_conj.v205 AS v205,
rel_par_conj.v206 AS v206,
rel_par_conj.v207 AS v207,
rel_par_conj.v208 AS v208,
rel_par_conj.v209 AS v209,
rel_par_conj.v210 AS v210,
rel_par_conj.v211 AS v211,
rel_par_conj.v212 AS v212,
rel_par_conj.v213 AS v213

FROM h3_hexagons
JOIN `basedosdados.br_geobr_mapas.setor_censitario_2010` setor_geom
    ON ST_INTERSECTS(h3_hexagons.h3geo, setor_geom.geometria)
JOIN `basedosdados.br_ibge_censo_demografico.setor_censitario_relacao_parentesco_conjuges_2010` rel_par_conj USING(id_setor_censitario))
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
ROUND(SUM(SAFE_DIVIDE(intersection_h3, setor_area) * v213)) as v213
FROM geom_overlap
  GROUP BY h3
