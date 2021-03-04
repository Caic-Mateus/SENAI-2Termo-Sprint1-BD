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
		,('Siamês',2);

INSERT INTO Pets (NomePet,DataNascimento,idRaca,idDono)
VALUES	('Jojo', '10/08/2017', 1, 1)
		,('Lili', '14/04/2018', 1, 2)
		,('Joca', '30/09/2016', 2,2);

INSERT INTO Veterinarios (NomeVeterinario,CRMV,idClinica)
VALUES	('Rogério', 12345, 1)
		,('Carlos', 54321, 1);

INSERT INTO Atendimentos (Descricao, DataAtendimento, idVeterinario, idPet)
VALUES	('O pet se encontra bem', '26/02/2020', 1, 1)
		,('Cirurgia deverá ser marcada', '26/02/2020',1,2)
		,('O pet se encontra bem', '26/02/2020', 2, 3);