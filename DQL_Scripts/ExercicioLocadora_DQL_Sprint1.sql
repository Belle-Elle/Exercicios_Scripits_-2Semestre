USE LOCADORA_ISA
GO

SELECT * FROM EMPRESA
GO

SELECT * FROM MARCA
GO

SELECT * FROM CLIENTE
GO

SELECT * FROM MODELO
GO

SELECT * FROM VEICULO
GO

SELECT * FROM ALUGUEL
GO

SELECT dataluguel, nomeCliente, nomeModelo FROM ALUGUEL
INNER JOIN CLIENTE
ON ALUGUEL.idCliente = CLIENTE.idCliente
INNER JOIN MODELO
ON ALUGUEL.idVeiculo = MODELO.idModelo;
GO

SELECT nomeCliente, dataluguel, nomeModelo FROM ALUGUEL
INNER JOIN CLIENTE
ON ALUGUEL.idCliente = Cliente.idCliente
INNER JOIN MODELO
ON ALUGUEL.idVeiculo = MODELO.idModelo
WHERE nomeCliente = 'EDSON'
GO
