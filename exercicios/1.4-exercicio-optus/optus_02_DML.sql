--DML
USE Optus;

INSERT INTO Artistas (Nome)
VALUES	('Luan Santana')
		,('Justin Bieber')
		,('Projota');

INSERT INTO Estilos (NomeEstilo)
VALUES	('Sertanejo')
		,('Pop')
		,('Rap');

INSERT INTO Albuns (Titulo,DataLancamento,Localizacao,QtdMinutos,Ativo,idArtista)
VALUES	('Tô de cara' , '2009', 'Brasil', 68, 1, 1)
		,('Purpose', '2015', 'Canadá', 49, 1, 2);

INSERT INTO AlbunsEstilos (idAlbum,idEstilo)
VALUES	(1,1)
		,(2,2)

INSERT INTO Usuarios (Nome,Email,Senha,Permissao)
VALUES	('Caic', 'caic@email.com', '12345', 'Administrador')
		,('João','joao@email.com','54321','Comum')