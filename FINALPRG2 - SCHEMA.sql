CREATE DATABASE FINALPRG2
CREATE DATABASE USERCONTROL
USE FINALPRG2
GO 

CREATE TABLE Departamento(
	ID_departamento int not null primary key identity, 
	Departamento varchar(40) not null,
	Siglas varchar(10) not null
)

CREATE TABLE Empleados(
	ID_empleado int not null primary key identity, 
	Nombre varchar(40) not null,
	Correo varchar(40) not null,
	Cargo varchar(40) not null,
	IDdepartamento int FOREIGN KEY REFERENCES Departamento(ID_departamento)
)

CREATE TABLE Documentos(
	ID_documento int not null primary key identity,
	Codigo varchar(25) not null,
	Documento varchar(20) not null,
	ID_empleado int FOREIGN KEY REFERENCES Empleados(ID_empleado),
	Dpt_origen varchar(40) not null,
	Dpt_destino varchar(40) not null,
	Fecha varchar(11) not null
)
go
select * from Documentos 
 
 --reporte de usuarios 
 Alter PROCEDURE rpt_empleados
 as
 select Empleados.Nombre, Empleados.Cargo, Empleados.Correo, Departamento.Departamento from Empleados
 inner join Departamento on Empleados.IDdepartamento = Departamento.ID_departamento

 exec rpt_empleados
  --reporte de todos Documentos 
 create procedure rpt_allDocx
 as
select Documentos.Codigo, Documentos.Documento, Empleados.Nombre as 'Nombre solicitante', Documentos.Dpt_origen, Documentos.Dpt_destino, Documentos.Fecha from Documentos
inner join Empleados on Documentos.ID_empleado = Empleados.ID_empleado

 exec rpt_allDocx

   --reporte de Usuarios/Documentos 
 create procedure rpt_userDocx
	@name varchar(40)
 as
select Documentos.Codigo, Documentos.Documento, Empleados.Nombre as 'Nombre solicitante', Documentos.Dpt_origen, Documentos.Dpt_destino, Documentos.Fecha from Documentos
inner join Empleados on Documentos.ID_empleado = Empleados.ID_empleado 
where Empleados.Nombre = @name

 exec rpt_userDocx 'Leonel Fernandez' 

    --reporte de Origen/Documentos
  create procedure rpt_OriginDept
	@Origin varchar(40)
 as
select Documentos.Codigo, Documentos.Documento, Empleados.Nombre as 'Nombre solicitante', Documentos.Dpt_origen, Documentos.Dpt_destino, Documentos.Fecha from Documentos
inner join Empleados on Documentos.ID_empleado = Empleados.ID_empleado 
where Documentos.Dpt_origen = @Origin

exec rpt_OriginDept 'Control de calidad'

   --reporte de Destino/Documentos

create procedure rpt_DestinationDept
	@destination varchar(40)
 as
select Documentos.Codigo, Documentos.Documento, Empleados.Nombre as 'Nombre solicitante', Documentos.Dpt_origen, Documentos.Dpt_destino, Documentos.Fecha from Documentos
inner join Empleados on Documentos.ID_empleado = Empleados.ID_empleado 
where Documentos.Dpt_destino = @destination

exec rpt_DestinationDept 'Direccion'
--reporte de fecha/Documentos

create procedure rpt_TimeLapse
	@desde varchar(11), @hasta varchar(11)
 as
select Documentos.Codigo, Documentos.Documento, Empleados.Nombre as 'Nombre solicitante', Documentos.Dpt_origen, Documentos.Dpt_destino, Documentos.Fecha from Documentos
inner join Empleados on Documentos.ID_empleado = Empleados.ID_empleado 
where Documentos.Fecha between @desde and @hasta

exec rpt_TimeLapse '8/4/2021', '9/4/2021'