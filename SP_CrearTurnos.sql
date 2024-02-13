SELECT * FROM Turno;
SELECT * FROM TurnoPaciente;
--SELECT * FROM Paciente;
--SELECT * FROM Medico;

EXEC altaTurno '20190217 08:50', 10, 1, 'El paciente debe estar en ayunas';

--ALTER PROC altaPaciente(  --MODIFICAR 
ALTER PROC altaTurno(  --CREAR
	@fecha VARCHAR(14),
	@idPaciente paciente,
	@idMedico medico,
	@observacion VARCHAR(1000) = ''
)

AS

IF NOT EXISTS (SELECT TOP 1 idTurno FROM Turno WHERE fechaTurno = @fecha)
	BEGIN
		INSERT INTO Turno (fechaTurno, estado, observacion)
			VALUES (@fecha , 0, @observacion)

		DECLARE @fk_Turno turno;
		SET @fk_Turno = @@IDENTITY ;

		INSERT INTO TurnoPaciente (idTurno, idPaciente, idMedico)
		 VALUES (@fk_Turno, @idPaciente, @idMedico)

		PRINT 'El turno se agrego correctamente'

		SELECT * FROM Turno;
		SELECT * FROM TurnoPaciente;
	END

ELSE
	BEGIN
		PRINT '¡Error!  -  Fecha ya ocupada'
	END
