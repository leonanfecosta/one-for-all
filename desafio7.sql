SELECT 
    ar.artist_name AS artista,
    al.album_name AS album,
    COUNT(f.user_id) AS seguidores
FROM
    SpotifyClone.artist ar
        JOIN
    SpotifyClone.album al ON al.artist_id = ar.artist_id
        JOIN
    SpotifyClone.followers f ON f.artist_id = ar.artist_id
GROUP BY artista , album
ORDER BY seguidores DESC, artista, album;

