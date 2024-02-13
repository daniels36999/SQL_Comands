
--STORED PROCEDURE EJEMPLO
CREATE PROC SP_Pacientes (
	@idPaciente INT 
)
AS

	SELECT * FROM Paciente WHERE idPacientes = @idPaciente

GO