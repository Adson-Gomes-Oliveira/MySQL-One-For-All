SELECT us.nome AS "usuario", count(lr.data_reproducao) AS "qtde_musicas_ouvidas", round(sum(ca.duracao_segundos) / 60, 2) AS "total_minutos" FROM SpotifyClone.usuario AS us
INNER JOIN lista_reproducao AS lr
ON lr.usuario_id = us.usuario_id
INNER JOIN cancao AS ca
ON ca.cancao_id = lr.cancao_id
GROUP BY usuario;