--DQL

USE Optus;

-- listar todos os usuários administradores, sem exibir suas senhas
SELECT Usuarios.Nome, Usuarios.Email, Usuarios.Permissao FROM Usuarios
WHERE Usuarios.Permissao = 'Administrador';

-- listar todos os álbuns lançados após o um determinado ano de lançamento
SELECT Albuns.Titulo, Artistas.Nome AS Nome_Artista, Albuns.DataLancamento, Albuns.Localizacao, Albuns.QtdMinutos, Albuns.Ativo FROM Albuns
INNER JOIN Artistas
ON Albuns.idArtista = Artistas.idArtista
WHERE Albuns.DataLancamento > '2010';
-- listar os dados de um usuário através do e-mail e senha
SELECT * FROM Usuarios
WHERE Usuarios.Email = 'caic@email.com'
AND Usuarios.Senha = '12345'
-- listar todos os álbuns ativos, mostrando o nome do artista e os estilos do álbum 
SELECT Artistas.Nome, Albuns.Titulo, Estilos.NomeEstilo AS Estilo FROM Albuns
INNER JOIN Artistas
ON Albuns.idArtista = Artistas.idArtista
INNER JOIN AlbunsEstilos
ON AlbunsEstilos.idAlbum = Albuns.idAlbum
INNER JOIN Estilos
ON Estilos.idEstilo = AlbunsEstilos.idEstilo
WHERE Albuns.Ativo =1;