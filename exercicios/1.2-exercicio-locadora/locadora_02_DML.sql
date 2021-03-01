USE Locadora;

INSERT INTO Empresas(NomeEmpresa)
VALUES	 ('Movida')
		,('Localiza');

INSERT INTO Clientes(Nome,CPF)
VALUES ('Caic Mateus',9559343)
		,('Saulo Santos',2343423)

INSERT INTO Marcas(NomeMarca)
VALUES	('Ford')
		,('GM')
		,('Fiat');

INSERT INTO Modelos(Descricao,idMarca)
VALUES	 ('Fiesta', 1)
		,('Onix', 2)
		,('Argo', 3);



INSERT INTO Veiculos(idModelo,Placa,idEmpresa)
VALUES	(1,'GRT098',1)
		,(2,'GTS907',1)
		,(3,'EWD240',2)
		,(1,'FGT432',2);

INSERT INTO Alugueis (idCliente,idVeiculo,DataInicio,DataTermino)
VALUES	(1, 1, 25/02/2020, 26/02/2020)
		,(2, 3, 26/02/2020, 27/02/2020);

UPDATE Alugueis
SET DataInicio = 2020-02-25 
WHERE idAluguel = 1;