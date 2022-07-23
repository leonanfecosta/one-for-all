SELECT 
    u.username AS usuario,
    COUNT(mh.user_id) AS qtde_musicas_ouvidas,
    FORMAT(SUM(s.length) / 60, 2) AS total_minutos
FROM
    SpotifyClone.user u
        JOIN
    SpotifyClone.music_history mh ON mh.user_id = u.user_id
        JOIN
    SpotifyClone.songs s ON s.songs_id = mh.songs_id
GROUP BY u.username
ORDER BY u.username;