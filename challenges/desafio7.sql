SELECT
art.nome AS 'artista',
al.titulo AS 'album',
COUNT(seg.usuario_id) AS 'pessoas_seguidoras'
FROM SpotifyClone.artista AS art
INNER JOIN SpotifyClone.album AS al ON art.id_artista = al.id_artista
INNER JOIN SpotifyClone.seguidores AS seg ON seg.artista_id = art.id_artista
GROUP BY al.id_album
ORDER BY pessoas_seguidoras DESC, artista, album;