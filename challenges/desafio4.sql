SELECT 
us.nome_usuario AS 'pessoa_usuaria',
IF(MAX(YEAR(data_reproducao)) >= 2021, 'Ativa', 'Inativa') AS 'status_pessoa_usuaria'

FROM SpotifyClone.usuario AS us
INNER JOIN SpotifyClone.historico AS his ON us.id_usuario = his.usuario_id
GROUP BY us.nome_usuario
ORDER BY us.nome_usuario;