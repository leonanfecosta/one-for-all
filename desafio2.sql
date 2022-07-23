SELECT 
    COUNT(s.songs_id) AS cancoes,
    COUNT(DISTINCT ar.artist_id) AS artistas,
    COUNT(DISTINCT al.album_id) AS albuns
FROM
    SpotifyClone.songs s
        JOIN
    SpotifyClone.artist ar ON ar.artist_id = s.artist_id
        JOIN
    SpotifyClone.album al ON al.album_id = s.album_id;