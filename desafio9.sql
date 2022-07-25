SELECT 
    COUNT(songs_id) AS quantidade_musicas_no_historico
FROM
    SpotifyClone.music_history mh
    JOIN SpotifyClone.`user` u ON u.user_id = mh.user_id
WHERE u.username = "Bill";
