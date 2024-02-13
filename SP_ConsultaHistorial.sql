
EXEC SEL_HistoriaPaciente 10

ALTER PROC SEL_HistoriaPaciente(
				@idpaciente paciente)

AS
set nocount on

/*
select * from historia
select * from Medico
select * from historiapaciente
select * from Turno
select * from TurnoEstado
select * from TurnoPaciente

*/

IF exists(SELECT * from Paciente P

	INNER JOIN HistoriaPaciente HP
	ON HP.idPaciente = P.idPacientes

	INNER JOIN Historia H
	ON H.idHistoria = HP.idHistoria

	INNER JOIN MedicoEspecialidad ME
	ON ME.idMedico = HP.idMedico

	INNER JOIN Medico M
	ON M.idMedico = ME.idMedico

	WHERE P.idPacientes = @idpaciente)

	SELECT * from Paciente P
		INNER JOIN HistoriaPaciente HP
		ON HP.idPaciente = P.idPacientes

		INNER JOIN Historia H
		ON H.idHistoria = HP.idHistoria

		INNER JOIN MedicoEspecialidad ME
		ON ME.idMedico = HP.idMedico

		INNER JOIN Medico M
		ON M.idMedico = ME.idMedico

	WHERE P.idPacientes = @idpaciente

ELSE
--print 'No existen historias clinicas para el paciente'
select 0 as resultado


