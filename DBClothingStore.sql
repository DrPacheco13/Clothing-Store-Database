USE [master]
GO
/****** Object:  Database [ClothingStore]    Script Date: 22/06/2023 21:25:37 ******/
CREATE DATABASE [ClothingStore]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ClothingStore', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\ClothingStore.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ClothingStore_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\ClothingStore_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [ClothingStore] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ClothingStore].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ClothingStore] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ClothingStore] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ClothingStore] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ClothingStore] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ClothingStore] SET ARITHABORT OFF 
GO
ALTER DATABASE [ClothingStore] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ClothingStore] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ClothingStore] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ClothingStore] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ClothingStore] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ClothingStore] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ClothingStore] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ClothingStore] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ClothingStore] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ClothingStore] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ClothingStore] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ClothingStore] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ClothingStore] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ClothingStore] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ClothingStore] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ClothingStore] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ClothingStore] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ClothingStore] SET RECOVERY FULL 
GO
ALTER DATABASE [ClothingStore] SET  MULTI_USER 
GO
ALTER DATABASE [ClothingStore] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ClothingStore] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ClothingStore] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ClothingStore] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ClothingStore] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ClothingStore] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ClothingStore', N'ON'
GO
ALTER DATABASE [ClothingStore] SET QUERY_STORE = ON
GO
ALTER DATABASE [ClothingStore] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [ClothingStore]
GO
/****** Object:  Table [dbo].[Artigo]    Script Date: 22/06/2023 21:25:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Artigo](
	[IdArtigo] [numeric](5, 0) IDENTITY(0,1) NOT NULL,
	[NomeArtigo] [varchar](50) NOT NULL,
	[MarcaArtigo] [varchar](50) NOT NULL,
	[Modelo] [varchar](50) NOT NULL,
	[Tamanho] [varchar](50) NOT NULL,
	[Preco] [decimal](6, 2) NOT NULL,
	[Cor] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdArtigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 22/06/2023 21:25:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[NIF] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[NomeCliente] [varchar](50) NOT NULL,
	[ContactoCliente] [varchar](13) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[NIF] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Escaparate]    Script Date: 22/06/2023 21:25:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Escaparate](
	[IdEscaparate] [numeric](2, 0) IDENTITY(0,1) NOT NULL,
	[IdSeccao] [numeric](2, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdEscaparate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Funcionario]    Script Date: 22/06/2023 21:25:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Funcionario](
	[IdFuncionario] [numeric](2, 0) IDENTITY(0,1) NOT NULL,
	[NomeFuncionario] [varchar](150) NOT NULL,
	[MoradaFuncionario] [varchar](200) NOT NULL,
	[Turno] [bit] NOT NULL,
	[NIF] [numeric](9, 0) NOT NULL,
	[ContactoFuncionario] [varchar](13) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdFuncionario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Peca]    Script Date: 22/06/2023 21:25:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Peca](
	[IdPeca] [numeric](5, 0) IDENTITY(0,1) NOT NULL,
	[IdEscaparate] [numeric](2, 0) NULL,
	[IdArtigo] [numeric](5, 0) NOT NULL,
	[IdRegistoVenda] [numeric](5, 0) NULL,
	[DataDefeito] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPeca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RegistoVenda]    Script Date: 22/06/2023 21:25:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegistoVenda](
	[IdRegistoVenda] [numeric](5, 0) IDENTITY(0,1) NOT NULL,
	[NIF] [numeric](9, 0) NOT NULL,
	[IdFuncionario] [numeric](2, 0) NOT NULL,
	[DataVenda] [datetime] NOT NULL,
	[Obs] [varchar](255) NULL,
	[TotalPagar] [decimal](6, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdRegistoVenda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Seccao]    Script Date: 22/06/2023 21:25:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seccao](
	[IdSeccao] [numeric](2, 0) IDENTITY(0,1) NOT NULL,
	[Nome] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdSeccao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Artigo] ON 

INSERT [dbo].[Artigo] ([IdArtigo], [NomeArtigo], [MarcaArtigo], [Modelo], [Tamanho], [Preco], [Cor]) VALUES (CAST(0 AS Numeric(5, 0)), N'Camisa', N'Lion of Porches', N'Slim Fit', N'M', CAST(50.00 AS Decimal(6, 2)), N'branco')
INSERT [dbo].[Artigo] ([IdArtigo], [NomeArtigo], [MarcaArtigo], [Modelo], [Tamanho], [Preco], [Cor]) VALUES (CAST(1 AS Numeric(5, 0)), N'Camisa', N'Lion of Porches', N'Regular Fit', N'XL', CAST(50.00 AS Decimal(6, 2)), N'rosa')
INSERT [dbo].[Artigo] ([IdArtigo], [NomeArtigo], [MarcaArtigo], [Modelo], [Tamanho], [Preco], [Cor]) VALUES (CAST(2 AS Numeric(5, 0)), N'Bermudas', N'Lion of Porches', N'Com cinto elastico', N'40', CAST(70.00 AS Decimal(6, 2)), N'beje')
INSERT [dbo].[Artigo] ([IdArtigo], [NomeArtigo], [MarcaArtigo], [Modelo], [Tamanho], [Preco], [Cor]) VALUES (CAST(3 AS Numeric(5, 0)), N'Cardigan', N'Lion of Porches', N'Malha', N'M', CAST(60.00 AS Decimal(6, 2)), N'camel')
INSERT [dbo].[Artigo] ([IdArtigo], [NomeArtigo], [MarcaArtigo], [Modelo], [Tamanho], [Preco], [Cor]) VALUES (CAST(4 AS Numeric(5, 0)), N'Calcas', N'Lion of Porches', N'Estilo pantalona', N'38', CAST(100.00 AS Decimal(6, 2)), N'branco')
INSERT [dbo].[Artigo] ([IdArtigo], [NomeArtigo], [MarcaArtigo], [Modelo], [Tamanho], [Preco], [Cor]) VALUES (CAST(5 AS Numeric(5, 0)), N'Blusao', N'Lion of Porches', N'Corporativo', N'M', CAST(120.00 AS Decimal(6, 2)), N'branco')
INSERT [dbo].[Artigo] ([IdArtigo], [NomeArtigo], [MarcaArtigo], [Modelo], [Tamanho], [Preco], [Cor]) VALUES (CAST(6 AS Numeric(5, 0)), N'Casaco', N'Lion of Porches', N'Tecido tecnico', N'L', CAST(100.00 AS Decimal(6, 2)), N'verde')
INSERT [dbo].[Artigo] ([IdArtigo], [NomeArtigo], [MarcaArtigo], [Modelo], [Tamanho], [Preco], [Cor]) VALUES (CAST(7 AS Numeric(5, 0)), N'Colete_Menino', N'Lion of Porches', N'Reversivel', N'7-8 anos', CAST(60.00 AS Decimal(6, 2)), N'Azul')
INSERT [dbo].[Artigo] ([IdArtigo], [NomeArtigo], [MarcaArtigo], [Modelo], [Tamanho], [Preco], [Cor]) VALUES (CAST(8 AS Numeric(5, 0)), N'T-shirt_Menina', N'Lion of Porches', N'Manga Curta', N'3/4 anos', CAST(30.00 AS Decimal(6, 2)), N'branco')
INSERT [dbo].[Artigo] ([IdArtigo], [NomeArtigo], [MarcaArtigo], [Modelo], [Tamanho], [Preco], [Cor]) VALUES (CAST(9 AS Numeric(5, 0)), N'T-shirt_Menina', N'Lion of Porches', N'3/4 Manga', N'11/12 anos', CAST(40.00 AS Decimal(6, 2)), N'vermelho')
SET IDENTITY_INSERT [dbo].[Artigo] OFF
GO
SET IDENTITY_INSERT [dbo].[Cliente] ON 

INSERT [dbo].[Cliente] ([NIF], [NomeCliente], [ContactoCliente]) VALUES (CAST(239943222 AS Numeric(9, 0)), N'Joaquim Fernandes', N'+351911000001')
INSERT [dbo].[Cliente] ([NIF], [NomeCliente], [ContactoCliente]) VALUES (CAST(239943223 AS Numeric(9, 0)), N'Maria Almeida', N'+351921000001')
INSERT [dbo].[Cliente] ([NIF], [NomeCliente], [ContactoCliente]) VALUES (CAST(239943224 AS Numeric(9, 0)), N'João Francisco Amadeu', N'+351931000001')
INSERT [dbo].[Cliente] ([NIF], [NomeCliente], [ContactoCliente]) VALUES (CAST(239943225 AS Numeric(9, 0)), N'Rosa Serafina', N'+351961000001')
INSERT [dbo].[Cliente] ([NIF], [NomeCliente], [ContactoCliente]) VALUES (CAST(239943226 AS Numeric(9, 0)), N'Bernadette Soares', N'+351911000002')
INSERT [dbo].[Cliente] ([NIF], [NomeCliente], [ContactoCliente]) VALUES (CAST(239943227 AS Numeric(9, 0)), N'Ariana Borralheiro', N'+351921000002')
INSERT [dbo].[Cliente] ([NIF], [NomeCliente], [ContactoCliente]) VALUES (CAST(239943228 AS Numeric(9, 0)), N'Sara Ferreira', N'+351961000002')
INSERT [dbo].[Cliente] ([NIF], [NomeCliente], [ContactoCliente]) VALUES (CAST(239943229 AS Numeric(9, 0)), N'Judite Malheiro', N'+351911000009')
INSERT [dbo].[Cliente] ([NIF], [NomeCliente], [ContactoCliente]) VALUES (CAST(239943230 AS Numeric(9, 0)), N'Gabriela Oliveira', N'+351921400001')
SET IDENTITY_INSERT [dbo].[Cliente] OFF
GO
SET IDENTITY_INSERT [dbo].[Escaparate] ON 

INSERT [dbo].[Escaparate] ([IdEscaparate], [IdSeccao]) VALUES (CAST(1 AS Numeric(2, 0)), CAST(1 AS Numeric(2, 0)))
INSERT [dbo].[Escaparate] ([IdEscaparate], [IdSeccao]) VALUES (CAST(2 AS Numeric(2, 0)), CAST(1 AS Numeric(2, 0)))
INSERT [dbo].[Escaparate] ([IdEscaparate], [IdSeccao]) VALUES (CAST(3 AS Numeric(2, 0)), CAST(1 AS Numeric(2, 0)))
INSERT [dbo].[Escaparate] ([IdEscaparate], [IdSeccao]) VALUES (CAST(4 AS Numeric(2, 0)), CAST(1 AS Numeric(2, 0)))
INSERT [dbo].[Escaparate] ([IdEscaparate], [IdSeccao]) VALUES (CAST(5 AS Numeric(2, 0)), CAST(1 AS Numeric(2, 0)))
INSERT [dbo].[Escaparate] ([IdEscaparate], [IdSeccao]) VALUES (CAST(6 AS Numeric(2, 0)), CAST(1 AS Numeric(2, 0)))
INSERT [dbo].[Escaparate] ([IdEscaparate], [IdSeccao]) VALUES (CAST(7 AS Numeric(2, 0)), CAST(1 AS Numeric(2, 0)))
INSERT [dbo].[Escaparate] ([IdEscaparate], [IdSeccao]) VALUES (CAST(8 AS Numeric(2, 0)), CAST(1 AS Numeric(2, 0)))
INSERT [dbo].[Escaparate] ([IdEscaparate], [IdSeccao]) VALUES (CAST(9 AS Numeric(2, 0)), CAST(1 AS Numeric(2, 0)))
INSERT [dbo].[Escaparate] ([IdEscaparate], [IdSeccao]) VALUES (CAST(10 AS Numeric(2, 0)), CAST(1 AS Numeric(2, 0)))
INSERT [dbo].[Escaparate] ([IdEscaparate], [IdSeccao]) VALUES (CAST(11 AS Numeric(2, 0)), CAST(0 AS Numeric(2, 0)))
INSERT [dbo].[Escaparate] ([IdEscaparate], [IdSeccao]) VALUES (CAST(12 AS Numeric(2, 0)), CAST(0 AS Numeric(2, 0)))
INSERT [dbo].[Escaparate] ([IdEscaparate], [IdSeccao]) VALUES (CAST(13 AS Numeric(2, 0)), CAST(0 AS Numeric(2, 0)))
INSERT [dbo].[Escaparate] ([IdEscaparate], [IdSeccao]) VALUES (CAST(14 AS Numeric(2, 0)), CAST(0 AS Numeric(2, 0)))
INSERT [dbo].[Escaparate] ([IdEscaparate], [IdSeccao]) VALUES (CAST(15 AS Numeric(2, 0)), CAST(0 AS Numeric(2, 0)))
INSERT [dbo].[Escaparate] ([IdEscaparate], [IdSeccao]) VALUES (CAST(16 AS Numeric(2, 0)), CAST(0 AS Numeric(2, 0)))
INSERT [dbo].[Escaparate] ([IdEscaparate], [IdSeccao]) VALUES (CAST(17 AS Numeric(2, 0)), CAST(0 AS Numeric(2, 0)))
INSERT [dbo].[Escaparate] ([IdEscaparate], [IdSeccao]) VALUES (CAST(18 AS Numeric(2, 0)), CAST(0 AS Numeric(2, 0)))
INSERT [dbo].[Escaparate] ([IdEscaparate], [IdSeccao]) VALUES (CAST(19 AS Numeric(2, 0)), CAST(0 AS Numeric(2, 0)))
INSERT [dbo].[Escaparate] ([IdEscaparate], [IdSeccao]) VALUES (CAST(20 AS Numeric(2, 0)), CAST(0 AS Numeric(2, 0)))
INSERT [dbo].[Escaparate] ([IdEscaparate], [IdSeccao]) VALUES (CAST(21 AS Numeric(2, 0)), CAST(2 AS Numeric(2, 0)))
INSERT [dbo].[Escaparate] ([IdEscaparate], [IdSeccao]) VALUES (CAST(22 AS Numeric(2, 0)), CAST(2 AS Numeric(2, 0)))
INSERT [dbo].[Escaparate] ([IdEscaparate], [IdSeccao]) VALUES (CAST(23 AS Numeric(2, 0)), CAST(2 AS Numeric(2, 0)))
INSERT [dbo].[Escaparate] ([IdEscaparate], [IdSeccao]) VALUES (CAST(24 AS Numeric(2, 0)), CAST(2 AS Numeric(2, 0)))
INSERT [dbo].[Escaparate] ([IdEscaparate], [IdSeccao]) VALUES (CAST(25 AS Numeric(2, 0)), CAST(2 AS Numeric(2, 0)))
INSERT [dbo].[Escaparate] ([IdEscaparate], [IdSeccao]) VALUES (CAST(26 AS Numeric(2, 0)), CAST(2 AS Numeric(2, 0)))
INSERT [dbo].[Escaparate] ([IdEscaparate], [IdSeccao]) VALUES (CAST(27 AS Numeric(2, 0)), CAST(2 AS Numeric(2, 0)))
INSERT [dbo].[Escaparate] ([IdEscaparate], [IdSeccao]) VALUES (CAST(28 AS Numeric(2, 0)), CAST(2 AS Numeric(2, 0)))
INSERT [dbo].[Escaparate] ([IdEscaparate], [IdSeccao]) VALUES (CAST(29 AS Numeric(2, 0)), CAST(2 AS Numeric(2, 0)))
INSERT [dbo].[Escaparate] ([IdEscaparate], [IdSeccao]) VALUES (CAST(30 AS Numeric(2, 0)), CAST(2 AS Numeric(2, 0)))
SET IDENTITY_INSERT [dbo].[Escaparate] OFF
GO
SET IDENTITY_INSERT [dbo].[Funcionario] ON 

INSERT [dbo].[Funcionario] ([IdFuncionario], [NomeFuncionario], [MoradaFuncionario], [Turno], [NIF], [ContactoFuncionario]) VALUES (CAST(0 AS Numeric(2, 0)), N'Maria Figueiredo', N'Rua do Ferrador N 84 4050-001 Porto', 0, CAST(253664054 AS Numeric(9, 0)), N'+351910000000')
INSERT [dbo].[Funcionario] ([IdFuncionario], [NomeFuncionario], [MoradaFuncionario], [Turno], [NIF], [ContactoFuncionario]) VALUES (CAST(1 AS Numeric(2, 0)), N'Soraia Mavilde', N'Rua do Madeireiro N 95 4100-002 Porto', 1, CAST(253662295 AS Numeric(9, 0)), N'+351910000001')
INSERT [dbo].[Funcionario] ([IdFuncionario], [NomeFuncionario], [MoradaFuncionario], [Turno], [NIF], [ContactoFuncionario]) VALUES (CAST(2 AS Numeric(2, 0)), N'Pedro Fonseca', N'Rua do Pintor N 10 4150-003 Porto', 0, CAST(253663256 AS Numeric(9, 0)), N'+351910000002')
INSERT [dbo].[Funcionario] ([IdFuncionario], [NomeFuncionario], [MoradaFuncionario], [Turno], [NIF], [ContactoFuncionario]) VALUES (CAST(3 AS Numeric(2, 0)), N'Dinis Pedrosa', N'Rua do Eletrecista N 98 4200-004 Porto', 1, CAST(253662403 AS Numeric(9, 0)), N'+351910000003')
INSERT [dbo].[Funcionario] ([IdFuncionario], [NomeFuncionario], [MoradaFuncionario], [Turno], [NIF], [ContactoFuncionario]) VALUES (CAST(4 AS Numeric(2, 0)), N'Manuela Sampaio', N'Rua do  Tratorista  84 4250-005 Porto', 0, CAST(253662004 AS Numeric(9, 0)), N'+351910000004')
INSERT [dbo].[Funcionario] ([IdFuncionario], [NomeFuncionario], [MoradaFuncionario], [Turno], [NIF], [ContactoFuncionario]) VALUES (CAST(5 AS Numeric(2, 0)), N'Nazare Costa', N'Rua do Moleiro N 62 4300-006 Porto', 1, CAST(253661605 AS Numeric(9, 0)), N'+351910000005')
INSERT [dbo].[Funcionario] ([IdFuncionario], [NomeFuncionario], [MoradaFuncionario], [Turno], [NIF], [ContactoFuncionario]) VALUES (CAST(6 AS Numeric(2, 0)), N'Serafina Pessoa', N'Rua do Soldador N 50 4350-007 Porto', 0, CAST(253660980 AS Numeric(9, 0)), N'+351910000006')
INSERT [dbo].[Funcionario] ([IdFuncionario], [NomeFuncionario], [MoradaFuncionario], [Turno], [NIF], [ContactoFuncionario]) VALUES (CAST(7 AS Numeric(2, 0)), N'Juliana Cardoso', N'Rua do Combatentes N 84 4400-008 Porto', 1, CAST(253660445 AS Numeric(9, 0)), N'+351910000007')
INSERT [dbo].[Funcionario] ([IdFuncionario], [NomeFuncionario], [MoradaFuncionario], [Turno], [NIF], [ContactoFuncionario]) VALUES (CAST(8 AS Numeric(2, 0)), N'Nuno Nunes', N'Rua do Cozinheiro N 84 4450-009 Porto', 1, CAST(253659910 AS Numeric(9, 0)), N'+351910000008')
SET IDENTITY_INSERT [dbo].[Funcionario] OFF
GO
SET IDENTITY_INSERT [dbo].[Peca] ON 

INSERT [dbo].[Peca] ([IdPeca], [IdEscaparate], [IdArtigo], [IdRegistoVenda], [DataDefeito]) VALUES (CAST(3 AS Numeric(5, 0)), CAST(10 AS Numeric(2, 0)), CAST(1 AS Numeric(5, 0)), CAST(1 AS Numeric(5, 0)), NULL)
INSERT [dbo].[Peca] ([IdPeca], [IdEscaparate], [IdArtigo], [IdRegistoVenda], [DataDefeito]) VALUES (CAST(4 AS Numeric(5, 0)), CAST(10 AS Numeric(2, 0)), CAST(1 AS Numeric(5, 0)), CAST(1 AS Numeric(5, 0)), NULL)
INSERT [dbo].[Peca] ([IdPeca], [IdEscaparate], [IdArtigo], [IdRegistoVenda], [DataDefeito]) VALUES (CAST(5 AS Numeric(5, 0)), CAST(12 AS Numeric(2, 0)), CAST(2 AS Numeric(5, 0)), CAST(1 AS Numeric(5, 0)), NULL)
INSERT [dbo].[Peca] ([IdPeca], [IdEscaparate], [IdArtigo], [IdRegistoVenda], [DataDefeito]) VALUES (CAST(6 AS Numeric(5, 0)), CAST(12 AS Numeric(2, 0)), CAST(2 AS Numeric(5, 0)), CAST(1 AS Numeric(5, 0)), NULL)
INSERT [dbo].[Peca] ([IdPeca], [IdEscaparate], [IdArtigo], [IdRegistoVenda], [DataDefeito]) VALUES (CAST(7 AS Numeric(5, 0)), CAST(21 AS Numeric(2, 0)), CAST(5 AS Numeric(5, 0)), CAST(2 AS Numeric(5, 0)), NULL)
INSERT [dbo].[Peca] ([IdPeca], [IdEscaparate], [IdArtigo], [IdRegistoVenda], [DataDefeito]) VALUES (CAST(8 AS Numeric(5, 0)), CAST(21 AS Numeric(2, 0)), CAST(5 AS Numeric(5, 0)), CAST(2 AS Numeric(5, 0)), NULL)
INSERT [dbo].[Peca] ([IdPeca], [IdEscaparate], [IdArtigo], [IdRegistoVenda], [DataDefeito]) VALUES (CAST(9 AS Numeric(5, 0)), CAST(21 AS Numeric(2, 0)), CAST(5 AS Numeric(5, 0)), CAST(2 AS Numeric(5, 0)), NULL)
INSERT [dbo].[Peca] ([IdPeca], [IdEscaparate], [IdArtigo], [IdRegistoVenda], [DataDefeito]) VALUES (CAST(10 AS Numeric(5, 0)), CAST(22 AS Numeric(2, 0)), CAST(5 AS Numeric(5, 0)), CAST(2 AS Numeric(5, 0)), CAST(N'2023-06-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Peca] ([IdPeca], [IdEscaparate], [IdArtigo], [IdRegistoVenda], [DataDefeito]) VALUES (CAST(11 AS Numeric(5, 0)), CAST(22 AS Numeric(2, 0)), CAST(2 AS Numeric(5, 0)), CAST(2 AS Numeric(5, 0)), CAST(N'2023-06-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Peca] ([IdPeca], [IdEscaparate], [IdArtigo], [IdRegistoVenda], [DataDefeito]) VALUES (CAST(12 AS Numeric(5, 0)), CAST(28 AS Numeric(2, 0)), CAST(3 AS Numeric(5, 0)), CAST(3 AS Numeric(5, 0)), NULL)
INSERT [dbo].[Peca] ([IdPeca], [IdEscaparate], [IdArtigo], [IdRegistoVenda], [DataDefeito]) VALUES (CAST(13 AS Numeric(5, 0)), CAST(30 AS Numeric(2, 0)), CAST(3 AS Numeric(5, 0)), CAST(3 AS Numeric(5, 0)), NULL)
INSERT [dbo].[Peca] ([IdPeca], [IdEscaparate], [IdArtigo], [IdRegistoVenda], [DataDefeito]) VALUES (CAST(14 AS Numeric(5, 0)), CAST(1 AS Numeric(2, 0)), CAST(4 AS Numeric(5, 0)), CAST(4 AS Numeric(5, 0)), NULL)
INSERT [dbo].[Peca] ([IdPeca], [IdEscaparate], [IdArtigo], [IdRegistoVenda], [DataDefeito]) VALUES (CAST(15 AS Numeric(5, 0)), CAST(3 AS Numeric(2, 0)), CAST(4 AS Numeric(5, 0)), CAST(4 AS Numeric(5, 0)), NULL)
INSERT [dbo].[Peca] ([IdPeca], [IdEscaparate], [IdArtigo], [IdRegistoVenda], [DataDefeito]) VALUES (CAST(16 AS Numeric(5, 0)), CAST(4 AS Numeric(2, 0)), CAST(5 AS Numeric(5, 0)), CAST(4 AS Numeric(5, 0)), NULL)
INSERT [dbo].[Peca] ([IdPeca], [IdEscaparate], [IdArtigo], [IdRegistoVenda], [DataDefeito]) VALUES (CAST(17 AS Numeric(5, 0)), CAST(7 AS Numeric(2, 0)), CAST(5 AS Numeric(5, 0)), CAST(4 AS Numeric(5, 0)), NULL)
INSERT [dbo].[Peca] ([IdPeca], [IdEscaparate], [IdArtigo], [IdRegistoVenda], [DataDefeito]) VALUES (CAST(18 AS Numeric(5, 0)), CAST(9 AS Numeric(2, 0)), CAST(7 AS Numeric(5, 0)), CAST(3 AS Numeric(5, 0)), CAST(N'2023-05-05T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Peca] OFF
GO
SET IDENTITY_INSERT [dbo].[RegistoVenda] ON 

INSERT [dbo].[RegistoVenda] ([IdRegistoVenda], [NIF], [IdFuncionario], [DataVenda], [Obs], [TotalPagar]) VALUES (CAST(0 AS Numeric(5, 0)), CAST(239943222 AS Numeric(9, 0)), CAST(1 AS Numeric(2, 0)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'xpto', CAST(50.00 AS Decimal(6, 2)))
INSERT [dbo].[RegistoVenda] ([IdRegistoVenda], [NIF], [IdFuncionario], [DataVenda], [Obs], [TotalPagar]) VALUES (CAST(1 AS Numeric(5, 0)), CAST(239943222 AS Numeric(9, 0)), CAST(1 AS Numeric(2, 0)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'xpto', CAST(75.00 AS Decimal(6, 2)))
INSERT [dbo].[RegistoVenda] ([IdRegistoVenda], [NIF], [IdFuncionario], [DataVenda], [Obs], [TotalPagar]) VALUES (CAST(2 AS Numeric(5, 0)), CAST(239943222 AS Numeric(9, 0)), CAST(1 AS Numeric(2, 0)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'xpto', CAST(50.00 AS Decimal(6, 2)))
INSERT [dbo].[RegistoVenda] ([IdRegistoVenda], [NIF], [IdFuncionario], [DataVenda], [Obs], [TotalPagar]) VALUES (CAST(3 AS Numeric(5, 0)), CAST(239943223 AS Numeric(9, 0)), CAST(1 AS Numeric(2, 0)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'xpto', CAST(75.00 AS Decimal(6, 2)))
INSERT [dbo].[RegistoVenda] ([IdRegistoVenda], [NIF], [IdFuncionario], [DataVenda], [Obs], [TotalPagar]) VALUES (CAST(4 AS Numeric(5, 0)), CAST(239943224 AS Numeric(9, 0)), CAST(2 AS Numeric(2, 0)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'xpto', CAST(30.00 AS Decimal(6, 2)))
INSERT [dbo].[RegistoVenda] ([IdRegistoVenda], [NIF], [IdFuncionario], [DataVenda], [Obs], [TotalPagar]) VALUES (CAST(5 AS Numeric(5, 0)), CAST(239943224 AS Numeric(9, 0)), CAST(3 AS Numeric(2, 0)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'xpto', CAST(40.00 AS Decimal(6, 2)))
INSERT [dbo].[RegistoVenda] ([IdRegistoVenda], [NIF], [IdFuncionario], [DataVenda], [Obs], [TotalPagar]) VALUES (CAST(6 AS Numeric(5, 0)), CAST(239943225 AS Numeric(9, 0)), CAST(3 AS Numeric(2, 0)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'xpto', CAST(60.00 AS Decimal(6, 2)))
INSERT [dbo].[RegistoVenda] ([IdRegistoVenda], [NIF], [IdFuncionario], [DataVenda], [Obs], [TotalPagar]) VALUES (CAST(7 AS Numeric(5, 0)), CAST(239943226 AS Numeric(9, 0)), CAST(5 AS Numeric(2, 0)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'xpto', CAST(150.00 AS Decimal(6, 2)))
INSERT [dbo].[RegistoVenda] ([IdRegistoVenda], [NIF], [IdFuncionario], [DataVenda], [Obs], [TotalPagar]) VALUES (CAST(8 AS Numeric(5, 0)), CAST(239943227 AS Numeric(9, 0)), CAST(3 AS Numeric(2, 0)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'xpto', CAST(35.00 AS Decimal(6, 2)))
INSERT [dbo].[RegistoVenda] ([IdRegistoVenda], [NIF], [IdFuncionario], [DataVenda], [Obs], [TotalPagar]) VALUES (CAST(9 AS Numeric(5, 0)), CAST(239943228 AS Numeric(9, 0)), CAST(3 AS Numeric(2, 0)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'xpto', CAST(65.00 AS Decimal(6, 2)))
INSERT [dbo].[RegistoVenda] ([IdRegistoVenda], [NIF], [IdFuncionario], [DataVenda], [Obs], [TotalPagar]) VALUES (CAST(10 AS Numeric(5, 0)), CAST(239943229 AS Numeric(9, 0)), CAST(5 AS Numeric(2, 0)), CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'xpto', CAST(180.00 AS Decimal(6, 2)))
SET IDENTITY_INSERT [dbo].[RegistoVenda] OFF
GO
SET IDENTITY_INSERT [dbo].[Seccao] ON 

INSERT [dbo].[Seccao] ([IdSeccao], [Nome]) VALUES (CAST(0 AS Numeric(2, 0)), N'Homem')
INSERT [dbo].[Seccao] ([IdSeccao], [Nome]) VALUES (CAST(1 AS Numeric(2, 0)), N'Mulher')
INSERT [dbo].[Seccao] ([IdSeccao], [Nome]) VALUES (CAST(2 AS Numeric(2, 0)), N'Crianca')
SET IDENTITY_INSERT [dbo].[Seccao] OFF
GO
/****** Object:  Index [UQ__Funciona__C7DEC3304CC9B78A]    Script Date: 22/06/2023 21:25:37 ******/
ALTER TABLE [dbo].[Funcionario] ADD UNIQUE NONCLUSTERED 
(
	[NIF] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Artigo] ADD  DEFAULT ((0.00)) FOR [Preco]
GO
ALTER TABLE [dbo].[RegistoVenda] ADD  DEFAULT ((0.00)) FOR [TotalPagar]
GO
ALTER TABLE [dbo].[Escaparate]  WITH CHECK ADD FOREIGN KEY([IdSeccao])
REFERENCES [dbo].[Seccao] ([IdSeccao])
GO
ALTER TABLE [dbo].[Peca]  WITH CHECK ADD FOREIGN KEY([IdArtigo])
REFERENCES [dbo].[Artigo] ([IdArtigo])
GO
ALTER TABLE [dbo].[Peca]  WITH CHECK ADD FOREIGN KEY([IdEscaparate])
REFERENCES [dbo].[Escaparate] ([IdEscaparate])
GO
ALTER TABLE [dbo].[Peca]  WITH CHECK ADD FOREIGN KEY([IdRegistoVenda])
REFERENCES [dbo].[RegistoVenda] ([IdRegistoVenda])
GO
ALTER TABLE [dbo].[RegistoVenda]  WITH CHECK ADD FOREIGN KEY([IdFuncionario])
REFERENCES [dbo].[Funcionario] ([IdFuncionario])
GO
ALTER TABLE [dbo].[RegistoVenda]  WITH CHECK ADD FOREIGN KEY([NIF])
REFERENCES [dbo].[Cliente] ([NIF])
GO
ALTER TABLE [dbo].[Artigo]  WITH CHECK ADD  CONSTRAINT [artigoPreco] CHECK  (([Preco]>=(0)))
GO
ALTER TABLE [dbo].[Artigo] CHECK CONSTRAINT [artigoPreco]
GO
ALTER TABLE [dbo].[RegistoVenda]  WITH CHECK ADD  CONSTRAINT [registoVendaTotal] CHECK  (([TotalPagar]>=(0)))
GO
ALTER TABLE [dbo].[RegistoVenda] CHECK CONSTRAINT [registoVendaTotal]
GO
USE [master]
GO
ALTER DATABASE [ClothingStore] SET  READ_WRITE 
GO
