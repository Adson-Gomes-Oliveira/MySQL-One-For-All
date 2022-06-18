SELECT count(DISTINCT can.cancao_id) AS "cancoes", count(DISTINCT art.artista_id) AS "artistas", count(DISTINCT alb.album_id) AS "albuns" FROM SpotifyClone.cancao AS can
INNER JOIN album AS alb
ON alb.album_id = can.album_id
INNER JOIN artista AS art
ON art.artista_id = alb.artista_id;