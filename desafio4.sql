SELECT 
    u.username AS usuario,
    CASE
		WHEN YEAR(MAX(`date`)) >= 2021 THEN 'Usuário ativo'
        ELSE 'Usuário inativo'
	END AS 'condicao_usuario'
FROM
    SpotifyClone.user u
	JOIN SpotifyClone.music_history mh ON mh.user_id = u.user_id
GROUP BY u.username
ORDER BY u.username;	