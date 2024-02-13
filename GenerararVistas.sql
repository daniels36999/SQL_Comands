
SELECT * FROM vistaPacientesTurnos 
SELECT * FROM VistaPrueba --NOMBRE DE LA VISTA CREADA MANUALMENTE
--GENERAR VISTAS

CREATE VIEW vistaPacientesTurnos AS 

	SELECT P.idPacientes, P.nombre, P.apellido, P.idPais FROM Paciente P

		INNER JOIN TurnoPaciente TP
		ON TP.idPaciente = P.idPacientes

		INNER JOIN Turno T
		ON T.idTurno = TP.idTurno

		WHERE isnull(T.estado,0) = 0 --SI ES NULO ME DA CERO