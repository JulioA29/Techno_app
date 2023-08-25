USE [master]
GO
/****** Object:  Database [TECHNO_APP] ******/
CREATE DATABASE [TECHNO_APP]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TECHNO_APP', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\TECHNO_APP.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TECHNO_APP_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\TECHNO_APP_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [TECHNO_APP] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TECHNO_APP].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TECHNO_APP] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TECHNO_APP] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TECHNO_APP] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TECHNO_APP] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TECHNO_APP] SET ARITHABORT OFF 
GO
ALTER DATABASE [TECHNO_APP] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TECHNO_APP] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TECHNO_APP] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TECHNO_APP] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TECHNO_APP] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TECHNO_APP] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TECHNO_APP] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TECHNO_APP] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TECHNO_APP] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TECHNO_APP] SET  ENABLE_BROKER 
GO
ALTER DATABASE [TECHNO_APP] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TECHNO_APP] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TECHNO_APP] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TECHNO_APP] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TECHNO_APP] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TECHNO_APP] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TECHNO_APP] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TECHNO_APP] SET RECOVERY FULL 
GO
ALTER DATABASE [TECHNO_APP] SET  MULTI_USER 
GO
ALTER DATABASE [TECHNO_APP] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TECHNO_APP] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TECHNO_APP] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TECHNO_APP] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TECHNO_APP] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TECHNO_APP] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'TECHNO_APP', N'ON'
GO
ALTER DATABASE [TECHNO_APP] SET QUERY_STORE = ON
GO
ALTER DATABASE [TECHNO_APP] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [TECHNO_APP]
GO
/****** Object:  Table [dbo].[AnalisisIA]    Script Date: 25/08/2023 02:59:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalisisIA](
	[id] [int] NOT NULL,
	[id_producto] [int] NULL,
	[fecha_analisis] [date] NULL,
	[resultado] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 25/08/2023 02:59:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[id] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[correo] [varchar](100) NULL,
	[telefono] [varchar](20) NULL,
	[empresa] [varchar](100) NULL,
	[fecha_registro] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 25/08/2023 02:59:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[id] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[puesto] [varchar](50) NULL,
	[fecha_contratacion] [date] NULL,
	[salario] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 25/08/2023 02:59:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[id] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[descripcion] [text] NULL,
	[precio] [decimal](10, 2) NULL,
	[categoria] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 25/08/2023 02:59:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ventas](
	[id] [int] NOT NULL,
	[id_cliente] [int] NULL,
	[id_producto] [int] NULL,
	[fecha_venta] [date] NULL,
	[monto_total] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AnalisisIA] ([id], [id_producto], [fecha_analisis], [resultado]) VALUES (1, 1, CAST(N'2023-03-30' AS Date), N'El análisis de la solución de IA mostró una mejora del 15% en la precisión de las predicciones.')
GO
INSERT [dbo].[AnalisisIA] ([id], [id_producto], [fecha_analisis], [resultado]) VALUES (2, 3, CAST(N'2023-05-15' AS Date), N'El asistente virtual logró una tasa de interacción exitosa del 80% con los usuarios.')
GO
INSERT [dbo].[AnalisisIA] ([id], [id_producto], [fecha_analisis], [resultado]) VALUES (3, 2, CAST(N'2023-06-10' AS Date), N'La plataforma de análisis demostró una reducción del 25% en el tiempo necesario para generar informes.')
GO
INSERT [dbo].[AnalisisIA] ([id], [id_producto], [fecha_analisis], [resultado]) VALUES (4, 4, CAST(N'2023-07-25' AS Date), N'El sistema de recomendación alcanzó una tasa de acierto del 90% en las recomendaciones realizadas.')
GO
INSERT [dbo].[AnalisisIA] ([id], [id_producto], [fecha_analisis], [resultado]) VALUES (5, 1, CAST(N'2023-08-10' AS Date), N'Se identificó un patrón de comportamiento anómalo utilizando el detector de fraudes.')
GO
INSERT [dbo].[AnalisisIA] ([id], [id_producto], [fecha_analisis], [resultado]) VALUES (6, 5, CAST(N'2023-08-20' AS Date), N'El detector de fraudes logró prevenir una transacción fraudulenta y alertó al equipo de seguridad.')
GO
INSERT [dbo].[AnalisisIA] ([id], [id_producto], [fecha_analisis], [resultado]) VALUES (7, 3, CAST(N'2023-09-10' AS Date), N'El asistente virtual recibió elogios positivos de los usuarios por su capacidad de comprensión.')
GO
INSERT [dbo].[AnalisisIA] ([id], [id_producto], [fecha_analisis], [resultado]) VALUES (8, 4, CAST(N'2023-10-05' AS Date), N'El sistema de recomendación personalizada generó un aumento del 20% en las ventas.')
GO
INSERT [dbo].[AnalisisIA] ([id], [id_producto], [fecha_analisis], [resultado]) VALUES (9, 2, CAST(N'2023-10-20' AS Date), N'La plataforma de análisis de datos facilitó la identificación de tendencias clave en los datos.')
GO
INSERT [dbo].[AnalisisIA] ([id], [id_producto], [fecha_analisis], [resultado]) VALUES (10, 5, CAST(N'2023-11-02' AS Date), N'El detector de fraudes identificó y bloqueó tres intentos de transacciones fraudulentas.')
GO
INSERT [dbo].[Clientes] ([id], [nombre], [correo], [telefono], [empresa], [fecha_registro]) VALUES (1, N'Juan Pérez', N'juan.perez@gmail.com', N'829-980-9082', N'TechSolutions Inc.', CAST(N'2023-01-15' AS Date))
GO
INSERT [dbo].[Clientes] ([id], [nombre], [correo], [telefono], [empresa], [fecha_registro]) VALUES (2, N'María García', N'maria.garcia@gmail.com', N'829-981-9083', N'InnovateTech Solutions', CAST(N'2023-02-02' AS Date))
GO
INSERT [dbo].[Clientes] ([id], [nombre], [correo], [telefono], [empresa], [fecha_registro]) VALUES (3, N'Carlos Ramírez', N'carlos.ramirez@gmail.com', N'829-982-9084', N'AI Innovations Corp.', CAST(N'2023-03-20' AS Date))
GO
INSERT [dbo].[Clientes] ([id], [nombre], [correo], [telefono], [empresa], [fecha_registro]) VALUES (4, N'Laura Martínez', N'laura.martinez@gmail.com', N'829-983-9085', N'DataTech Solutions', CAST(N'2023-04-10' AS Date))
GO
INSERT [dbo].[Clientes] ([id], [nombre], [correo], [telefono], [empresa], [fecha_registro]) VALUES (5, N'Andrés López', N'andres.lopez@gmail.com', N'829-984-9086', N'SmartAI Systems', CAST(N'2023-05-05' AS Date))
GO
INSERT [dbo].[Clientes] ([id], [nombre], [correo], [telefono], [empresa], [fecha_registro]) VALUES (6, N'Sofía Fernández', N'sofia.fernandez@gmail.com', N'829-985-9087', N'NextGen Innovations', CAST(N'2023-06-15' AS Date))
GO
INSERT [dbo].[Clientes] ([id], [nombre], [correo], [telefono], [empresa], [fecha_registro]) VALUES (7, N'Alejandro Mendoza', N'alejandro.mendoza@gmail.com', N'829-986-9088', N'TechGenius Solutions', CAST(N'2023-07-03' AS Date))
GO
INSERT [dbo].[Clientes] ([id], [nombre], [correo], [telefono], [empresa], [fecha_registro]) VALUES (8, N'Valentina Torres', N'valentina.torres@gmail.com', N'829-987-9089', N'AI Dynamics', CAST(N'2023-08-20' AS Date))
GO
INSERT [dbo].[Clientes] ([id], [nombre], [correo], [telefono], [empresa], [fecha_registro]) VALUES (9, N'Daniel Silva', N'daniel.silva@gmail.com', N'829-988-9090', N'Innovision Tech', CAST(N'2023-09-12' AS Date))
GO
INSERT [dbo].[Clientes] ([id], [nombre], [correo], [telefono], [empresa], [fecha_registro]) VALUES (10, N'Andrea Vargas', N'andrea.vargas@gmail.com', N'829-989-9091', N'FutureAI Innovations', CAST(N'2023-10-18' AS Date))
GO
INSERT [dbo].[Empleados] ([id], [nombre], [puesto], [fecha_contratacion], [salario]) VALUES (1, N'Ana González', N'Desarrollador de Software', CAST(N'2022-01-15' AS Date), CAST(3500.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[Empleados] ([id], [nombre], [puesto], [fecha_contratacion], [salario]) VALUES (2, N'Carlos Martínez', N'Ingeniero de Datos', CAST(N'2021-11-20' AS Date), CAST(4200.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[Empleados] ([id], [nombre], [puesto], [fecha_contratacion], [salario]) VALUES (3, N'María López', N'Científico de Datos', CAST(N'2022-03-10' AS Date), CAST(4800.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[Empleados] ([id], [nombre], [puesto], [fecha_contratacion], [salario]) VALUES (4, N'Juan Ramírez', N'Especialista en IA', CAST(N'2023-02-05' AS Date), CAST(5200.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[Empleados] ([id], [nombre], [puesto], [fecha_contratacion], [salario]) VALUES (5, N'Laura Pérez', N'Analista de Negocios', CAST(N'2021-08-18' AS Date), CAST(3800.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[Empleados] ([id], [nombre], [puesto], [fecha_contratacion], [salario]) VALUES (6, N'José Fernández', N'Ingeniero de Software', CAST(N'2022-07-22' AS Date), CAST(3900.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[Empleados] ([id], [nombre], [puesto], [fecha_contratacion], [salario]) VALUES (7, N'Marta Rodríguez', N'Arquitecto de Soluciones', CAST(N'2023-05-30' AS Date), CAST(5500.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[Empleados] ([id], [nombre], [puesto], [fecha_contratacion], [salario]) VALUES (8, N'David Sánchez', N'Analista de Datos', CAST(N'2022-06-12' AS Date), CAST(4100.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[Empleados] ([id], [nombre], [puesto], [fecha_contratacion], [salario]) VALUES (9, N'Sofía Vargas', N'Desarrollador Full Stack', CAST(N'2022-09-05' AS Date), CAST(4200.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[Empleados] ([id], [nombre], [puesto], [fecha_contratacion], [salario]) VALUES (10, N'Luis Mendoza', N'Ingeniero de Machine Learning', CAST(N'2021-10-28' AS Date), CAST(4800.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[Productos] ([id], [nombre], [descripcion], [precio], [categoria]) VALUES (1, N'Solución de IA Avanzada', N'Potente solución de IA con capacidad de aprendizaje profundo.', CAST(1999.99 AS Decimal(10, 2)), N'IA')
GO
INSERT [dbo].[Productos] ([id], [nombre], [descripcion], [precio], [categoria]) VALUES (2, N'Plataforma de Análisis de Datos', N'Plataforma que permite analizar grandes volúmenes de datos de manera eficiente.', CAST(1499.99 AS Decimal(10, 2)), N'Análisis de Datos')
GO
INSERT [dbo].[Productos] ([id], [nombre], [descripcion], [precio], [categoria]) VALUES (3, N'Asistente Virtual Inteligente', N'Asistente virtual impulsado por IA para interacciones naturales con los usuarios.', CAST(599.99 AS Decimal(10, 2)), N'Asistentes Virtuales')
GO
INSERT [dbo].[Productos] ([id], [nombre], [descripcion], [precio], [categoria]) VALUES (4, N'Sistema de Recomendación Personalizada', N'Sistema de recomendación que utiliza IA para ofrecer recomendaciones precisas.', CAST(799.99 AS Decimal(10, 2)), N'Recomendaciones')
GO
INSERT [dbo].[Productos] ([id], [nombre], [descripcion], [precio], [categoria]) VALUES (5, N'Detector de Fraudes Avanzado', N'Herramienta de detección de fraudes que utiliza IA para identificar patrones sospechosos.', CAST(1299.99 AS Decimal(10, 2)), N'Seguridad')
GO
INSERT [dbo].[Productos] ([id], [nombre], [descripcion], [precio], [categoria]) VALUES (6, N'Plataforma de Procesamiento de Lenguaje Natural', N'Plataforma que permite analizar y comprender el lenguaje natural de manera eficiente.', CAST(999.99 AS Decimal(10, 2)), N'Procesamiento de Lenguaje Natural')
GO
INSERT [dbo].[Productos] ([id], [nombre], [descripcion], [precio], [categoria]) VALUES (7, N'Sistema de Visión por Computadora', N'Sistema que utiliza algoritmos de IA para procesar y entender imágenes y videos.', CAST(1599.99 AS Decimal(10, 2)), N'Visión por Computadora')
GO
INSERT [dbo].[Productos] ([id], [nombre], [descripcion], [precio], [categoria]) VALUES (8, N'Herramienta de Automatización de Procesos', N'Herramienta que automatiza tareas repetitivas mediante el uso de algoritmos de IA.', CAST(899.99 AS Decimal(10, 2)), N'Automatización')
GO
INSERT [dbo].[Productos] ([id], [nombre], [descripcion], [precio], [categoria]) VALUES (9, N'Plataforma de Aprendizaje Automático', N'Plataforma que permite el desarrollo y despliegue de modelos de aprendizaje automático.', CAST(1799.99 AS Decimal(10, 2)), N'Aprendizaje Automático')
GO
INSERT [dbo].[Productos] ([id], [nombre], [descripcion], [precio], [categoria]) VALUES (10, N'Sistema de Análisis de Sentimientos', N'Sistema que utiliza IA para analizar y entender las emociones en texto y comentarios.', CAST(749.99 AS Decimal(10, 2)), N'Análisis de Sentimientos')
GO
INSERT [dbo].[Ventas] ([id], [id_cliente], [id_producto], [fecha_venta], [monto_total]) VALUES (1, 3, 1, CAST(N'2023-03-25' AS Date), CAST(1999.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[Ventas] ([id], [id_cliente], [id_producto], [fecha_venta], [monto_total]) VALUES (2, 5, 3, CAST(N'2023-05-10' AS Date), CAST(599.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[Ventas] ([id], [id_cliente], [id_producto], [fecha_venta], [monto_total]) VALUES (3, 1, 2, CAST(N'2023-06-02' AS Date), CAST(1499.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[Ventas] ([id], [id_cliente], [id_producto], [fecha_venta], [monto_total]) VALUES (4, 10, 4, CAST(N'2023-07-18' AS Date), CAST(799.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[Ventas] ([id], [id_cliente], [id_producto], [fecha_venta], [monto_total]) VALUES (5, 4, 1, CAST(N'2023-08-05' AS Date), CAST(1999.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[Ventas] ([id], [id_cliente], [id_producto], [fecha_venta], [monto_total]) VALUES (6, 8, 5, CAST(N'2023-08-15' AS Date), CAST(1299.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[Ventas] ([id], [id_cliente], [id_producto], [fecha_venta], [monto_total]) VALUES (7, 6, 3, CAST(N'2023-09-03' AS Date), CAST(599.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[Ventas] ([id], [id_cliente], [id_producto], [fecha_venta], [monto_total]) VALUES (8, 2, 4, CAST(N'2023-10-01' AS Date), CAST(799.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[Ventas] ([id], [id_cliente], [id_producto], [fecha_venta], [monto_total]) VALUES (9, 7, 2, CAST(N'2023-10-12' AS Date), CAST(1499.99 AS Decimal(10, 2)))
GO
INSERT [dbo].[Ventas] ([id], [id_cliente], [id_producto], [fecha_venta], [monto_total]) VALUES (10, 9, 5, CAST(N'2023-10-30' AS Date), CAST(1299.99 AS Decimal(10, 2)))
GO
ALTER TABLE [dbo].[AnalisisIA]  WITH CHECK ADD FOREIGN KEY([id_producto])
REFERENCES [dbo].[Productos] ([id])
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD FOREIGN KEY([id_cliente])
REFERENCES [dbo].[Clientes] ([id])
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD FOREIGN KEY([id_producto])
REFERENCES [dbo].[Productos] ([id])
GO
USE [master]
GO
ALTER DATABASE [TECHNO_APP] SET  READ_WRITE 
GO
