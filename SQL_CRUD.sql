
SELECT * FROM Medico;
SELECT * FROM Paciente;
SELECT * FROM Turno;
SELECT * FROM TurnoPaciente;
SELECT * FROM Pago;

--EDITAR NOMBRE COLUMNA
EXEC sp_rename 'Pago.observacion', 'observacionActual', 'COLUMN';

--EDITAR TIPO DE LA COLUMNA
ALTER TABLE Pago
ALTER COLUMN observacionActual VARCHAR (1001);

--AÑADIR
INSERT INTO Turno (fechaTurno, estado, observacion)
	VALUES ('2019-01-22 10:00:00','0','Pendiente de Aprobar');

INSERT INTO TurnoPaciente (idTurno, idPaciente, idMedico)
	VALUES ('3','7','1');

INSERT INTO Medico(nombre, apellido)
	VALUES ('Rita', NULL);

--ACTUALIZAR
UPDATE Paciente SET observacion = 'Sin Observación';
UPDATE Paciente SET observacion = 'Con Observación' WHERE idPacientes = 4;
UPDATE Paciente SET domicilio = 'Calle A', email = 'Patricio@outlook.com' WHERE idPacientes = 4;

--ELIMINAR
DELETE FROM Paciente WHERE idPacientes = 9;