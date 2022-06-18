SELECT us.nome AS 'usuario',
	CASE
		WHEN YEAR(max(lr.data_reproducao)) = 2021 THEN 'Usuário ativo'
        ELSE 'Usuário inativo'
    END AS 'condicao_usuario'
FROM usuario AS us
INNER JOIN lista_reproducao AS lr
ON lr.usuario_id = us.usuario_id
GROUP BY usuario