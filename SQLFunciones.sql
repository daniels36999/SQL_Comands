SELECT * FROM Medico;
SELECT * FROM Paciente;
SELECT * FROM Turno;
SELECT * FROM TurnoPaciente;
SELECT * FROM Pago;


--MAXIMO Y MINIMO
SELECT MAX (fechaPago) FROM Pago;             --SIN TITULO
SELECT MAX(fechaPago) AS maxFecha FROM Pago;  --CON TITULO
SELECT MIN(fechaPago) AS maxFecha FROM Pago;  --CON TITULO

--SUMA
SELECT SUM (monto) FROM Pago;                  --SIN TITULO
SELECT SUM (monto) AS sumatoriaPago FROM Pago; --CON TITULO
SELECT SUM (monto+20) AS sumatoriaPago FROM Pago; --CON TITULO
SELECT SUM (monto)+20 AS sumatoriaPago FROM Pago; --CON TITULO

--FUNCIONES AVG (PROMEDIO)
SELECT AVG(monto) FROM Pago;                  --SIN TITULO
SELECT AVG (monto) AS promedioPago FROM Pago; --CON TITULO

--FUNCIONES COUNT (CONTAR)
SELECT COUNT (*) FROM Paciente;                  --SIN TITULO
SELECT COUNT (*)  AS cuentaFilas FROM Paciente;  --CON TITULO

SELECT COUNT (*) FROM Paciente WHERE apellido = 'Yautibug';                  --SIN TITULO (ESPECIFICO)
SELECT COUNT (*)  AS cuentaFilas FROM Paciente WHERE apellido = 'yautibug';  --CON TITULO (ESPECIFICO)

--FUNCIONES HAVING
SELECT * FROM Paciente;
SELECT * FROM Turno;
SELECT * FROM TurnoEstado;
SELECT estado FROM Turno GROUP BY estado HAVING COUNT (estado) >= 2;

--AND - OR
SELECT * FROM Paciente WHERE apellido = 'Yautibug' AND nombre = 'Daniels' AND idPacientes = 1;  --AND
SELECT * FROM Paciente WHERE apellido = 'Yautibug' OR apellido= 'Perez' OR idPacientes = 5;     --OR
SELECT * FROM Paciente WHERE (apellido = 'Yautibug' AND nombre= 'Daniels') OR idPacientes = 10; --OR/AND

--IN
SELECT *FROM Turno WHERE estado IN (2, 1, 3);
SELECT *FROM Paciente WHERE apellido IN ('Yautibug','Perez'); --BUSCA MAS OPCIONES

--LIKE
SELECT * FROM Paciente WHERE apellido LIKE 'Yautibug'; --BUSCA PALABRA COMPLETA
SELECT * FROM Paciente WHERE apellido LIKE 'Yaut%';    --BUSCA PALABRA AL INICIO
SELECT * FROM Paciente WHERE apellido LIKE '%bug';     --BUSCA PALABRA AL FINAL
SELECT * FROM Paciente WHERE apellido LIKE '%Yaut%';   --BUSCA ENTRE PALABRAS

--NOT
SELECT * FROM Paciente WHERE apellido NOT LIKE 'Yautibug';    --BUSCA TODO EXCEPTO YAUTIBUG
SELECT *FROM Paciente WHERE apellido NOT IN ('Yautibug','Perez'); --

--BETWEN
SELECT * FROM Turno WHERE fechaTurno BETWEEN '2019-01-02' AND '2019-02-02'; -- BUSCA POR RANGOS
SELECT * FROM Paciente WHERE idPacientes BETWEEN 1 AND 5; -- BUSCA POR RANGOS

--REPLACE
DECLARE @var VARCHAR(30) = 'CASITA' --BORRA ESPACIO ANTES
SELECT REPLACE (@var, 'A', '--')

--LTRIM
DECLARE @var1 VARCHAR(30) = '        CASITA' 
DECLARE @var2 VARCHAR(30) = 'CASITA         '
SELECT LTRIM(@var1)   --Remplza palabras
SELECT RTRIM(@var2)   --Remplza palabras

--STORE PROCEDURE------------------------------------------------------------------

--LLAMAR A UN STORE
EXEC SP_Pacientes 10;


