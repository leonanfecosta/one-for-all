SELECT 
    s.song_name AS nome, COUNT(mh.songs_id) AS reproducoes
FROM
    SpotifyClone.songs s
        JOIN
    SpotifyClone.music_history mh ON mh.songs_id = s.songs_id
        JOIN
    SpotifyClone.`user` u ON u.user_id = mh.user_id
WHERE u.plan_id IN(1,4)
GROUP BY nome
ORDER BY nome;