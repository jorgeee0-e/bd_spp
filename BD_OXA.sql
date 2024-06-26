USE [master]
GO
/****** Object:  Database [bd_OXAGames]    Script Date: 24/4/2024 23:01:08 ******/
CREATE DATABASE [bd_OXAGames]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'bd_OXAGames', FILENAME = N'D:\SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\bd_OXAGames.mdf' , SIZE = 15360KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'bd_OXAGames_log', FILENAME = N'D:\SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\bd_OXAGames_log.ldf' , SIZE = 15360KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [bd_OXAGames] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [bd_OXAGames].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [bd_OXAGames] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [bd_OXAGames] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [bd_OXAGames] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [bd_OXAGames] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [bd_OXAGames] SET ARITHABORT OFF 
GO
ALTER DATABASE [bd_OXAGames] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [bd_OXAGames] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [bd_OXAGames] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [bd_OXAGames] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [bd_OXAGames] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [bd_OXAGames] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [bd_OXAGames] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [bd_OXAGames] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [bd_OXAGames] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [bd_OXAGames] SET  DISABLE_BROKER 
GO
ALTER DATABASE [bd_OXAGames] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [bd_OXAGames] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [bd_OXAGames] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [bd_OXAGames] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [bd_OXAGames] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [bd_OXAGames] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [bd_OXAGames] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [bd_OXAGames] SET RECOVERY FULL 
GO
ALTER DATABASE [bd_OXAGames] SET  MULTI_USER 
GO
ALTER DATABASE [bd_OXAGames] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [bd_OXAGames] SET DB_CHAINING OFF 
GO
ALTER DATABASE [bd_OXAGames] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [bd_OXAGames] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [bd_OXAGames] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [bd_OXAGames] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'bd_OXAGames', N'ON'
GO
ALTER DATABASE [bd_OXAGames] SET QUERY_STORE = ON
GO
ALTER DATABASE [bd_OXAGames] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [bd_OXAGames]
GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 24/4/2024 23:01:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorias](
	[IdCategoria] [nchar](15) NOT NULL,
	[Categoria] [nchar](20) NOT NULL,
 CONSTRAINT [PK_Categorias] PRIMARY KEY CLUSTERED 
(
	[IdCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 24/4/2024 23:01:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[IdCliente] [nchar](10) NOT NULL,
	[Nombre] [nchar](50) NOT NULL,
	[Apellidos] [nchar](50) NOT NULL,
	[Correo] [nchar](150) NOT NULL,
	[Edad] [int] NOT NULL,
	[userId] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Facturas]    Script Date: 24/4/2024 23:01:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Facturas](
	[IdFactura] [nchar](10) NOT NULL,
	[IdCliente] [nchar](10) NOT NULL,
	[ID_Compra] [nchar](10) NOT NULL,
	[payment_method] [nchar](20) NOT NULL,
 CONSTRAINT [PK_Facturas] PRIMARY KEY CLUSTERED 
(
	[IdFactura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Games]    Script Date: 24/4/2024 23:01:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Games](
	[Id_Juego] [nchar](10) NOT NULL,
	[Nombre_Juego] [nchar](50) NOT NULL,
	[IdCategoria] [nchar](15) NOT NULL,
	[descripcion] [nvarchar](max) NOT NULL,
	[desarrollador] [nchar](10) NOT NULL,
	[precio] [float] NOT NULL,
 CONSTRAINT [PK_Games] PRIMARY KEY CLUSTERED 
(
	[Id_Juego] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sales]    Script Date: 24/4/2024 23:01:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales](
	[ID_Compra] [nchar](10) NOT NULL,
	[IdCliente] [nchar](10) NOT NULL,
	[Id_Juego] [nchar](10) NOT NULL,
	[status] [nchar](10) NOT NULL,
	[monto] [nchar](10) NOT NULL,
	[purchaseDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Sales] PRIMARY KEY CLUSTERED 
(
	[ID_Compra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Session]    Script Date: 24/4/2024 23:01:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Session](
	[userId] [nchar](10) NOT NULL,
	[sessionId] [nchar](10) NOT NULL,
	[Date_Login] [datetime] NOT NULL,
	[Date_Logout] [datetime] NOT NULL,
 CONSTRAINT [PK_Session] PRIMARY KEY CLUSTERED 
(
	[sessionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 24/4/2024 23:01:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[udserId] [nchar](10) NOT NULL,
	[User_pw] [nchar](100) NOT NULL,
	[Correo] [nchar](100) NOT NULL,
	[member_Type] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[udserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Categorias] ([IdCategoria], [Categoria]) VALUES (N'CAT001         ', N'Acción              ')
INSERT [dbo].[Categorias] ([IdCategoria], [Categoria]) VALUES (N'CAT002         ', N'Aventura            ')
INSERT [dbo].[Categorias] ([IdCategoria], [Categoria]) VALUES (N'CAT003         ', N'Rol (RPG)           ')
INSERT [dbo].[Categorias] ([IdCategoria], [Categoria]) VALUES (N'CAT004         ', N'Estrategia          ')
INSERT [dbo].[Categorias] ([IdCategoria], [Categoria]) VALUES (N'CAT005         ', N'Deportes            ')
INSERT [dbo].[Categorias] ([IdCategoria], [Categoria]) VALUES (N'CAT006         ', N'Carreras            ')
INSERT [dbo].[Categorias] ([IdCategoria], [Categoria]) VALUES (N'CAT007         ', N'Lucha               ')
INSERT [dbo].[Categorias] ([IdCategoria], [Categoria]) VALUES (N'CAT008         ', N'Plataforma          ')
INSERT [dbo].[Categorias] ([IdCategoria], [Categoria]) VALUES (N'CAT009         ', N'Simulación          ')
INSERT [dbo].[Categorias] ([IdCategoria], [Categoria]) VALUES (N'CAT010         ', N'Puzzles             ')
GO
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [Apellidos], [Correo], [Edad], [userId]) VALUES (N'CLI001    ', N'John                                              ', N'Doe                                               ', N'j.doe@example.com                                                                                                                                     ', 25, N'ShadowHun ')
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [Apellidos], [Correo], [Edad], [userId]) VALUES (N'CLI002    ', N'Jane                                              ', N'Smith                                             ', N'j.smith@example.com                                                                                                                                   ', 30, N'CyberNinja')
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [Apellidos], [Correo], [Edad], [userId]) VALUES (N'CLI003    ', N'Michael                                           ', N'Johnson                                           ', N'm.johnson@example.com                                                                                                                                 ', 28, N'PixelWarr ')
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [Apellidos], [Correo], [Edad], [userId]) VALUES (N'CLI004    ', N'Emily                                             ', N'Williams                                          ', N'e.williams@example.com                                                                                                                                ', 22, N'GameMaste ')
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [Apellidos], [Correo], [Edad], [userId]) VALUES (N'CLI005    ', N'Christopher                                       ', N'Brown                                             ', N'c.brown@example.com                                                                                                                                   ', 29, N'MysticMag ')
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [Apellidos], [Correo], [Edad], [userId]) VALUES (N'CLI006    ', N'Jessica                                           ', N'Jones                                             ', N'j.jones@example.com                                                                                                                                   ', 26, N'BattleLeg ')
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [Apellidos], [Correo], [Edad], [userId]) VALUES (N'CLI007    ', N'David                                             ', N'Martinez                                          ', N'd.martinez@example.com                                                                                                                                ', 31, N'RogueAssa ')
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [Apellidos], [Correo], [Edad], [userId]) VALUES (N'CLI008    ', N'Jennifer                                          ', N'Garcia                                            ', N'j.garcia@example.com                                                                                                                                  ', 27, N'WarlockWi ')
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [Apellidos], [Correo], [Edad], [userId]) VALUES (N'CLI009    ', N'James                                             ', N'Hernandez                                         ', N'j.hernandez@example.com                                                                                                                               ', 24, N'SteelKnig ')
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [Apellidos], [Correo], [Edad], [userId]) VALUES (N'CLI010    ', N'Maria                                             ', N'Lopez                                             ', N'm.lopez@example.com                                                                                                                                   ', 20, N'DragonSla ')
GO
INSERT [dbo].[Facturas] ([IdFactura], [IdCliente], [ID_Compra], [payment_method]) VALUES (N'FAC001    ', N'CLI001    ', N'COMP001   ', N'Tarjeta             ')
INSERT [dbo].[Facturas] ([IdFactura], [IdCliente], [ID_Compra], [payment_method]) VALUES (N'FAC002    ', N'CLI002    ', N'COMP002   ', N'PayPal              ')
INSERT [dbo].[Facturas] ([IdFactura], [IdCliente], [ID_Compra], [payment_method]) VALUES (N'FAC003    ', N'CLI003    ', N'COMP003   ', N'Efectivo            ')
INSERT [dbo].[Facturas] ([IdFactura], [IdCliente], [ID_Compra], [payment_method]) VALUES (N'FAC004    ', N'CLI004    ', N'COMP004   ', N'Transferencia       ')
INSERT [dbo].[Facturas] ([IdFactura], [IdCliente], [ID_Compra], [payment_method]) VALUES (N'FAC005    ', N'CLI005    ', N'COMP005   ', N'Tarjeta             ')
INSERT [dbo].[Facturas] ([IdFactura], [IdCliente], [ID_Compra], [payment_method]) VALUES (N'FAC006    ', N'CLI006    ', N'COMP006   ', N'PayPal              ')
INSERT [dbo].[Facturas] ([IdFactura], [IdCliente], [ID_Compra], [payment_method]) VALUES (N'FAC007    ', N'CLI007    ', N'COMP007   ', N'Efectivo            ')
INSERT [dbo].[Facturas] ([IdFactura], [IdCliente], [ID_Compra], [payment_method]) VALUES (N'FAC008    ', N'CLI008    ', N'COMP008   ', N'Transferencia       ')
INSERT [dbo].[Facturas] ([IdFactura], [IdCliente], [ID_Compra], [payment_method]) VALUES (N'FAC009    ', N'CLI009    ', N'COMP009   ', N'Tarjeta             ')
INSERT [dbo].[Facturas] ([IdFactura], [IdCliente], [ID_Compra], [payment_method]) VALUES (N'FAC010    ', N'CLI010    ', N'COMP010   ', N'PayPal              ')
GO
INSERT [dbo].[Games] ([Id_Juego], [Nombre_Juego], [IdCategoria], [descripcion], [desarrollador], [precio]) VALUES (N'GAME001   ', N'Call of Duty: Modern Warfare                      ', N'CAT001         ', N'Un juego de disparos en primera persona que se desarrolla en un entorno de guerra moderna.', N'Activision', 59.99)
INSERT [dbo].[Games] ([Id_Juego], [Nombre_Juego], [IdCategoria], [descripcion], [desarrollador], [precio]) VALUES (N'GAME002   ', N'The Legend of Zelda: Breath of the Wild           ', N'CAT002         ', N'Un juego de acción y aventura en el que exploras un vasto mundo abierto y enfrentas desafíos épicos.', N'Nintendo  ', 49.99)
INSERT [dbo].[Games] ([Id_Juego], [Nombre_Juego], [IdCategoria], [descripcion], [desarrollador], [precio]) VALUES (N'GAME003   ', N'Red Dead Redemption 2                             ', N'CAT003         ', N'Un juego de acción y aventura en un mundo abierto ambientado en el Salvaje Oeste.', N'Rockstar G', 39.99)
INSERT [dbo].[Games] ([Id_Juego], [Nombre_Juego], [IdCategoria], [descripcion], [desarrollador], [precio]) VALUES (N'GAME004   ', N'FIFA 22                                           ', N'CAT005         ', N'Un juego de simulación de fútbol que te permite jugar partidos con equipos reales y competir en ligas y torneos.', N'Electronic', 49.99)
INSERT [dbo].[Games] ([Id_Juego], [Nombre_Juego], [IdCategoria], [descripcion], [desarrollador], [precio]) VALUES (N'GAME005   ', N'Assassin''s Creed Valhalla                         ', N'CAT004         ', N'Un juego de acción y aventura que te transporta al mundo vikingo y te permite explorar y luchar en una épica saga.', N'Ubisoft   ', 59.99)
INSERT [dbo].[Games] ([Id_Juego], [Nombre_Juego], [IdCategoria], [descripcion], [desarrollador], [precio]) VALUES (N'GAME006   ', N'Cyberpunk 2077                                    ', N'CAT006         ', N'Un juego de rol y acción en un futuro distópico donde exploras una ciudad llena de peligros y oportunidades.', N'CD Projek ', 49.99)
INSERT [dbo].[Games] ([Id_Juego], [Nombre_Juego], [IdCategoria], [descripcion], [desarrollador], [precio]) VALUES (N'GAME007   ', N'Minecraft                                         ', N'CAT008         ', N'Un juego de construcción y aventura en un mundo abierto donde puedes explorar, crear y sobrevivir.', N'Mojang Stu', 29.99)
INSERT [dbo].[Games] ([Id_Juego], [Nombre_Juego], [IdCategoria], [descripcion], [desarrollador], [precio]) VALUES (N'GAME008   ', N'Fortnite                                          ', N'CAT010         ', N'Un juego de batalla real que te permite construir, luchar y sobrevivir en un mundo competitivo en línea.', N'Epic Game ', 0)
INSERT [dbo].[Games] ([Id_Juego], [Nombre_Juego], [IdCategoria], [descripcion], [desarrollador], [precio]) VALUES (N'GAME009   ', N'League of Legends                                 ', N'CAT007         ', N'Un juego de estrategia y competición en línea donde controlas un campeón y luchas en equipo para destruir el nexo enemigo.', N'Riot Game ', 0)
INSERT [dbo].[Games] ([Id_Juego], [Nombre_Juego], [IdCategoria], [descripcion], [desarrollador], [precio]) VALUES (N'GAME010   ', N'Among Us                                          ', N'CAT010         ', N'Un juego de misterio y engaño en el que los jugadores deben descubrir al impostor entre ellos mientras completan tareas.', N'InnerSloth', 0)
GO
INSERT [dbo].[Sales] ([ID_Compra], [IdCliente], [Id_Juego], [status], [monto], [purchaseDate]) VALUES (N'COMP001   ', N'CLI001    ', N'GAME001   ', N'Completado', N'59.99     ', CAST(N'2024-04-24T10:30:00.000' AS DateTime))
INSERT [dbo].[Sales] ([ID_Compra], [IdCliente], [Id_Juego], [status], [monto], [purchaseDate]) VALUES (N'COMP002   ', N'CLI002    ', N'GAME002   ', N'Completado', N'49.99     ', CAST(N'2024-04-23T15:45:00.000' AS DateTime))
INSERT [dbo].[Sales] ([ID_Compra], [IdCliente], [Id_Juego], [status], [monto], [purchaseDate]) VALUES (N'COMP003   ', N'CLI003    ', N'GAME003   ', N'Completado', N'39.99     ', CAST(N'2024-04-22T12:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([ID_Compra], [IdCliente], [Id_Juego], [status], [monto], [purchaseDate]) VALUES (N'COMP004   ', N'CLI004    ', N'GAME004   ', N'Completado', N'49.99     ', CAST(N'2024-04-21T09:20:00.000' AS DateTime))
INSERT [dbo].[Sales] ([ID_Compra], [IdCliente], [Id_Juego], [status], [monto], [purchaseDate]) VALUES (N'COMP005   ', N'CLI005    ', N'GAME005   ', N'Completado', N'59.99     ', CAST(N'2024-04-20T18:00:00.000' AS DateTime))
INSERT [dbo].[Sales] ([ID_Compra], [IdCliente], [Id_Juego], [status], [monto], [purchaseDate]) VALUES (N'COMP006   ', N'CLI006    ', N'GAME006   ', N'Completado', N'49.99     ', CAST(N'2024-04-19T14:10:00.000' AS DateTime))
INSERT [dbo].[Sales] ([ID_Compra], [IdCliente], [Id_Juego], [status], [monto], [purchaseDate]) VALUES (N'COMP007   ', N'CLI007    ', N'GAME007   ', N'Completado', N'29.99     ', CAST(N'2024-04-18T11:30:00.000' AS DateTime))
INSERT [dbo].[Sales] ([ID_Compra], [IdCliente], [Id_Juego], [status], [monto], [purchaseDate]) VALUES (N'COMP008   ', N'CLI008    ', N'GAME008   ', N'Completado', N'0.00      ', CAST(N'2024-04-17T08:45:00.000' AS DateTime))
INSERT [dbo].[Sales] ([ID_Compra], [IdCliente], [Id_Juego], [status], [monto], [purchaseDate]) VALUES (N'COMP009   ', N'CLI009    ', N'GAME009   ', N'Completado', N'0.00      ', CAST(N'2024-04-16T16:55:00.000' AS DateTime))
INSERT [dbo].[Sales] ([ID_Compra], [IdCliente], [Id_Juego], [status], [monto], [purchaseDate]) VALUES (N'COMP010   ', N'CLI010    ', N'GAME010   ', N'Completado', N'0.00      ', CAST(N'2024-04-15T13:20:00.000' AS DateTime))
GO
INSERT [dbo].[Users] ([udserId], [User_pw], [Correo], [member_Type]) VALUES (N'BattleLeg ', N'password6                                                                                           ', N'j.jones@example.com                                                                                 ', N'Standard  ')
INSERT [dbo].[Users] ([udserId], [User_pw], [Correo], [member_Type]) VALUES (N'CyberNinja', N'password2                                                                                           ', N'j.smith@example.com                                                                                 ', N'Standard  ')
INSERT [dbo].[Users] ([udserId], [User_pw], [Correo], [member_Type]) VALUES (N'DragonSla ', N'password10                                                                                          ', N'm.lopez@example.com                                                                                 ', N'Standard  ')
INSERT [dbo].[Users] ([udserId], [User_pw], [Correo], [member_Type]) VALUES (N'GameMaste ', N'password4                                                                                           ', N'e.williams@example.com                                                                              ', N'Standard  ')
INSERT [dbo].[Users] ([udserId], [User_pw], [Correo], [member_Type]) VALUES (N'MysticMag ', N'password5                                                                                           ', N'c.brown@example.com                                                                                 ', N'Premium   ')
INSERT [dbo].[Users] ([udserId], [User_pw], [Correo], [member_Type]) VALUES (N'PixelWarr ', N'password3                                                                                           ', N'm.johnson@example.com                                                                               ', N'Premium   ')
INSERT [dbo].[Users] ([udserId], [User_pw], [Correo], [member_Type]) VALUES (N'RogueAssa ', N'password7                                                                                           ', N'd.martinez@example.com                                                                              ', N'Premium   ')
INSERT [dbo].[Users] ([udserId], [User_pw], [Correo], [member_Type]) VALUES (N'ShadowHun ', N'password1                                                                                           ', N'j.doe@example.com                                                                                   ', N'Standard  ')
INSERT [dbo].[Users] ([udserId], [User_pw], [Correo], [member_Type]) VALUES (N'SteelKnig ', N'password9                                                                                           ', N'j.hernandez@example.com                                                                             ', N'Premium   ')
INSERT [dbo].[Users] ([udserId], [User_pw], [Correo], [member_Type]) VALUES (N'WarlockWi ', N'password8                                                                                           ', N'j.garcia@example.com                                                                                ', N'Standard  ')
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_Users] FOREIGN KEY([userId])
REFERENCES [dbo].[Users] ([udserId])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Cliente_Users]
GO
ALTER TABLE [dbo].[Facturas]  WITH CHECK ADD  CONSTRAINT [FK_Facturas_Cliente] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Cliente] ([IdCliente])
GO
ALTER TABLE [dbo].[Facturas] CHECK CONSTRAINT [FK_Facturas_Cliente]
GO
ALTER TABLE [dbo].[Games]  WITH CHECK ADD  CONSTRAINT [FK_Games_Categorias] FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[Categorias] ([IdCategoria])
GO
ALTER TABLE [dbo].[Games] CHECK CONSTRAINT [FK_Games_Categorias]
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD  CONSTRAINT [FK_Sales_Cliente] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Cliente] ([IdCliente])
GO
ALTER TABLE [dbo].[Sales] CHECK CONSTRAINT [FK_Sales_Cliente]
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD  CONSTRAINT [FK_Sales_Games] FOREIGN KEY([Id_Juego])
REFERENCES [dbo].[Games] ([Id_Juego])
GO
ALTER TABLE [dbo].[Sales] CHECK CONSTRAINT [FK_Sales_Games]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Users] FOREIGN KEY([userId])
REFERENCES [dbo].[Users] ([udserId])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Users]
GO
USE [master]
GO
ALTER DATABASE [bd_OXAGames] SET  READ_WRITE 
GO
