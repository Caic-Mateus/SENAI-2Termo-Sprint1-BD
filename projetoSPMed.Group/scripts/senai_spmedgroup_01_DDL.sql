--DDL

CREATE DATABASE Medical; 

USE Medical;


CREATE TABLE tipoUsuario
(
		idTipoUsuario INT PRIMARY KEY IDENTITY
		,tituloTipoUsuario VARCHAR(50) NOT NULL
);

CREATE TABLE usuario
(
		idUsuario INT PRIMARY KEY IDENTITY
		,idTipoUsuario INT FOREIGN KEY REFERENCES tipoUsuario(idTipoUsuario)
		,nomeUsuario VARCHAR(35) 
		,email VARCHAR (100) UNIQUE NOT NULL
		,senha VARCHAR (50) NOT NULL
);

CREATE TABLE especialidade
(
		idEspecialidade INT PRIMARY KEY IDENTITY
		,nomeEspecialidade VARCHAR (50) UNIQUE NOT NULL

);

CREATE TABLE clinica
(
		idClinica INT PRIMARY KEY IDENTITY
		,CNPJ CHAR(14) UNIQUE NOT NULL
		,horarioAbertura TIME NOT NULL
		,horarioFechamento TIME NOT NULL
		,endereco VARCHAR (50) UNIQUE NOT NULL
		,nomeClinica VARCHAR(50) UNIQUE NOT NULL
		,razaoSocial VARCHAR (50) UNIQUE NOT NULL
		
);

CREATE TABLE medico
(
		idMedico INT PRIMARY KEY IDENTITY
		,idUsuario INT FOREIGN KEY REFERENCES usuario (idUsuario)
		,idEspecialidade INT FOREIGN KEY REFERENCES especialidade (idEspecialidade)
		,idClinica INT FOREIGN KEY REFERENCES clinica (idClinica)
		,nomeMedico VARCHAR (50) NOT NULL
		,CRM VARCHAR (10) UNIQUE NOT NULL
);

CREATE TABLE paciente
(
		idPaciente INT PRIMARY KEY IDENTITY 
		,idUsuario INT FOREIGN KEY REFERENCES usuario(idUsuario)
		,dataNascimento DATE NOT NULL
		,nomePaciente VARCHAR(50) NOT NULL
		,RG CHAR(9) UNIQUE NOT NULL
		,CPF CHAR (11) UNIQUE NOT NULL
		,telefone VARCHAR(11)
		,endereco VARCHAR (100) UNIQUE NOT NULL
);

CREATE TABLE situacao
(
		idSituacao INT PRIMARY KEY IDENTITY
		,situacao VARCHAR (200) NOT NULL
);

CREATE TABLE consulta
(
	idConsulta INT PRIMARY KEY IDENTITY
	,idMedico INT FOREIGN KEY REFERENCES medico(idMedico)
	,idPaciente INT FOREIGN KEY REFERENCES paciente(idPaciente)
	,idSituacao INT FOREIGN KEY REFERENCES situacao(idSituacao)
	,dataConsulta DATE NOT NULL
	,descricao VARCHAR (150) default ('Sem descrição')
);