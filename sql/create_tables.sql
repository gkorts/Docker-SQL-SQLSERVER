CREATE TABLE clientes (
    cliente_id INT IDENTITY(1,1) PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(120) UNIQUE NOT NULL,
    telefone VARCHAR(20),
    data_cadastro DATETIME DEFAULT GETDATE()
);

CREATE TABLE perfil_financeiro (
    perfil_id INT IDENTITY(1,1) PRIMARY KEY,
    cliente_id INT UNIQUE NOT NULL,
    renda_mensal DECIMAL(10,2),
    score_credito INT,
    limite_credito DECIMAL(10,2),
    possui_investimentos BIT,
    CONSTRAINT fk_cliente
        FOREIGN KEY (cliente_id)
        REFERENCES clientes(cliente_id)
);