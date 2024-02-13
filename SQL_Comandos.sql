--MOSTRAR TABLAS
	--SELECT * FROM Paciente;
	--SELECT idPacientes, nombre, apellido FROM paciente;

--INSERTAR REGISTRO
	--SELECT * FROM Paciente 
	--INSERT INTO Paciente (dni, nombre, apellido, fechaNacimiento, domicilio, idPais, telefono, email, observacion)
	--VALUES('0605898565', 'Hattie', 'Perez', '1997-05-08', 'Av. Torres', 'MEX', NULL, 'hattie@gmail.com', '')

--------------------------------------------------------	
--INSERT INTO TurnoEstado (idEstado, descripcion)
--VALUES('0', 'Pendiente'),
--	  ('1', 'Realizado'),
--	  ('2', 'Cancelado'),
--	  ('3', 'Rechazado'),
--    ('4', 'Postergado'),
--	  ('5', 'Anulado'),
--	  ('6', 'Derivado');


--INSERT INTO TurnoEstado (idEstado, descripcion)
--VALUES('0', 'Pendiente');

--------------------------------------------------------	
--INSERT INTO Turno (fechaTurno, estado, observacion)
--VALUES('2023-03-15', '0', 'Paciente en Ayunas');

--------------------------------------------------------	
--SELECT * FROM Turno
--SELECT * FROM Paciente
--SELECT * FROM Medico

--INSERT INTO TurnoPaciente (idTurno, idPaciente, idMedico)
--VALUES('2', '10', '1');

--SELECT * FROM TurnoPaciente

----------------------------------------------------------	
--SELECT * FROM Concepto
--SELECT * FROM Pago
--SELECT * FROM PagoPaciente

--INSERT INTO Concepto (descripcion) 
--	VALUES ('Laboratorio'), 
--	       ('Radiografia');

--INSERT INTO Pago (concepto, fechaPago, monto, estadoPago, observ) 
--	VALUES ('1','2019-02-15','4500','0','Pago Pendiente'),
--	       ('2','2019-05-20','6800','0','Pago Pendiente'),
--	       ('2','2019-09-27','5600','0','Pago Pendiente');

--INSERT INTO PagoPaciente (idPago, idPaciente, idTurno) 
--	VALUES ('2','10','2'),
--	       ('1','4','2'),
--	       ('3','6','2');

--SELECT * FROM Turno
--SELECT * FROM Pago
--SELECT * FROM Paciente
--SELECT * FROM PagoPaciente