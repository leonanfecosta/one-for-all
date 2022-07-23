SELECT 
    s.song_name AS cancao,
    COUNT(mh.songs_id) AS reproducoes
FROM 
    SpotifyClone.songs s
JOIN SpotifyClone.music_history mh ON mh.songs_id = s.songs_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;