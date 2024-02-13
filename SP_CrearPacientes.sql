
--SELECT * FROM Paciente;

ALTER PROC altaPaciente(  --MODIFICAR 
--CREATE PROC altaPaciente(  --CREAR
	@dni VARCHAR(20),
	@nombre VARCHAR(50),
	@apellido VARCHAR(50),
	@fechaNacimiento VARCHAR(8),
	@domicilio VARCHAR(50),
	@pais CHAR(3),
	@telefono VARCHAR(20)='',
	@email VARCHAR(30),
	@observacion VARCHAR(1000)=''
)

AS

