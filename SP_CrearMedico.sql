
select * from Medico
select * from Especialidad
select * from MedicoEspecialidad

--MUESTRA LA INFORMACION DE LOS STORES CREADOS
--sp_help altaTurno o alt + F1
--sp_helptext altaTurno


EXEC altaMedico 'Rachel','Zein',1,'Ninguno';

ALTER proc altaMedico(
			@nombre varchar(50),
			@apellido varchar(20),
			@idespecialidad int,
			@descripcion varchar(50)
			)

as
--set nocount on

IF NOT EXISTS(SELECT TOP 1 idMedico from Medico WHERE nombre=@nombre and apellido = @apellido)
	BEGIN
	
		INSERT INTO Medico (nombre, apellido)
			VALUES (@nombre,@apellido)
		
		declare @auxIdmedico int
		set @auxIdmedico = @@IDENTITY

		INSERT INTO MedicoEspecialidad (idMedico, idEspecialidad,descripcion)
			VALUES (@auxIdmedico, @idespecialidad, @descripcion)

		print 'El Médico se agregó correctamente'
		return

	
	END

ELSE
	BEGIN
		print 'El Médico ya existe.'
		return
	END

