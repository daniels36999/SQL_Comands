
--EXEC mostrarTurnos 4;

ALTER PROC mostrarTurnos(
	@idPaciente INT
)
AS
SET NOCOUNT ON

--SELECT * FROM Paciente
--SELECT * FROM Medico
--SELECT * FROM Especialidad
--SELECT * FROM MedicoEspecialidad
--SELECT * FROM Turno
--SELECT * FROM TurnoPaciente

SELECT * FROM Paciente P

	INNER JOIN TurnoPaciente TP
	ON TP.idPaciente = P.idPacientes

	INNER JOIN Turno T
	ON T.idTurno = TP.idTurno

	INNER JOIN MedicoEspecialidad ME
	ON ME.idMedico = TP.idMedico

	WHERE P.idPacientes = @idPaciente;
	