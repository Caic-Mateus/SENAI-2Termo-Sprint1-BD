--DQL

USE Medical;

SELECT * FROM tipoUsuario;

SELECT * FROM usuario

SELECT * FROM paciente;

SELECT * FROM medico;

SELECT * FROM especialidade;

SELECT * FROM clinica;

SELECT * FROM situacao;

SELECT * FROM consulta;


SELECT tituloTipoUsuario AS TipoUsuario, email FROM Usuario
INNER JOIN tipoUsuario
ON  usuario.idTipoUsuario = tipoUsuario.idTipoUsuario;



SELECT nomePaciente AS Paciente, nomeMedico AS Médico, nomeEspecialidade AS Especialidade, dataConsulta AS DiaConsulta FROM consulta
INNER JOIN paciente
ON consulta.idPaciente = paciente.idPaciente
INNER JOIN medico
ON consulta.idMedico = medico.idMedico
INNER JOIN especialidade
ON especialidade.idEspecialidade = medico.idEspecialidade



SELECT endereco, horarioAbertura, horarioFechamento, CNPJ, nomeClinica, razaoSocial FROM clinica;



SELECT nomeMedico AS Médico, nomePaciente AS Paciente, descricao AS Descrição, dataConsulta AS DataAgendamento FROM medico
INNER JOIN consulta
ON medico.idMedico = consulta.idMedico
INNER JOIN paciente
ON consulta.idPaciente = paciente.idPaciente
WHERE medico.IdMedico = 3
	


SELECT nomePaciente AS Paciente, nomeMedico AS Médico, dataConsulta FROM medico
INNER JOIN consulta
ON medico.idMedico = consulta.idMedico
INNER JOIN paciente
ON consulta.idPaciente = paciente.idPaciente
WHERE paciente.idPaciente = 2; 


select tituloTipoUsuario[Permissao], email from Usuario
inner join tipoUsuario
on usuario.idTipoUsuario = tipoUsuario.idTipoUsuario
where email = 'adm@adm.com' and senha = 'adm123';



SELECT COUNT (usuario.idUsuario) AS QtdUsuarios FROM usuario;



SELECT nomePaciente AS Nomes, CONVERT (VARCHAR, dataNascimento, 101) AS DataNascimento FROM paciente; --Sistema EUA



SELECT nomePaciente AS Nomes, DATEDIFF(HOUR, dataNascimento,GETDATE())/8766 AS Idades FROM paciente;




CREATE FUNCTION QntdMedicos(@idEspecialidade VARCHAR(200))
RETURNS INT 
AS
BEGIN 
DECLARE @quantidade AS INT
SET @quantidade = 
(
SELECT COUNT(nomeMedico) FROM medico 
INNER JOIN especialidade
ON medico.idEspecialidade = especialidade.idEspecialidade
WHERE especialidade.nomeEspecialidade = @idEspecialidade 
)
RETURN @quantidade
END 


SELECT quantidade = dbo.QntdMedicos('Pediatria'); 



CREATE PROCEDURE calcularIdade(@nomePaciente VARCHAR(100))
AS
SELECT paciente.nomePaciente, paciente.dataNascimento,
DATEDIFF(YEAR, paciente.dataNascimento,GETDATE()) AS idadeAtual
FROM paciente
WHERE paciente.nomePaciente = @nomePaciente;
		
EXECUTE calcularIdade @nomePaciente = 'Ligia';



	