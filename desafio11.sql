SELECT nome AS 'nome_musica', REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(
nome, "Her Own", "Trybe"), "Silly", "Nice"), "Circus", "Pull Request"), "Inner Fire", "Project"), "Streets", "Code Review")
AS "novo_nome" FROM SpotifyClone.cancao
WHERE nome IN ("Dance With Her Own", "Let's Be Silly", "Magic Circus", "Troubles Of My Inner Fire", "Without my Streets")
ORDER BY nome_musica;