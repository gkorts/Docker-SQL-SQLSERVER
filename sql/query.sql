WITH ranking_clientes AS (
    SELECT
        c.nome,
        pf.renda_mensal,
        pf.score_credito,

        RANK() OVER (
            ORDER BY pf.score_credito DESC
        ) AS ranking_credito

    FROM clientes c
    INNER JOIN perfil_financeiro pf
        ON c.cliente_id = pf.cliente_id
)

SELECT *
FROM ranking_clientes;