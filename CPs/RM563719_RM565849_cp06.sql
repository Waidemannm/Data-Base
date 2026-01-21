--Moisés Waidemann RM563719
--Gabriel Sbrana RM565849

SELECT
    TO_CHAR(dt_hr_consulta, 'YYYY') AS "Ano_RM563719_RM565849",
    TO_CHAR(dt_hr_consulta, 'MM')   AS "Mês_RM563719_RM565849",
    SUM(vl_consulta)                AS "Valor_Total_RM563719_RM565849"
FROM t_rhstu_consulta c
INNER JOIN t_rhstu_consulta_forma_pagto f
ON (c.nr_consulta = f.nr_consulta)
GROUP BY TO_CHAR(dt_hr_consulta, 'YYYY'), TO_CHAR(dt_hr_consulta, 'MM')
ORDER BY 1, 2;

CREATE OR REPLACE VIEW v_topn_RM563719_RM565849 AS
SELECT 
    m.nm_medicamento AS nome_medicamento_rm563719_rm565849,
    COUNT(*) AS qtde_receitacoes_rm563719_rm565849
FROM T_RHSTU_PRESCICAO_MEDICA r
INNER JOIN t_rhstu_medicamento m 
    ON r.id_medicamento = m.id_medicamento
GROUP BY m.nm_medicamento;
SELECT * FROM v_topn_RM563719_RM565849

CREATE OR REPLACE VIEW v_consulta_diasemana_rm563719_rm565849 AS
SELECT
    TO_CHAR(dt_hr_consulta, 'DAY')  AS dia_semana,
    TO_CHAR(dt_hr_consulta, 'HH24') AS hora,
    COUNT(*) AS qtd_consultas
FROM t_rhstu_consulta
GROUP BY TO_CHAR(dt_hr_consulta, 'DAY'), TO_CHAR(dt_hr_consulta, 'HH24')
ORDER BY 1, 2;

SELECT * FROM v_consulta_diasemana_rm563719_rm565849;

CREATE OR REPLACE VIEW v_consulta_medico_rm563719_rm565849 AS
SELECT
    m.cd_medico,
    m.nm_medico,
    COUNT(c.nr_consulta) AS qtd_consultas,
    ROUND(AVG(c.vl_consulta), 2) AS media_valor
FROM t_rhstu_medico m
LEFT JOIN t_rhstu_consulta c
ON (m.cd_medico = c.cd_medico)
GROUP BY m.cd_medico, m.nm_medico
ORDER BY qtd_consultas DESC;
SELECT * FROM v_consulta_medico_rm563719_rm565849;