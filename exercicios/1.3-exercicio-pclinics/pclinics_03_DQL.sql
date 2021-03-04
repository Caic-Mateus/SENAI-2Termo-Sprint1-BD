--DQL
USE Pclinics

--listar todos os veterinários (nome e CRMV) de uma clínica (razão social)
SELECT Veterinarios.NomeVeterinario AS NomeVeterinario, Veterinarios.CRMV AS CRMV, Clinicas.RazaoSocial FROM Clinicas
INNER JOIN Veterinarios 
ON Veterinarios.idClinica = Clinicas.idClinica;

-- listar todas as raças que começam com a letra S
SELECT Racas.Descricao FROM Racas
WHERE Racas.Descricao LIKE 'S%';

-- listar todos os tipos de pet que terminam com a letra O
SELECT TiposPets.Descricao FROM TiposPets
WHERE TiposPets.Descricao LIKE '%O'

-- listar todos os pets mostrando os nomes dos seus donos
SELECT Pets.NomePet AS NomesPets , Donos.Nome FROM Donos
INNER JOIN Pets
ON Donos.idDono = Pets.idDono
-- listar todos os atendimentos mostrando o nome do veterinário que atendeu,
--o nome, a raça e o tipo do pet que foi atendido, o nome do dono do pet e o nome da clínica onde o pet foi atendido

SELECT Veterinarios.NomeVeterinario AS Nome_Veterinario, Pets.NomePet AS Nome_Pet, Racas.Descricao AS Raca, TiposPets.Descricao AS Tipo_Pet, Donos.Nome AS Dono, Clinicas.RazaoSocial FROM Clinicas, Atendimentos
INNER JOIN Veterinarios
ON Veterinarios.idVeterinario = Atendimentos.idVeterinario
INNER JOIN Pets
ON Pets.idPet = Atendimentos.idPet
INNER JOIN Racas
ON Pets.idRaca = Racas.idRaca
INNER JOIN TiposPets
ON Racas.idTipoPet = TiposPets.idTipoPet
INNER JOIN Donos
ON Donos.idDono = Pets.idDono;