SELECT ca.nome AS 'nome', count(lr.cancao_id) AS 'reproducoes' FROM SpotifyClone.cancao AS ca
INNER JOIN SpotifyClone.lista_reproducao AS lr
ON lr.cancao_id = ca.cancao_id
INNER JOIN SpotifyClone.usuario AS us
ON us.usuario_id = lr.usuario_id
INNER JOIN SpotifyClone.plano AS pl
ON pl.plano_id = us.plano_id
WHERE plano IN('gratuito', 'pessoal')
GROUP BY nome;
