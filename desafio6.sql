SELECT 
    MIN(plan_value) AS faturamento_minimo,
    MAX(plan_value) AS faturamento_maximo,
    FORMAT(AVG(plan_value), 2) AS faturamento_medio,
    SUM(plan_value) AS faturamento_total
FROM
    SpotifyClone.plans p
        JOIN
    SpotifyClone.user u ON u.plan_id = p.plan_id;