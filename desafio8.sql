SELECT ar.nome AS 'artista', al.album AS 'album' FROM SpotifyClone.artista AS ar
INNER JOIN SpotifyClone.album AS al
ON al.artista_id = ar.artista_id
LIMIT 2;