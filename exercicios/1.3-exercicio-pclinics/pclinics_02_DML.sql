--DML
USE Pclinics;

INSERT INTO Clinicas(RazaoSocial,CNPJ, Endereco)
VALUES	 ('Petshow', 45546609, 'Rua Barcelona, 230');
		
INSERT INTO Donos (Nome)
VALUES	('Caic')
		,('Saulo');

INSERT INTO TiposPets (Descricao)
VALUES	('Cachorro')
		,('Gato');

INSERT INTO Racas (Descricao, idTipoPet)
VALUES	('Labrador', 1)
		,('Siamês',2
