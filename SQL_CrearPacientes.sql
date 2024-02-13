--CREATE DATABASE Ejemplo1

CREATE TABLE Paciente2(

	idPaciente INT NOT NULL,
	nombre VARCHAR (50) NOT NULL,
	apellido VARCHAR (50) NULL,
	fechaNacimiento DATE NULL,
	domicilio VARCHAR(50) NULL,
	idPais VARCHAR (3) NULL,
	telefono VARCHAR (20) NULL,
	email VARCHAR (30) NULL,
	observacion VARCHAR (1000) NULL,
	fechaAlta DATETIME NOT NULL

	CONSTRAINT PK_idPaciente PRIMARY KEY (idPaciente)
)