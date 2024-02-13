
CREATE TABLE Pago(
	idPago INT IDENTITY (1,1) NOT NULL PRIMARY KEY,
	concepto TINYINT NOT NULL,
	fechaPago DATETIME NOT NULL,
	monto MONEY NOT NULL,
	estadoPago TINYINT,
	observ VARCHAR(1000)
	   	 
)