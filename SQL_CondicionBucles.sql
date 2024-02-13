--CONDICIONALES----------------------------

--IF ELSE--------------------
DECLARE @idPaciente INT
DECLARE @idTurno INT

SET @idPaciente = 10


IF (@idPaciente =10) --IF
	BEGIN  --BEGIN END
		SELECT * FROM Paciente WHERE idPacientes = @idPaciente;
		SET @idTurno = 15;
		PRINT @idTurno;

		IF EXISTS (SELECT * FROM Paciente WHERE idPacientes = @idPaciente)
			PRINT 'EXISTE'
		ELSE 
			PRINT 'NO EXISTE'
	END

ELSE --ELSE
	BEGIN --BEGIN END
		SELECT * FROM Paciente; 
		SET @idTurno = 30;
		PRINT @idTurno;
	END

--CASE--------------------
DECLARE @valor INT = 40;
DECLARE @resultado CHAR(10);

--SET @resultado = (CASE WHEN @valor = 20 THEN 'ROJO' END)
--METODO 1
SET @resultado = (
	CASE 
		WHEN @valor = 10 THEN 'ROJO' 
		WHEN @valor = 20 THEN 'AZUL' 
		WHEN @valor = 30 THEN 'VERDE' 
		WHEN @valor = 40 THEN 'AMARILLO' 
	END)

PRINT 'EL COLOR ES:   '+ CAST(@resultado AS VARCHAR);

--METODO 2
SELECT *, (
	CASE 
		WHEN estado = 0 THEN 'VERDE'
		WHEN estado = 2 THEN 'AZUL'
		WHEN estado = 3 THEN 'NARANJA'
	ELSE
		'NO TIENE COLOR'
	END) 
AS resultado FROM Turno

--EXISTS--------------------
SELECT * FROM Paciente;
DECLARE @idPaciente2 INT

SET @idPaciente2 = 9

IF EXISTS (SELECT * FROM Paciente WHERE idPacientes = @idPaciente2) --INDICA QUE EXISTE ALGUN VALOR
	PRINT 'EXISTE'
ELSE 
	PRINT 'NO EXISTE'


--WHILE---------------------
DECLARE @conMax INT = 10;
DECLARE @contador INT = 1;

WHILE (@contador <= @conMax)
	BEGIN
		PRINT 'El numero del Contador es:  '+ CAST(@contador AS VARCHAR);  --CONVIERTE INT A VARCHAR PARA CONCATENAR
		SET @contador = @contador+1;
	END


--RETURN---------------------
DECLARE @conMax2 INT = 10;
DECLARE @contador2 INT = 1;

WHILE (@contador2 <= @conMax2)
	BEGIN
		PRINT 'El numero del Contador es:  '+ CAST(@contador2 AS VARCHAR);  --CONVIERTE INT A VARCHAR PARA CONCATENAR
		SET @contador2 = @contador2+1;
		IF (@contador2 = 5)
			RETURN  --BLOQUEA TODO CUANDO LLEGA AL RETURN
		PRINT 'FUNCIONA' 
	END

PRINT '---FUNCIONA FIN'

--BREAK---------------------
DECLARE @conMax3 INT = 10;
DECLARE @contador3 INT = 1;

WHILE (@contador3 <= @conMax3)
	BEGIN
		PRINT 'El numero del Contador es:  '+ CAST(@contador3 AS VARCHAR);  --CONVIERTE INT A VARCHAR PARA CONCATENAR
		SET @contador3 = @contador3+1;
		IF (@contador3 = 5)
			BREAK    --BLOQUEA SOLO EL BUCLE CUANDO LLEGA AL BREAK
		PRINT 'FUNCIONA'
	END
PRINT '---FUNCIONA FIN'

--TRY - CATCH--------------------------------------
DECLARE @var4 INT = 10;


BEGIN TRY
	SET @var4 = 'HOLA';
END TRY

BEGIN CATCH
	PRINT 'HA EXISTIDO UN ERROR'
END CATCH