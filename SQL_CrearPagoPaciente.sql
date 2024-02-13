CREATE TABLE PagoPaciente(
	idPago INT NOT NULL,
	idPaciente INT NOT NULL,
	idTurno INT NOT NULL

	PRIMARY KEY (idPago, idPaciente, idTurno)
)