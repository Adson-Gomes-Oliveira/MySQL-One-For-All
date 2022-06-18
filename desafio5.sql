SELECT ca.nome AS 'cancao', count(lr.cancao_id) AS 'reproducoes' FROM cancao AS ca
INNER JOIN lista_reproducao AS lr
ON lr.cancao_id = ca.cancao_id
GROUP BY cancao
ORDER BY 
reproducoes DESC,
cancao
LIMIT 2;