SELECT mus.titulo AS 'cancao',
COUNT(hist.musica_id) AS 'reproducoes'
FROM SpotifyClone.musica AS mus
INNER JOIN SpotifyClone.historico AS hist ON hist.musica_id = mus.musica_id
GROUP BY hist.musica_id
ORDER BY  reproducoes DESC, mus.titulo
LIMIT 2;
