SELECT 
    art.nome AS 'artista', al.titulo AS 'album'
FROM
    SpotifyClone.artista AS art
        INNER JOIN
    SpotifyClone.album AS al ON art.id_artista = al.id_artista
WHERE
    art.nome = 'Elis Regina'
ORDER BY album