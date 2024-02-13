
--SUMA ---- +
SELECT * FROM Paciente;
DECLARE @vara1 INT = 5;
DECLARE @vara2 DECIMAL(9,2) = 5.7;

SELECT idPacientes , (idPacientes + @vara1)  AS resulSuma FROM Paciente;
SELECT idPacientes , (CAST(idPacientes AS DECIMAL) + @vara2) AS resulSuma FROM Paciente;

--RESTA ---- -
SELECT * FROM Paciente;
DECLARE @varb1 INT = 5;
DECLARE @varb2 DECIMAL(9,2) = 5.7;

SELECT idPacientes , (idPacientes - @varb1)  AS resulSuma FROM Paciente;
SELECT idPacientes , (CAST(idPacientes AS DECIMAL) - @varb2) AS resulSuma FROM Paciente;

--MULTIPLICACION ---- *
SELECT * FROM Paciente;
DECLARE @varc1 INT = 5;
DECLARE @varc2 DECIMAL(9,2) = 5.7;

SELECT idPacientes , (idPacientes * @varc1)  AS resulSuma FROM Paciente;
SELECT idPacientes , (CAST(idPacientes AS DECIMAL) * @varc2) AS resulSuma FROM Paciente;


--DIVISION ---- %
SELECT * FROM Paciente;
DECLARE @vard1 INT = 0;
DECLARE @vard2 DECIMAL(9,2) = 5.7;

BEGIN TRY
	SELECT idPacientes , (idPacientes / @vard1)  AS resulSuma FROM Paciente;
	SELECT idPacientes , (CAST(idPacientes AS DECIMAL) / @vard2) AS resulSuma FROM Paciente;
END TRY
BEGIN CATCH
	PRINT 'NO SE PUEDE DIVIDIR PARA CERO'
END CATCH

--
