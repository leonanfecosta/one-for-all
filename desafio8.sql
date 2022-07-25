SELECT 
    ar.artist_name AS artista, al.album_name AS album
FROM
    SpotifyClone.artist ar
    JOIN SpotifyClone.album al ON al.artist_id = ar.artist_id
WHERE ar.artist_name = "Walter Phoenix";
