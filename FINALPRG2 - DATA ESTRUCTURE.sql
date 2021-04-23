USE [master]
GO
/****** Object:  Database [FINALPRG2]    Script Date: 22/4/2021 7:47:11 p. m. ******/
CREATE DATABASE [FINALPRG2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FINALPRG2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\FINALPRG2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FINALPRG2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\FINALPRG2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [FINALPRG2] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FINALPRG2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FINALPRG2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FINALPRG2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FINALPRG2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FINALPRG2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FINALPRG2] SET ARITHABORT OFF 
GO
ALTER DATABASE [FINALPRG2] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [FINALPRG2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FINALPRG2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FINALPRG2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FINALPRG2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FINALPRG2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FINALPRG2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FINALPRG2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FINALPRG2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FINALPRG2] SET  ENABLE_BROKER 
GO
ALTER DATABASE [FINALPRG2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FINALPRG2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FINALPRG2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FINALPRG2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FINALPRG2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FINALPRG2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FINALPRG2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FINALPRG2] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [FINALPRG2] SET  MULTI_USER 
GO
ALTER DATABASE [FINALPRG2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FINALPRG2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FINALPRG2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FINALPRG2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FINALPRG2] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [FINALPRG2] SET QUERY_STORE = OFF
GO
USE [FINALPRG2]
GO
/****** Object:  Table [dbo].[Departamento]    Script Date: 22/4/2021 7:47:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departamento](
	[ID_departamento] [int] IDENTITY(1,1) NOT NULL,
	[Departamento] [varchar](40) NOT NULL,
	[Siglas] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_departamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Documentos]    Script Date: 22/4/2021 7:47:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Documentos](
	[ID_documento] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](25) NOT NULL,
	[Documento] [varchar](20) NOT NULL,
	[ID_empleado] [int] NULL,
	[Dpt_origen] [varchar](40) NOT NULL,
	[Dpt_destino] [varchar](40) NOT NULL,
	[Fecha] [varchar](11) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_documento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 22/4/2021 7:47:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[ID_empleado] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](40) NOT NULL,
	[Correo] [varchar](40) NOT NULL,
	[Cargo] [varchar](40) NOT NULL,
	[IDdepartamento] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Departamento] ON 
GO
INSERT [dbo].[Departamento] ([ID_departamento], [Departamento], [Siglas]) VALUES (1, N'Recursos Humanos', N'RRHH')
GO
INSERT [dbo].[Departamento] ([ID_departamento], [Departamento], [Siglas]) VALUES (3, N'Control de calidad ', N'CDC')
GO
INSERT [dbo].[Departamento] ([ID_departamento], [Departamento], [Siglas]) VALUES (4, N'Direccion', N'DCN')
GO
INSERT [dbo].[Departamento] ([ID_departamento], [Departamento], [Siglas]) VALUES (5, N'Gerencia', N'GRA')
GO
INSERT [dbo].[Departamento] ([ID_departamento], [Departamento], [Siglas]) VALUES (6, N'Contabilidad', N'CTN')
GO
SET IDENTITY_INSERT [dbo].[Departamento] OFF
GO
SET IDENTITY_INSERT [dbo].[Documentos] ON 
GO
INSERT [dbo].[Documentos] ([ID_documento], [Codigo], [Documento], [ID_empleado], [Dpt_origen], [Dpt_destino], [Fecha]) VALUES (4, N'2021-RRHH-DCN-01', N'Memorandum', 1, N'Recursos Humanos', N'Direccion', N'8/4/2021')
GO
INSERT [dbo].[Documentos] ([ID_documento], [Codigo], [Documento], [ID_empleado], [Dpt_origen], [Dpt_destino], [Fecha]) VALUES (5, N'2021-CDC-DCN-02', N'Record de Notas', 3, N'Control de calidad', N'Direccion', N'8/4/2021')
GO
INSERT [dbo].[Documentos] ([ID_documento], [Codigo], [Documento], [ID_empleado], [Dpt_origen], [Dpt_destino], [Fecha]) VALUES (6, N'2021-RRHH-GRA-03', N'Acta nacimiento', 4, N'Recursos Humanos', N'Gerencia', N'8/4/2021')
GO
INSERT [dbo].[Documentos] ([ID_documento], [Codigo], [Documento], [ID_empleado], [Dpt_origen], [Dpt_destino], [Fecha]) VALUES (7, N'2021-RRHH-GRA-04', N'Acta nacimiento', 1, N'Recursos Humanos', N'Gerencia', N'9/4/2021')
GO
INSERT [dbo].[Documentos] ([ID_documento], [Codigo], [Documento], [ID_empleado], [Dpt_origen], [Dpt_destino], [Fecha]) VALUES (8, N'2021-CDC-DCN-05', N'Memorandum', 4, N'Control de calidad', N'Direccion', N'9/4/2021')
GO
INSERT [dbo].[Documentos] ([ID_documento], [Codigo], [Documento], [ID_empleado], [Dpt_origen], [Dpt_destino], [Fecha]) VALUES (9, N'2021-CDC-CTN-06', N'Acta Legalizada', 1, N'Control de calidad', N'Contabilidad', N'12/4/2021')
GO
INSERT [dbo].[Documentos] ([ID_documento], [Codigo], [Documento], [ID_empleado], [Dpt_origen], [Dpt_destino], [Fecha]) VALUES (10, N'2021-CTN-GRA-07', N'Memorandum', 3, N'Contabilidad', N'Gerencia', N'12/4/2021')
GO
INSERT [dbo].[Documentos] ([ID_documento], [Codigo], [Documento], [ID_empleado], [Dpt_origen], [Dpt_destino], [Fecha]) VALUES (11, N'2021-CTN-RRHH-08', N'Nomina ', 1, N'Contabilidad', N'Recursos Humanos', N'12/4/2021')
GO
INSERT [dbo].[Documentos] ([ID_documento], [Codigo], [Documento], [ID_empleado], [Dpt_origen], [Dpt_destino], [Fecha]) VALUES (12, N'2021-CTN-RRHH-09', N'Talon Facturas', 5, N'Contabilidad', N'Recursos Humanos', N'14/4/2021')
GO
INSERT [dbo].[Documentos] ([ID_documento], [Codigo], [Documento], [ID_empleado], [Dpt_origen], [Dpt_destino], [Fecha]) VALUES (13, N'2021-CTN-GRA-010', N'Nomina ', 5, N'Contabilidad', N'Gerencia', N'15/4/2021')
GO
INSERT [dbo].[Documentos] ([ID_documento], [Codigo], [Documento], [ID_empleado], [Dpt_origen], [Dpt_destino], [Fecha]) VALUES (14, N'2021-RRHH-DCN-011', N'Memorandum', 1, N'Recursos Humanos', N'Direccion', N'15/4/2021')
GO
INSERT [dbo].[Documentos] ([ID_documento], [Codigo], [Documento], [ID_empleado], [Dpt_origen], [Dpt_destino], [Fecha]) VALUES (15, N'2021-CDC-RRHH-012', N'Memorandum', 3, N'Control de calidad', N'Recursos Humanos', N'19/4/2021')
GO
INSERT [dbo].[Documentos] ([ID_documento], [Codigo], [Documento], [ID_empleado], [Dpt_origen], [Dpt_destino], [Fecha]) VALUES (16, N'2021-CDC-RRHH-013', N'Memorandum', 8, N'Control de calidad', N'Recursos Humanos', N'19/4/2021')
GO
INSERT [dbo].[Documentos] ([ID_documento], [Codigo], [Documento], [ID_empleado], [Dpt_origen], [Dpt_destino], [Fecha]) VALUES (17, N'2021-RRHH-DCN-014', N'Record de Notas', 1, N'Recursos Humanos', N'Direccion', N'19/4/2021')
GO
SET IDENTITY_INSERT [dbo].[Documentos] OFF
GO
SET IDENTITY_INSERT [dbo].[Empleados] ON 
GO
INSERT [dbo].[Empleados] ([ID_empleado], [Nombre], [Correo], [Cargo], [IDdepartamento]) VALUES (1, N'Kevin Feliz', N'Kevinfeliz2016@gmail.com', N'Supervisor', 1)
GO
INSERT [dbo].[Empleados] ([ID_empleado], [Nombre], [Correo], [Cargo], [IDdepartamento]) VALUES (3, N'Leonel Fernandez', N'ElLider04@gmail.com', N'Monitor', 3)
GO
INSERT [dbo].[Empleados] ([ID_empleado], [Nombre], [Correo], [Cargo], [IDdepartamento]) VALUES (4, N'Ladiff Peruz', N'LadiffP@gmail.com', N'Administrador', 5)
GO
INSERT [dbo].[Empleados] ([ID_empleado], [Nombre], [Correo], [Cargo], [IDdepartamento]) VALUES (5, N'Samuel Rodrigez ', N'SamuelR@gmail.com', N'Contador', 6)
GO
INSERT [dbo].[Empleados] ([ID_empleado], [Nombre], [Correo], [Cargo], [IDdepartamento]) VALUES (8, N'Juan Rosario', N'JuanR@gmail.com', N'Analista ', 3)
GO
SET IDENTITY_INSERT [dbo].[Empleados] OFF
GO
ALTER TABLE [dbo].[Documentos]  WITH CHECK ADD FOREIGN KEY([ID_empleado])
REFERENCES [dbo].[Empleados] ([ID_empleado])
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD FOREIGN KEY([IDdepartamento])
REFERENCES [dbo].[Departamento] ([ID_departamento])
GO
/****** Object:  StoredProcedure [dbo].[rpt_allDocx]    Script Date: 22/4/2021 7:47:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create procedure [dbo].[rpt_allDocx]
 as
select Documentos.Codigo, Documentos.Documento, Empleados.Nombre as 'Nombre solicitante', Documentos.Dpt_origen, Documentos.Dpt_destino, Documentos.Fecha from Documentos
inner join Empleados on Documentos.ID_empleado = Empleados.ID_empleado
GO
/****** Object:  StoredProcedure [dbo].[rpt_DestinationDept]    Script Date: 22/4/2021 7:47:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[rpt_DestinationDept]
	@destination varchar(40)
 as
select Documentos.Codigo, Documentos.Documento, Empleados.Nombre as 'Nombre solicitante', Documentos.Dpt_origen, Documentos.Dpt_destino, Documentos.Fecha from Documentos
inner join Empleados on Documentos.ID_empleado = Empleados.ID_empleado 
where Documentos.Dpt_destino = @destination
GO
/****** Object:  StoredProcedure [dbo].[rpt_empleados]    Script Date: 22/4/2021 7:47:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE PROCEDURE [dbo].[rpt_empleados]
 as
 select Empleados.Nombre, Empleados.Cargo, Empleados.Correo, Departamento.Departamento from Empleados
 inner join Departamento on Empleados.IDdepartamento = Departamento.ID_departamento
GO
/****** Object:  StoredProcedure [dbo].[rpt_OriginDept]    Script Date: 22/4/2021 7:47:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  create procedure [dbo].[rpt_OriginDept]
	@Origin varchar(40)
 as
select Documentos.Codigo, Documentos.Documento, Empleados.Nombre as 'Nombre solicitante', Documentos.Dpt_origen, Documentos.Dpt_destino, Documentos.Fecha from Documentos
inner join Empleados on Documentos.ID_empleado = Empleados.ID_empleado 
where Documentos.Dpt_origen = @Origin
GO
/****** Object:  StoredProcedure [dbo].[rpt_TimeLapse]    Script Date: 22/4/2021 7:47:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[rpt_TimeLapse]
	@desde varchar(11), @hasta varchar(11)
 as
select Documentos.Codigo, Documentos.Documento, Empleados.Nombre as 'Nombre solicitante', Documentos.Dpt_origen, Documentos.Dpt_destino, Documentos.Fecha from Documentos
inner join Empleados on Documentos.ID_empleado = Empleados.ID_empleado 
where Documentos.Fecha between @desde and @hasta
GO
/****** Object:  StoredProcedure [dbo].[rpt_userDocx]    Script Date: 22/4/2021 7:47:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create procedure [dbo].[rpt_userDocx]
	@name varchar(40)
 as
select Documentos.Codigo, Documentos.Documento, Empleados.Nombre as 'Nombre solicitante', Documentos.Dpt_origen, Documentos.Dpt_destino, Documentos.Fecha from Documentos
inner join Empleados on Documentos.ID_empleado = Empleados.ID_empleado 
where Empleados.Nombre = @name
GO
USE [master]
GO
ALTER DATABASE [FINALPRG2] SET  READ_WRITE 
GO
