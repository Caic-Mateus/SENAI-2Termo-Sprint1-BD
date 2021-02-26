--DML
USE Filmes;

INSERT INTO Generos (Nome)
VALUES	('Ação')
		,('Comédia');

INSERT INTO Filmes (IdGenero,Titulo)
Values	(1,'Rambo')
		,(1,'Velozes e Furiosos')
		,(2,'Os Parças')