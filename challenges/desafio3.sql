SELECT
us.nome_usuario AS 'pessoa_usuaria',
COUNT(his.usuario_id) AS 'musicas_ouvidas',
ROUND(SUM(mus.duração_seg / 60), 2)  AS 'total_minutos'

FROM SpotifyClone.usuario AS us
INNER JOIN SpotifyClone.historico AS his ON us.id_usuario = his.usuario_id
INNER JOIN SpotifyClone.musica AS mus ON mus.musica_id = his.musica_id
GROUP BY us.nome_usuario
ORDER BY us.nome_usuario;