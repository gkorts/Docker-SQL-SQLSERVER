INSERT INTO clientes (
    nome,
    email,
    telefone
)
VALUES
('Gabriel Silva', 'gabriel@email.com', '21999999999'),
('Ana Costa', 'ana@email.com', '21988888888');

INSERT INTO perfil_financeiro (
    cliente_id,
    renda_mensal,
    score_credito,
    limite_credito,
    possui_investimentos
)
VALUES
(1, 8500.00, 780, 15000.00, 1),
(2, 4200.00, 650, 5000.00, 0);