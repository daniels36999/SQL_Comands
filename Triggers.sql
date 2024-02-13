
SELECT * FROM pacienteLog

--TRIGGER . AÑADIR-------------PARA GUARDAR UN LOG
CREATE TRIGGER PacientesCreados ON Paciente
	AFTER INSERT
AS

IF (SELECT idPais FROM inserted) = 'ECU'
	INSERT INTO PacienteLog (idPaciente, idPais, fechaAlta)
		SELECT i.idPacientes, i.idPais, GETDATE() FROM inserted i;

--TRIGGER . ACTUALIZAR-------------PARA GUARDAR UN LOG
SELECT * FROM pacienteLog
ALTER TABLE PacienteLog ADD fechaMod DATETIME;

CREATE TRIGGER PacientesModificados ON Paciente
	AFTER UPDATE
AS

IF EXISTS (SELECT idPaciente FROM PacienteLog
	WHERE idPaciente = (SELECT idPacientes FROM inserted))
	UPDATE PacienteLog SET fechaMod = GETDATE();
ELSE
	INSERT INTO PacienteLog (idPaciente, idPais, fechaMod)
	SELECT idPacientes, idPais, GETDATE() FROM inserted;

---------------
