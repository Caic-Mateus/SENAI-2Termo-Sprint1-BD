--DQL
USE Locadora;

SELECT * FROM Empresas;

SELECT * FROM Clientes;

SELECT * FROM Marcas;

SELECT * FROM Modelos;

SELECT * FROM Veiculos;

SELECT * FROM Alugueis;

-- listar todos os alugueis mostrando as datas de início e fim, o nome do cliente que alugou e nome do modelo do carro
SELECT Alugueis.DataInicio AS Data_Inicio , Alugueis.DataTermino AS Data_Término, Clientes.Nome , Modelos.Descricao FROM Clientes
INNER JOIN Alugueis
ON Alugueis.idCliente = Clientes.idCliente
INNER JOIN Veiculos
ON Veiculos.idVeiculo = Alugueis.idVeiculo
INNER JOIN Modelos
ON Veiculos.idModelo = Modelos.idModelo;

-- listar os alugueis de um determinado cliente mostrando seu nome, as datas de início e fim e o nome do modelo do carro
SELECT Clientes.Nome AS Nome_Cliente, Alugueis.DataInicio AS Data_Inicio , Alugueis.DataTermino AS Data_Termino , Modelos.Descricao AS Modelo FROM Clientes
INNER JOIN Alugueis
ON Alugueis.idCliente = Clientes.idCliente
INNER JOIN Veiculos
ON Veiculos.idVeiculo = Alugueis.idVeiculo
INNER JOIN Modelos
ON Veiculos.idModelo = Modelos.idModelo
WHERE Clientes.idCliente = 1;