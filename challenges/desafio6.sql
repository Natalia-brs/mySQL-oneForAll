SELECT
FORMAT(MIN(pl.valor), 2) AS 'faturamento_minimo',
FORMAT(MAX(pl.valor), 2) AS 'faturamento_maximo',
FORMAT(AVG(pl.valor), 2) AS 'faturamento_medio',
FORMAT(SUM(pl.valor), 2) AS 'faturamento_total'
FROM SpotifyClone.usuario AS us
INNER JOIN SpotifyClone.planos AS pl ON us.plano_id = pl.id
