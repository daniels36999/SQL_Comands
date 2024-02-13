--MOSTRAR REGISTROS DE UNA TABLA  (TOP)
------------------------------------------------------------------------------------------
--SELECT * FROM Paciente;             --MUESTRA TODA LA TABLA 
--SELECT TOP 1 * FROM Paciente;       --MUESTRA EL PRIMERO  DE TODA LA TABLA
--SELECT TOP 2 * FROM Paciente;       --MUESTRA LOS DOS PRIMEROS DE LA TABLA
--SELECT TOP 2 nombre FROM Paciente;  --MUESTRA LOS DOS PRIMEROS DE UNA COLUMNA ESPECIFICA


--OREDENAR REGISTROS DE UNA TABLA (ORDER BY ) (ASC-DESC)
------------------------------------------------------------------------------------------
--SELECT * FROM Paciente ORDER BY fechaNacimiento;  --MUESTRA DE MENOR A MAYOR
--SELECT * FROM Paciente ORDER BY fechaNacimiento DESC;  --MUESTRA DE MAYOR A MENOR

--OREDENAR Y MOSTRAR CIERTOS REGISTROS DE UNA TABLA
------------------------------------------------------------------------------------------
--SELECT TOP 1 * FROM Paciente ORDER BY fechaNacimiento DESC; 

--MOSTRAR VALORES SIN REPETIR  "DISTINCT"
-------------------------------------------------------------------------
--SELECT * FROM Paciente;
--SELECT DISTINCT idPais FROM Paciente;
--SELECT DISTINCT fechaNacimiento FROM Paciente;

--AGRUPAR CON FUNCIONES ADICIONALES
---------------------------------------------------------------------
--SELECT idPais FROM Paciente GROUP BY idPais;

--BUSCA DETERMINADOS REGISTROS (WHERE)
---------------------------------------------------------------------
SELECT * FROM Paciente WHERE idPais ='ECU'
SELECT * FROM Paciente WHERE apellido ='Ramirez'
SELECT * FROM Paciente WHERE idPacientes = 4
SELECT * FROM Paciente WHERE domicilio LIKE '%AV%'