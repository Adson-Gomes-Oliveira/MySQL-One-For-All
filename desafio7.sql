SELECT ar.nome AS 'artista', al.album AS 'album', count(af.usuario_id) AS 'seguidores' FROM SpotifyClone.artista AS ar
INNER JOIN SpotifyClone.album AS al
ON al.artista_id = ar.artista_id
INNER JOIN SpotifyClone.artista_favorito AS af
ON af.artista_id = al.artista_id
GROUP BY artista,
album
ORDER BY seguidores DESC,
artista ASC,
album ASC;