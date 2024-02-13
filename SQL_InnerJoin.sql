--INER JOIN ---Muestra tablas unidas
SELECT * FROM Paciente
SELECT * FROM TurnoPaciente

SELECT * FROM Paciente P
	INNER JOIN TurnoPaciente T
	ON P.idPacientes = T.idPaciente

--LEFT JOIN --- OBTIENE LOS REGISTROS DE LA TABALA IZQUIERDA Y QUE COINCIDA CON EL ON
SELECT * FROM Paciente P
	LEFT JOIN TurnoPaciente T
	ON P.idPacientes = T.idPaciente

--RIGHT JOIN --- OBTIENE LOS REGISTROS DE LA TABALA DERECHA Y QUE COINCIDA CON EL ON
SELECT * FROM Paciente P
	RIGHT JOIN TurnoPaciente T
	ON P.idPacientes = T.idPaciente


--UNION - UNION ALL-----------
SELECT * FROM Turno	
	UNION
	SELECT * FROM Turno

SELECT * FROM Turno	WHERE estado = 0 --DEBEN SER SIEMPRE IGUALES LAS TABLAS
	UNION
	SELECT * FROM Turno WHERE estado = 1

SELECT * FROM Paciente WHERE apellido = 'Yautibug' --DEBEN SER SIEMPRE DEL MISMO DE DATO
	UNION
	SELECT * FROM Paciente WHERE apellido= 'Perez'

SELECT * FROM Paciente --DEBEN SER SIEMPRE DEL MISMO DE DATO
	UNION ALL
	SELECT * FROM Paciente