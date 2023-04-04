SELECT
    COUNT(DISTINCT mus.musica_id) AS cancoes,
    COUNT(DISTINCT art.id_artista) AS artistas,
    COUNT(DISTINCT al.id_album)  AS albuns
FROM 
SpotifyClone.musica AS mus,
SpotifyClone.artista AS art,
SpotifyClone.album AS al;
