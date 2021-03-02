--DQL
USE SENAI_HROADS_TARDE

SELECT* FROM Personagem; -- Seleciona todos os personagens

SELECT * FROM Classe; -- Seleciona todas as classes

SELECT Nome AS Classe FROM Classe; --Aparecer apenas o Nome da Classe

SELECT * FROM Habilidade;

SELECT COUNT (idHabilidade) AS QuantidadeHabilidades FROM Habilidade; --Mostra a quantidade de habilidades com o nome dado pelo AS;

SELECT idHabilidade FROM Habilidade 
ORDER BY idHabilidade -- Ordenando os tipos de habilidade por ordem crescente

SELECT * FROM TipoHabilidade;

SELECT Habilidade.Nome AS Habilidades, TipoHabilidade.Descricao AS TipoHabilidades FROM TipoHabilidade
INNER JOIN Habilidade
ON TipoHabilidade.idTipoHabilidade = Habilidade.idTipoHabilidade;-- Selecionando as habilidades e os tipos delas

SELECT Personagem.Nome AS Personagem, Classe.Nome AS Classe From Personagem
INNER JOIN Classe
ON Personagem.idClasse = Classe.idClasse -- Selecionando personagems e as classes deles

SELECT Personagem.Nome AS Personagem, Classe.Nome From Classe
LEFT JOIN Personagem
ON Personagem.idClasse =  Classe.idClasse; -- Selecionando os personagems e todas as classes independente se são correspondentes ou nao


--16 Selecionando todas as classes e suas respectivas habilidades
SELECT Classe.Nome AS Classes, Habilidade.Nome AS Habilidade From Classe
INNER JOIN ClasseHabilidade
ON Classe.idClasse = ClasseHabilidade.idClasse

INNER JOIN Habilidade
ON Habilidade.idHabilidade = ClasseHabilidade.idHabilidade 

--17 Selecionar as habilidades e classes, somente as que possuem correspondecia
SELECT Habilidade.Nome AS Habilidades , Classe.Nome AS Classes From Classe
INNER JOIN ClasseHabilidade
ON Classe.idClasse = ClasseHabilidade.idClasse

INNER JOIN Habilidade
ON Habilidade.idHabilidade = ClasseHabilidade.idHabilidade 

--18 Selecionar todas as habilidades e suas classes (mesmo que elas não tenham correspondência).
SELECT Habilidade.Nome AS Habilidades , Classe.Nome AS Classes From Classe
INNER JOIN ClasseHabilidade
ON Classe.idClasse = ClasseHabilidade.idClasse

INNER JOIN Habilidade
ON Habilidade.idHabilidade = ClasseHabilidade.idHabilidade 