SELECT round(min(pl.valor), 2) AS "faturamento_minimo", 
round(max(pl.valor), 2) AS "faturamento_maximo",
round(avg(pl.valor), 2) AS "faturamento_medio",
round(sum(pl.valor), 2) AS "faturamento_total"
FROM plano AS pl
INNER JOIN usuario AS us
ON us.plano_id = pl.plano_id;