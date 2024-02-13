--CREAR UN BACKUP

--BACKUP DATABASE CentroMedico
--TO DISk = 'D:\Electronica Y Telecomunicaciones\Curso - SQL Server\SQL - BACKUP\BK_centroMedico2.BACK'
--WITH NO_COMPRESSION, NAME = 'CentroMedico2'


declare @fecha char(12)
declare @path varchar(100)
declare @name varchar(20)

--print convert(char(5),getdate(),108)
set @fecha = convert(char(8),getdate(),112) + replace(convert(char(5),getdate(),108),':','')
set @path = 'D:\Electronica Y Telecomunicaciones\Curso - SQL Server\SQL - BACKUP\PruebaJob'+@fecha+'.bak'
set @name = 'PruebaJob'+@fecha


BACKUP DATABASE CentroMedico
TO DISK = @path
WITH NO_COMPRESSION, NAME=@name