--DML
USE SENAI_HROADS_TARDE;

INSERT INTO Classe (Nome)
VALUES	('Bárbaro')
		,('Cruzado')
		,('Caçadora de Demônios')
		,('Monge')
		,('Necromante')
		,('Feiticeiro')
		,('Arcanista');

INSERT INTO TipoHabilidade (Descricao)
VALUES	('Ataque')
		,('Defesa')
		,('Cura')
		,('Magia');

INSERT INTO Habilidade (idTipoHabilidade,Nome)
VALUES	(1, 'Lança Mortal')
		,(2, 'Escudo Supremo')
		,(3, 'Recuperar Vida');

INSERT INTO ClasseHabilidade (idClasse, idHabilidade)
VALUES	(1,1)
		,(1,2)
		,(2,2)
		,(3,1)
		,(4,3)
		,(4,2)
		,(5, NULL)
		,(6,2)
		,(7, NULL);

INSERT INTO Personagem (idClasse, Nome, MaxVida, MaxMana, DataAtt, DataCriacao)
VALUES	(1, 'DeuBug', 100, 80,'02/03/2021','18/01/2019')
		,(4, 'BitBug', 70, 100,'02/03/2021' ,'17/03/2016' )
		,(7, 'Fer8', 75, 60,'02/03/2021' ,'18/03/2018');
	

UPDATE Personagem
SET Nome = 'Fer7'
WHERE idPersonagem = 3;

UPDATE Classe
SET Nome = 'Necromancer'
WHERE idClasse = 5;
