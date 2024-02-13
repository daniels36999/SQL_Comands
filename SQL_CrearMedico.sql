--CREATE TABLE Medico(
--	idMedico int IDENTITY(1,1) NOT NULL PRIMARY KEY,
--	nombre VARCHAR(50) NOT NULL,
--	apellido VARCHAR(50) NOT NULL
--)

--CREATE TABLE MedicoEspecialidad(
--	idMedico INT IDENTITY(1,1) NOT NULL,
--	idEspecialidad INT NOT NULL,
--	descripcion VARCHAR(50) NOT NULL

--	PRIMARY KEY (idMedico, idEspecialidad)
--)

CREATE TABLE Concepto(
	idConcepto TINYINT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	descripcion VARCHAR(100) NULL
)
