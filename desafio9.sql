SELECT count(lr.cancao_id) AS "quantidade_musicas_no_historico" FROM SpotifyClone.usuario AS us
INNER JOIN SpotifyClone.lista_reproducao AS lr
ON lr.usuario_id = us.usuario_id
GROUP BY nome
HAVING nome = 'Bill';