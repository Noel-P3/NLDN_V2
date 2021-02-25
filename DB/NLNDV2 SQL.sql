USE [master]
GO
/****** Object:  Database [NLND_V2]    Script Date: 25-02-2021 3:11:59 PM ******/
CREATE DATABASE [NLND_V2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'NLND_V2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\NLND_V2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'NLND_V2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\NLND_V2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [NLND_V2] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NLND_V2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NLND_V2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [NLND_V2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [NLND_V2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [NLND_V2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NLND_V2] SET ARITHABORT OFF 
GO
ALTER DATABASE [NLND_V2] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [NLND_V2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [NLND_V2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [NLND_V2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [NLND_V2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [NLND_V2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [NLND_V2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [NLND_V2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [NLND_V2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [NLND_V2] SET  ENABLE_BROKER 
GO
ALTER DATABASE [NLND_V2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [NLND_V2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [NLND_V2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [NLND_V2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [NLND_V2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [NLND_V2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [NLND_V2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [NLND_V2] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [NLND_V2] SET  MULTI_USER 
GO
ALTER DATABASE [NLND_V2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [NLND_V2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [NLND_V2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [NLND_V2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [NLND_V2] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [NLND_V2] SET QUERY_STORE = OFF
GO
USE [NLND_V2]
GO
/****** Object:  Table [dbo].[BD]    Script Date: 25-02-2021 3:11:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BD](
	[CONECTADO] [int] NOT NULL,
	[VERSION_1] [varchar](20) NOT NULL,
	[VERSION_2] [varchar](20) NOT NULL,
	[VERSION_3] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EMAIL_REQUEST]    Script Date: 25-02-2021 3:11:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMAIL_REQUEST](
	[ID_USUARIO] [int] NOT NULL,
	[NOMBRES] [varchar](250) NOT NULL,
	[APELLIDOS] [varchar](250) NOT NULL,
	[CORREO] [varchar](250) NOT NULL,
	[USUARIO] [varchar](250) NOT NULL,
	[PASSWORD] [varchar](250) NOT NULL,
	[TIPO_REQUEST] [varchar](20) NOT NULL,
	[CODIGO] [varchar](250) NOT NULL,
	[ID_REQUEST] [int] IDENTITY(0,1) NOT NULL,
 CONSTRAINT [EMAIL_REQUEST_ID_PK] PRIMARY KEY CLUSTERED 
(
	[ID_REQUEST] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USERS]    Script Date: 25-02-2021 3:11:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USERS](
	[ID_USUARIO] [int] IDENTITY(1,1) NOT NULL,
	[NOMBRES] [varchar](250) NOT NULL,
	[APELLIDOS] [varchar](250) NOT NULL,
	[CORREO] [varchar](250) NOT NULL,
	[USUARIO] [varchar](250) NOT NULL,
	[PASSWORD] [varchar](250) NOT NULL,
	[USUARIO_CONFIRMADO] [int] NULL,
 CONSTRAINT [PK_ID_USUARIO_USERS] PRIMARY KEY CLUSTERED 
(
	[ID_USUARIO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UNIQUE_CORREO_USERS] UNIQUE NONCLUSTERED 
(
	[CORREO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UNIQUE_USUARIO_USERS] UNIQUE NONCLUSTERED 
(
	[USUARIO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USERS_ACCOUNT]    Script Date: 25-02-2021 3:11:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USERS_ACCOUNT](
	[ID_CUENTA] [int] IDENTITY(1,1) NOT NULL,
	[ID_USUARIO] [int] NOT NULL,
	[ID_FOLDER] [int] NULL,
	[NOMBRE_CUENTA] [varchar](250) NULL,
	[NOMBRE_USUARIO] [varchar](250) NULL,
	[TELEFONO] [varchar](250) NULL,
	[CORREO] [varchar](250) NULL,
	[PASSWORD] [varchar](250) NULL,
 CONSTRAINT [PK_ID_CUENTA_USERS_ACCOUNT] PRIMARY KEY CLUSTERED 
(
	[ID_CUENTA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USERS_FOLDERS_ACCOUNT]    Script Date: 25-02-2021 3:11:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USERS_FOLDERS_ACCOUNT](
	[ID_FOLDER] [int] IDENTITY(1,1) NOT NULL,
	[ID_USUARIO] [int] NOT NULL,
	[NOMBRE_FOLDER] [varchar](250) NOT NULL,
 CONSTRAINT [PK_ID_FOLDER_USERS_FOLDERS_ACCOUNT] PRIMARY KEY CLUSTERED 
(
	[ID_FOLDER] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EMAIL_REQUEST]  WITH CHECK ADD  CONSTRAINT [FK_CORREO_EMAIL_REQUEST] FOREIGN KEY([CORREO])
REFERENCES [dbo].[USERS] ([CORREO])
GO
ALTER TABLE [dbo].[EMAIL_REQUEST] CHECK CONSTRAINT [FK_CORREO_EMAIL_REQUEST]
GO
ALTER TABLE [dbo].[EMAIL_REQUEST]  WITH CHECK ADD  CONSTRAINT [FK_ID_USUARIO_EMAIL_REQUEST] FOREIGN KEY([ID_USUARIO])
REFERENCES [dbo].[USERS] ([ID_USUARIO])
GO
ALTER TABLE [dbo].[EMAIL_REQUEST] CHECK CONSTRAINT [FK_ID_USUARIO_EMAIL_REQUEST]
GO
ALTER TABLE [dbo].[EMAIL_REQUEST]  WITH CHECK ADD  CONSTRAINT [FK_USUARIO_EMAIL_REQUEST] FOREIGN KEY([USUARIO])
REFERENCES [dbo].[USERS] ([USUARIO])
GO
ALTER TABLE [dbo].[EMAIL_REQUEST] CHECK CONSTRAINT [FK_USUARIO_EMAIL_REQUEST]
GO
ALTER TABLE [dbo].[USERS_ACCOUNT]  WITH CHECK ADD  CONSTRAINT [FK_ID_FOLDER_USERS_ACCOUNT] FOREIGN KEY([ID_FOLDER])
REFERENCES [dbo].[USERS_FOLDERS_ACCOUNT] ([ID_FOLDER])
GO
ALTER TABLE [dbo].[USERS_ACCOUNT] CHECK CONSTRAINT [FK_ID_FOLDER_USERS_ACCOUNT]
GO
ALTER TABLE [dbo].[USERS_ACCOUNT]  WITH CHECK ADD  CONSTRAINT [FK_ID_USUARIO_USERS_ACCOUNT] FOREIGN KEY([ID_USUARIO])
REFERENCES [dbo].[USERS] ([ID_USUARIO])
GO
ALTER TABLE [dbo].[USERS_ACCOUNT] CHECK CONSTRAINT [FK_ID_USUARIO_USERS_ACCOUNT]
GO
ALTER TABLE [dbo].[USERS_FOLDERS_ACCOUNT]  WITH CHECK ADD  CONSTRAINT [FK_ID_USUARIO_USERS_FOLDERS_ACCOUNT] FOREIGN KEY([ID_USUARIO])
REFERENCES [dbo].[USERS] ([ID_USUARIO])
GO
ALTER TABLE [dbo].[USERS_FOLDERS_ACCOUNT] CHECK CONSTRAINT [FK_ID_USUARIO_USERS_FOLDERS_ACCOUNT]
GO
USE [master]
GO
ALTER DATABASE [NLND_V2] SET  READ_WRITE 
GO
