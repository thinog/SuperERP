USE [master]
GO
/****** Object:  Database [SuperERP]    Script Date: 06/02/2016 02:42:13 ******/
CREATE DATABASE [SuperERP] ON  PRIMARY 
( NAME = N'SuperERP', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\SuperERP.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SuperERP_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\SuperERP_log.LDF' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SuperERP] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SuperERP].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SuperERP] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [SuperERP] SET ANSI_NULLS OFF
GO
ALTER DATABASE [SuperERP] SET ANSI_PADDING OFF
GO
ALTER DATABASE [SuperERP] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [SuperERP] SET ARITHABORT OFF
GO
ALTER DATABASE [SuperERP] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [SuperERP] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [SuperERP] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [SuperERP] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [SuperERP] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [SuperERP] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [SuperERP] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [SuperERP] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [SuperERP] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [SuperERP] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [SuperERP] SET  ENABLE_BROKER
GO
ALTER DATABASE [SuperERP] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [SuperERP] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [SuperERP] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [SuperERP] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [SuperERP] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [SuperERP] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [SuperERP] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [SuperERP] SET  READ_WRITE
GO
ALTER DATABASE [SuperERP] SET RECOVERY FULL
GO
ALTER DATABASE [SuperERP] SET  MULTI_USER
GO
ALTER DATABASE [SuperERP] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [SuperERP] SET DB_CHAINING OFF
GO
USE [SuperERP]
GO
/****** Object:  Table [dbo].[Ncm]    Script Date: 06/02/2016 02:42:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ncm](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Codico] [varchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Unidade_Medida]    Script Date: 06/02/2016 02:42:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Unidade_Medida](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](60) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Status_Venda]    Script Date: 06/02/2016 02:42:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Status_Venda](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Status_Venda] ON
INSERT [dbo].[Status_Venda] ([ID], [Nome]) VALUES (1, N'1')
SET IDENTITY_INSERT [dbo].[Status_Venda] OFF
/****** Object:  Table [dbo].[Status_Servico]    Script Date: 06/02/2016 02:42:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Status_Servico](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Periodicidade]    Script Date: 06/02/2016 02:42:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Periodicidade](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](60) NOT NULL,
	[Meses] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Perfil]    Script Date: 06/02/2016 02:42:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Perfil](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Perfil] ON
INSERT [dbo].[Perfil] ([ID], [Nome]) VALUES (1, N'1')
SET IDENTITY_INSERT [dbo].[Perfil] OFF
/****** Object:  Table [dbo].[Funcionalidades]    Script Date: 06/02/2016 02:42:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Funcionalidades](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](50) NOT NULL,
	[Descricao] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Forma_Pgto]    Script Date: 06/02/2016 02:42:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Forma_Pgto](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Forma_Pgto] ON
INSERT [dbo].[Forma_Pgto] ([ID], [Nome]) VALUES (1, N'1')
SET IDENTITY_INSERT [dbo].[Forma_Pgto] OFF
/****** Object:  Table [dbo].[Empresa]    Script Date: 06/02/2016 02:42:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empresa](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](50) NOT NULL,
	[CNPJ] [varchar](15) NOT NULL,
	[RazaoSocial] [varchar](30) NOT NULL,
	[CEP] [varchar](8) NOT NULL,
	[Endereco] [varchar](64) NOT NULL,
	[Numero] [varchar](4) NOT NULL,
	[Complemento] [varchar](30) NOT NULL,
	[Bairro] [varchar](30) NOT NULL,
	[Cidade] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Empresa] ON
INSERT [dbo].[Empresa] ([ID], [Nome], [CNPJ], [RazaoSocial], [CEP], [Endereco], [Numero], [Complemento], [Bairro], [Cidade]) VALUES (1, N'11', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1')
SET IDENTITY_INSERT [dbo].[Empresa] OFF
/****** Object:  Table [dbo].[Categoria]    Script Date: 06/02/2016 02:42:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categoria](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CategoriaTipo] [bit] NOT NULL,
	[Nome] [varchar](60) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Categoria] ON
INSERT [dbo].[Categoria] ([ID], [CategoriaTipo], [Nome]) VALUES (1, 1, N'1')
SET IDENTITY_INSERT [dbo].[Categoria] OFF
/****** Object:  Table [dbo].[Dados_Bancarios]    Script Date: 06/02/2016 02:42:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dados_Bancarios](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Empresa] [int] NOT NULL,
	[Banco] [varchar](40) NOT NULL,
	[Conta_Corrente] [varchar](20) NOT NULL,
	[Agencia] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Dados_Bancarios] ON
INSERT [dbo].[Dados_Bancarios] ([ID], [ID_Empresa], [Banco], [Conta_Corrente], [Agencia]) VALUES (1, 1, N'1', N'1', N'1')
SET IDENTITY_INSERT [dbo].[Dados_Bancarios] OFF
/****** Object:  Table [dbo].[Produto]    Script Date: 06/02/2016 02:42:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Produto](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Empresa] [int] NOT NULL,
	[ID_Categoria] [int] NOT NULL,
	[ID_Ncm] [int] NULL,
	[ID_Unidade_Medida] [int] NULL,
	[ICMS] [float] NOT NULL,
	[IPI] [float] NOT NULL,
	[IVA] [float] NOT NULL,
	[ST] [float] NOT NULL,
	[PIS] [float] NOT NULL,
	[COFINS] [float] NOT NULL,
	[Nome] [varchar](255) NOT NULL,
	[Codigo_Cliente] [int] NOT NULL,
	[Codigo_Barras] [int] NOT NULL,
	[Valor_Venda] [float] NOT NULL,
	[Estoque] [int] NOT NULL,
	[EstoqueMax] [int] NOT NULL,
	[EstoqueMin] [int] NOT NULL,
	[Peso_Liquido] [float] NULL,
	[Peso_Bruto] [float] NULL,
	[ean] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PessoaJuridica]    Script Date: 06/02/2016 02:42:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PessoaJuridica](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Empresa] [int] NOT NULL,
	[Nome] [varchar](50) NOT NULL,
	[CNPJ] [varchar](15) NOT NULL,
	[RazaoSocial] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[PessoaJuridica] ON
INSERT [dbo].[PessoaJuridica] ([ID], [ID_Empresa], [Nome], [CNPJ], [RazaoSocial]) VALUES (1, 1, N'1', N'1', N'1')
SET IDENTITY_INSERT [dbo].[PessoaJuridica] OFF
/****** Object:  Table [dbo].[PessoaFisica]    Script Date: 06/02/2016 02:42:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PessoaFisica](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Empresa] [int] NOT NULL,
	[Nome] [varchar](50) NOT NULL,
	[CPF] [varchar](11) NOT NULL,
	[RG] [varchar](11) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[PessoaFisica] ON
INSERT [dbo].[PessoaFisica] ([ID], [ID_Empresa], [Nome], [CPF], [RG]) VALUES (1, 1, N'1', N'1', N'1')
SET IDENTITY_INSERT [dbo].[PessoaFisica] OFF
/****** Object:  Table [dbo].[Servico]    Script Date: 06/02/2016 02:42:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Servico](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Empresa] [int] NOT NULL,
	[ID_Categoria_Servico] [int] NOT NULL,
	[Nome] [varchar](255) NOT NULL,
	[ISS] [float] NOT NULL,
	[ICMS] [float] NOT NULL,
	[IVA] [float] NOT NULL,
	[ST] [float] NOT NULL,
	[PIS] [float] NOT NULL,
	[COFINS] [float] NOT NULL,
	[valor] [float] NULL,
	[custo] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Servico] ON
INSERT [dbo].[Servico] ([ID], [ID_Empresa], [ID_Categoria_Servico], [Nome], [ISS], [ICMS], [IVA], [ST], [PIS], [COFINS], [valor], [custo]) VALUES (2, 1, 1, N'1', 1, 1, 1, 1, 1, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[Servico] OFF
/****** Object:  Table [dbo].[Usuario]    Script Date: 06/02/2016 02:42:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Perfil] [int] NOT NULL,
	[ID_Empresa] [int] NOT NULL,
	[Nome] [varchar](200) NOT NULL,
	[Email] [varchar](150) NOT NULL,
	[Senha] [varchar](60) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON
INSERT [dbo].[Usuario] ([ID], [ID_Perfil], [ID_Empresa], [Nome], [Email], [Senha]) VALUES (2, 1, 1, N'1', N'1', N'1')
SET IDENTITY_INSERT [dbo].[Usuario] OFF
/****** Object:  Table [dbo].[Funcionalidades_Perfil]    Script Date: 06/02/2016 02:42:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Funcionalidades_Perfil](
	[ID_Funcionalidades] [int] NOT NULL,
	[ID_Perfil] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ordem_Servico]    Script Date: 06/02/2016 02:42:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ordem_Servico](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](255) NOT NULL,
	[ID_Servico] [int] NOT NULL,
	[ID_Status] [int] NOT NULL,
	[Numero_Os] [varchar](12) NOT NULL,
	[DataI_Inicio] [date] NOT NULL,
	[DataI_Entrega] [date] NOT NULL,
	[Equipamento_Recebido] [varchar](255) NULL,
	[NumeroSerie] [varchar](15) NULL,
	[Marca] [varchar](255) NULL,
	[Modelo] [varchar](255) NULL,
	[Obs_Recebimento] [varchar](500) NULL,
	[Obs_Problema] [varchar](500) NULL,
	[Descr_Servico] [varchar](500) NULL,
	[Obs_Interno] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DadosBancarios]    Script Date: 06/02/2016 02:42:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DadosBancarios](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Banco] [varchar](40) NOT NULL,
	[Conta_Corrente] [varchar](20) NOT NULL,
	[Agencia] [varchar](10) NOT NULL,
	[ID_PessoaJuridica] [int] NULL,
	[ID_PessoaFisica] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Endereco]    Script Date: 06/02/2016 02:42:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Endereco](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CEP] [varchar](8) NOT NULL,
	[ID_PessoaJuridica] [int] NULL,
	[ID_PessoaFisica] [int] NULL,
	[Endereco] [varchar](64) NOT NULL,
	[Numero] [varchar](4) NOT NULL,
	[Complemento] [varchar](30) NOT NULL,
	[Bairro] [varchar](30) NOT NULL,
	[Cidade] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Contato]    Script Date: 06/02/2016 02:42:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Contato](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](60) NOT NULL,
	[ID_PessoaJuridica] [int] NULL,
	[ID_PessoaFisica] [int] NULL,
	[Email] [varchar](64) NOT NULL,
	[Fone] [varchar](15) NOT NULL,
	[Cargo] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ClienteFornecedor]    Script Date: 06/02/2016 02:42:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClienteFornecedor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_PJ] [int] NULL,
	[ID_PF] [int] NULL,
	[Tipo] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ClienteFornecedor] ON
INSERT [dbo].[ClienteFornecedor] ([ID], [ID_PJ], [ID_PF], [Tipo]) VALUES (3, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[ClienteFornecedor] OFF
/****** Object:  Table [dbo].[Compra]    Script Date: 06/02/2016 02:42:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Compra](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Empresa] [int] NOT NULL,
	[ID_Fornecedor] [int] NOT NULL,
	[ID_Usuario] [int] NOT NULL,
	[ID_Status] [int] NOT NULL,
	[Compra_Num] [int] NOT NULL,
	[Data_Compra] [date] NOT NULL,
	[Desconto] [decimal](9, 2) NOT NULL,
	[ID_FormaPgto] [int] NOT NULL,
	[Observacoes] [varchar](300) NOT NULL,
	[ID_conta] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProdutoFornecedor]    Script Date: 06/02/2016 02:42:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProdutoFornecedor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Produto] [int] NOT NULL,
	[ID_Fornecedor] [int] NOT NULL,
	[Valor_Custo] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Venda]    Script Date: 06/02/2016 02:42:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Venda](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Empresa] [int] NOT NULL,
	[ID_Usuario] [int] NOT NULL,
	[ID_Cliente] [int] NOT NULL,
	[ID_Orcamento] [int] NULL,
	[ID_Status] [int] NOT NULL,
	[ID_conta] [int] NOT NULL,
	[ID_FormaPgto] [int] NOT NULL,
	[Venda_Num] [int] NOT NULL,
	[Data_Venda] [date] NOT NULL,
	[Contrato] [bit] NOT NULL,
	[Desconto] [float] NOT NULL,
	[Observacoes] [varchar](300) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Venda] ON
INSERT [dbo].[Venda] ([ID], [ID_Empresa], [ID_Usuario], [ID_Cliente], [ID_Orcamento], [ID_Status], [ID_conta], [ID_FormaPgto], [Venda_Num], [Data_Venda], [Contrato], [Desconto], [Observacoes]) VALUES (9, 1, 2, 3, NULL, 1, 1, 1, 1, CAST(0xDC3A0B00 AS Date), 1, 0, N'0')
SET IDENTITY_INSERT [dbo].[Venda] OFF
/****** Object:  Table [dbo].[Venda_Ativos]    Script Date: 06/02/2016 02:42:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Venda_Ativos](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Venda] [int] NOT NULL,
	[ID_Produto] [int] NULL,
	[ID_Servico] [int] NULL,
	[ID_Compra] [int] NULL,
	[Imposto] [float] NULL,
	[Detalhes] [varchar](300) NULL,
	[Quantidade] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Parcelamento]    Script Date: 06/02/2016 02:42:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parcelamento](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Compra] [int] NULL,
	[ID_Venda] [int] NULL,
	[Numero_Parcela] [int] NOT NULL,
	[Valor] [decimal](4, 2) NOT NULL,
	[Pago] [bit] NULL,
	[Data_Pagamento] [date] NOT NULL,
	[Data_Pago] [date],
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Parcelamento] ON
INSERT [dbo].[Parcelamento] ([ID], [ID_Compra], [ID_Venda], [Numero_Parcela], [Valor], [Pago], [Data_Pagamento], [Data_Pago]) VALUES (1, NULL, 9, 6, CAST(50.00 AS Decimal(4, 2)), 1, CAST(0xDB3A0B00 AS Date), CAST(0xDC3A0B00 AS Date))
INSERT [dbo].[Parcelamento] ([ID], [ID_Compra], [ID_Venda], [Numero_Parcela], [Valor], [Pago], [Data_Pagamento], [Data_Pago]) VALUES (2, NULL, 9, 5, CAST(50.00 AS Decimal(4, 2)), 1, CAST(0xDF3A0B00 AS Date), CAST(0xDC3A0B00 AS Date))
INSERT [dbo].[Parcelamento] ([ID], [ID_Compra], [ID_Venda], [Numero_Parcela], [Valor], [Pago], [Data_Pagamento], [Data_Pago]) VALUES (3, NULL, 9, 4, CAST(50.00 AS Decimal(4, 2)), 0, CAST(0xDF3A0B00 AS Date), CAST(0xDC3A0B00 AS Date))
INSERT [dbo].[Parcelamento] ([ID], [ID_Compra], [ID_Venda], [Numero_Parcela], [Valor], [Pago], [Data_Pagamento], [Data_Pago]) VALUES (4, NULL, 9, 3, CAST(50.00 AS Decimal(4, 2)), 0, CAST(0xDF3A0B00 AS Date), CAST(0xDC3A0B00 AS Date))
INSERT [dbo].[Parcelamento] ([ID], [ID_Compra], [ID_Venda], [Numero_Parcela], [Valor], [Pago], [Data_Pagamento], [Data_Pago]) VALUES (5, NULL, 9, 2, CAST(50.00 AS Decimal(4, 2)), 0, CAST(0xDF3A0B00 AS Date), CAST(0xDC3A0B00 AS Date))
INSERT [dbo].[Parcelamento] ([ID], [ID_Compra], [ID_Venda], [Numero_Parcela], [Valor], [Pago], [Data_Pagamento], [Data_Pago]) VALUES (6, NULL, 9, 1, CAST(50.00 AS Decimal(4, 2)), 0, CAST(0xDF3A0B00 AS Date), CAST(0xDC3A0B00 AS Date))
SET IDENTITY_INSERT [dbo].[Parcelamento] OFF
/****** Object:  Table [dbo].[Contrato_Venda]    Script Date: 06/02/2016 02:42:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contrato_Venda](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Periodicidade] [int] NOT NULL,
	[ID_Venda] [int] NOT NULL,
	[Dia_Cobranca] [int] NOT NULL,
	[Data_Inicio] [date] NOT NULL,
	[Data_Fim] [date] NOT NULL,
	[Juros] [decimal](4, 2) NOT NULL,
	[Ocorrencias] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Compra_Ativos]    Script Date: 06/02/2016 02:42:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Compra_Ativos](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Compra] [int] NOT NULL,
	[ID_Produto] [int] NULL,
	[ID_Servico] [int] NULL,
	[Imposto] [decimal](4, 2) NULL,
	[Detalhes] [varchar](300) NULL,
	[Quantidade] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  ForeignKey [FK_DadosBancarios_Empresa]    Script Date: 06/02/2016 02:42:13 ******/
ALTER TABLE [dbo].[Dados_Bancarios]  WITH CHECK ADD  CONSTRAINT [FK_DadosBancarios_Empresa] FOREIGN KEY([ID_Empresa])
REFERENCES [dbo].[Empresa] ([ID])
GO
ALTER TABLE [dbo].[Dados_Bancarios] CHECK CONSTRAINT [FK_DadosBancarios_Empresa]
GO
/****** Object:  ForeignKey [FK_Prod_Cat]    Script Date: 06/02/2016 02:42:13 ******/
ALTER TABLE [dbo].[Produto]  WITH CHECK ADD  CONSTRAINT [FK_Prod_Cat] FOREIGN KEY([ID_Categoria])
REFERENCES [dbo].[Categoria] ([ID])
GO
ALTER TABLE [dbo].[Produto] CHECK CONSTRAINT [FK_Prod_Cat]
GO
/****** Object:  ForeignKey [FK_Prod_Empresa]    Script Date: 06/02/2016 02:42:13 ******/
ALTER TABLE [dbo].[Produto]  WITH CHECK ADD  CONSTRAINT [FK_Prod_Empresa] FOREIGN KEY([ID_Empresa])
REFERENCES [dbo].[Empresa] ([ID])
GO
ALTER TABLE [dbo].[Produto] CHECK CONSTRAINT [FK_Prod_Empresa]
GO
/****** Object:  ForeignKey [FK_Prod_Ncm]    Script Date: 06/02/2016 02:42:13 ******/
ALTER TABLE [dbo].[Produto]  WITH CHECK ADD  CONSTRAINT [FK_Prod_Ncm] FOREIGN KEY([ID_Ncm])
REFERENCES [dbo].[Ncm] ([ID])
GO
ALTER TABLE [dbo].[Produto] CHECK CONSTRAINT [FK_Prod_Ncm]
GO
/****** Object:  ForeignKey [FK_Prod_UnidMed]    Script Date: 06/02/2016 02:42:13 ******/
ALTER TABLE [dbo].[Produto]  WITH CHECK ADD  CONSTRAINT [FK_Prod_UnidMed] FOREIGN KEY([ID_Unidade_Medida])
REFERENCES [dbo].[Unidade_Medida] ([ID])
GO
ALTER TABLE [dbo].[Produto] CHECK CONSTRAINT [FK_Prod_UnidMed]
GO
/****** Object:  ForeignKey [FK_PessoaJuridica_Empresa]    Script Date: 06/02/2016 02:42:13 ******/
ALTER TABLE [dbo].[PessoaJuridica]  WITH CHECK ADD  CONSTRAINT [FK_PessoaJuridica_Empresa] FOREIGN KEY([ID_Empresa])
REFERENCES [dbo].[Empresa] ([ID])
GO
ALTER TABLE [dbo].[PessoaJuridica] CHECK CONSTRAINT [FK_PessoaJuridica_Empresa]
GO
/****** Object:  ForeignKey [FK_PessoaFisica_Empresa]    Script Date: 06/02/2016 02:42:13 ******/
ALTER TABLE [dbo].[PessoaFisica]  WITH CHECK ADD  CONSTRAINT [FK_PessoaFisica_Empresa] FOREIGN KEY([ID_Empresa])
REFERENCES [dbo].[Empresa] ([ID])
GO
ALTER TABLE [dbo].[PessoaFisica] CHECK CONSTRAINT [FK_PessoaFisica_Empresa]
GO
/****** Object:  ForeignKey [FK_Servico_Categoria]    Script Date: 06/02/2016 02:42:13 ******/
ALTER TABLE [dbo].[Servico]  WITH CHECK ADD  CONSTRAINT [FK_Servico_Categoria] FOREIGN KEY([ID_Categoria_Servico])
REFERENCES [dbo].[Categoria] ([ID])
GO
ALTER TABLE [dbo].[Servico] CHECK CONSTRAINT [FK_Servico_Categoria]
GO
/****** Object:  ForeignKey [FK_Servico_Empresa]    Script Date: 06/02/2016 02:42:13 ******/
ALTER TABLE [dbo].[Servico]  WITH CHECK ADD  CONSTRAINT [FK_Servico_Empresa] FOREIGN KEY([ID_Empresa])
REFERENCES [dbo].[Empresa] ([ID])
GO
ALTER TABLE [dbo].[Servico] CHECK CONSTRAINT [FK_Servico_Empresa]
GO
/****** Object:  ForeignKey [FK_Usuario_Empresa]    Script Date: 06/02/2016 02:42:13 ******/
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Empresa] FOREIGN KEY([ID_Empresa])
REFERENCES [dbo].[Empresa] ([ID])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Empresa]
GO
/****** Object:  ForeignKey [FK_Usuario_Perfil]    Script Date: 06/02/2016 02:42:13 ******/
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Perfil] FOREIGN KEY([ID_Perfil])
REFERENCES [dbo].[Perfil] ([ID])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Perfil]
GO
/****** Object:  ForeignKey [FK_FuncionalidadesPerfil_Funcionalidades]    Script Date: 06/02/2016 02:42:13 ******/
ALTER TABLE [dbo].[Funcionalidades_Perfil]  WITH CHECK ADD  CONSTRAINT [FK_FuncionalidadesPerfil_Funcionalidades] FOREIGN KEY([ID_Funcionalidades])
REFERENCES [dbo].[Funcionalidades] ([ID])
GO
ALTER TABLE [dbo].[Funcionalidades_Perfil] CHECK CONSTRAINT [FK_FuncionalidadesPerfil_Funcionalidades]
GO
/****** Object:  ForeignKey [FK_FuncionalidadesPerfil_Perfil]    Script Date: 06/02/2016 02:42:13 ******/
ALTER TABLE [dbo].[Funcionalidades_Perfil]  WITH CHECK ADD  CONSTRAINT [FK_FuncionalidadesPerfil_Perfil] FOREIGN KEY([ID_Perfil])
REFERENCES [dbo].[Perfil] ([ID])
GO
ALTER TABLE [dbo].[Funcionalidades_Perfil] CHECK CONSTRAINT [FK_FuncionalidadesPerfil_Perfil]
GO
/****** Object:  ForeignKey [FK_OrdemSerivco_Servico]    Script Date: 06/02/2016 02:42:13 ******/
ALTER TABLE [dbo].[Ordem_Servico]  WITH CHECK ADD  CONSTRAINT [FK_OrdemSerivco_Servico] FOREIGN KEY([ID_Servico])
REFERENCES [dbo].[Servico] ([ID])
GO
ALTER TABLE [dbo].[Ordem_Servico] CHECK CONSTRAINT [FK_OrdemSerivco_Servico]
GO
/****** Object:  ForeignKey [FK_OrdermServico_Status]    Script Date: 06/02/2016 02:42:13 ******/
ALTER TABLE [dbo].[Ordem_Servico]  WITH CHECK ADD  CONSTRAINT [FK_OrdermServico_Status] FOREIGN KEY([ID_Status])
REFERENCES [dbo].[Status_Servico] ([ID])
GO
ALTER TABLE [dbo].[Ordem_Servico] CHECK CONSTRAINT [FK_OrdermServico_Status]
GO
/****** Object:  ForeignKey [FK_DadosBancarios_PF]    Script Date: 06/02/2016 02:42:13 ******/
ALTER TABLE [dbo].[DadosBancarios]  WITH CHECK ADD  CONSTRAINT [FK_DadosBancarios_PF] FOREIGN KEY([ID_PessoaFisica])
REFERENCES [dbo].[PessoaFisica] ([ID])
GO
ALTER TABLE [dbo].[DadosBancarios] CHECK CONSTRAINT [FK_DadosBancarios_PF]
GO
/****** Object:  ForeignKey [FK_DadosBancarios_PJ]    Script Date: 06/02/2016 02:42:13 ******/
ALTER TABLE [dbo].[DadosBancarios]  WITH CHECK ADD  CONSTRAINT [FK_DadosBancarios_PJ] FOREIGN KEY([ID_PessoaJuridica])
REFERENCES [dbo].[PessoaJuridica] ([ID])
GO
ALTER TABLE [dbo].[DadosBancarios] CHECK CONSTRAINT [FK_DadosBancarios_PJ]
GO
/****** Object:  ForeignKey [FK_Endereco_PF]    Script Date: 06/02/2016 02:42:13 ******/
ALTER TABLE [dbo].[Endereco]  WITH CHECK ADD  CONSTRAINT [FK_Endereco_PF] FOREIGN KEY([ID_PessoaFisica])
REFERENCES [dbo].[PessoaFisica] ([ID])
GO
ALTER TABLE [dbo].[Endereco] CHECK CONSTRAINT [FK_Endereco_PF]
GO
/****** Object:  ForeignKey [FK_Endereco_PJ]    Script Date: 06/02/2016 02:42:13 ******/
ALTER TABLE [dbo].[Endereco]  WITH CHECK ADD  CONSTRAINT [FK_Endereco_PJ] FOREIGN KEY([ID_PessoaJuridica])
REFERENCES [dbo].[PessoaJuridica] ([ID])
GO
ALTER TABLE [dbo].[Endereco] CHECK CONSTRAINT [FK_Endereco_PJ]
GO
/****** Object:  ForeignKey [FK_Contato_PF]    Script Date: 06/02/2016 02:42:13 ******/
ALTER TABLE [dbo].[Contato]  WITH CHECK ADD  CONSTRAINT [FK_Contato_PF] FOREIGN KEY([ID_PessoaFisica])
REFERENCES [dbo].[PessoaFisica] ([ID])
GO
ALTER TABLE [dbo].[Contato] CHECK CONSTRAINT [FK_Contato_PF]
GO
/****** Object:  ForeignKey [FK_Contato_PJ]    Script Date: 06/02/2016 02:42:13 ******/
ALTER TABLE [dbo].[Contato]  WITH CHECK ADD  CONSTRAINT [FK_Contato_PJ] FOREIGN KEY([ID_PessoaJuridica])
REFERENCES [dbo].[PessoaJuridica] ([ID])
GO
ALTER TABLE [dbo].[Contato] CHECK CONSTRAINT [FK_Contato_PJ]
GO
/****** Object:  ForeignKey [FK_CliFor_PF]    Script Date: 06/02/2016 02:42:13 ******/
ALTER TABLE [dbo].[ClienteFornecedor]  WITH CHECK ADD  CONSTRAINT [FK_CliFor_PF] FOREIGN KEY([ID_PF])
REFERENCES [dbo].[PessoaFisica] ([ID])
GO
ALTER TABLE [dbo].[ClienteFornecedor] CHECK CONSTRAINT [FK_CliFor_PF]
GO
/****** Object:  ForeignKey [FK_CliFor_PJ]    Script Date: 06/02/2016 02:42:13 ******/
ALTER TABLE [dbo].[ClienteFornecedor]  WITH CHECK ADD  CONSTRAINT [FK_CliFor_PJ] FOREIGN KEY([ID_PJ])
REFERENCES [dbo].[PessoaJuridica] ([ID])
GO
ALTER TABLE [dbo].[ClienteFornecedor] CHECK CONSTRAINT [FK_CliFor_PJ]
GO
/****** Object:  ForeignKey [FK_Compra_CC]    Script Date: 06/02/2016 02:42:13 ******/
ALTER TABLE [dbo].[Compra]  WITH CHECK ADD  CONSTRAINT [FK_Compra_CC] FOREIGN KEY([ID_conta])
REFERENCES [dbo].[Dados_Bancarios] ([ID])
GO
ALTER TABLE [dbo].[Compra] CHECK CONSTRAINT [FK_Compra_CC]
GO
/****** Object:  ForeignKey [FK_Compra_Cliente]    Script Date: 06/02/2016 02:42:13 ******/
ALTER TABLE [dbo].[Compra]  WITH CHECK ADD  CONSTRAINT [FK_Compra_Cliente] FOREIGN KEY([ID_Fornecedor])
REFERENCES [dbo].[ClienteFornecedor] ([ID])
GO
ALTER TABLE [dbo].[Compra] CHECK CONSTRAINT [FK_Compra_Cliente]
GO
/****** Object:  ForeignKey [FK_Compra_Empresa]    Script Date: 06/02/2016 02:42:13 ******/
ALTER TABLE [dbo].[Compra]  WITH CHECK ADD  CONSTRAINT [FK_Compra_Empresa] FOREIGN KEY([ID_Empresa])
REFERENCES [dbo].[Empresa] ([ID])
GO
ALTER TABLE [dbo].[Compra] CHECK CONSTRAINT [FK_Compra_Empresa]
GO
/****** Object:  ForeignKey [FK_Compra_FormaPgto]    Script Date: 06/02/2016 02:42:13 ******/
ALTER TABLE [dbo].[Compra]  WITH CHECK ADD  CONSTRAINT [FK_Compra_FormaPgto] FOREIGN KEY([ID_FormaPgto])
REFERENCES [dbo].[Forma_Pgto] ([ID])
GO
ALTER TABLE [dbo].[Compra] CHECK CONSTRAINT [FK_Compra_FormaPgto]
GO
/****** Object:  ForeignKey [FK_Compra_Status]    Script Date: 06/02/2016 02:42:13 ******/
ALTER TABLE [dbo].[Compra]  WITH CHECK ADD  CONSTRAINT [FK_Compra_Status] FOREIGN KEY([ID_Status])
REFERENCES [dbo].[Status_Venda] ([ID])
GO
ALTER TABLE [dbo].[Compra] CHECK CONSTRAINT [FK_Compra_Status]
GO
/****** Object:  ForeignKey [FK_Compra_Usuario]    Script Date: 06/02/2016 02:42:13 ******/
ALTER TABLE [dbo].[Compra]  WITH CHECK ADD  CONSTRAINT [FK_Compra_Usuario] FOREIGN KEY([ID_Usuario])
REFERENCES [dbo].[Usuario] ([ID])
GO
ALTER TABLE [dbo].[Compra] CHECK CONSTRAINT [FK_Compra_Usuario]
GO
/****** Object:  ForeignKey [FK_ProdutoForn_Fornecedor]    Script Date: 06/02/2016 02:42:13 ******/
ALTER TABLE [dbo].[ProdutoFornecedor]  WITH CHECK ADD  CONSTRAINT [FK_ProdutoForn_Fornecedor] FOREIGN KEY([ID_Fornecedor])
REFERENCES [dbo].[ClienteFornecedor] ([ID])
GO
ALTER TABLE [dbo].[ProdutoFornecedor] CHECK CONSTRAINT [FK_ProdutoForn_Fornecedor]
GO
/****** Object:  ForeignKey [FK_ProdutoForn_Produto]    Script Date: 06/02/2016 02:42:13 ******/
ALTER TABLE [dbo].[ProdutoFornecedor]  WITH CHECK ADD  CONSTRAINT [FK_ProdutoForn_Produto] FOREIGN KEY([ID_Produto])
REFERENCES [dbo].[Produto] ([ID])
GO
ALTER TABLE [dbo].[ProdutoFornecedor] CHECK CONSTRAINT [FK_ProdutoForn_Produto]
GO
/****** Object:  ForeignKey [FK_Venda_CC]    Script Date: 06/02/2016 02:42:13 ******/
ALTER TABLE [dbo].[Venda]  WITH CHECK ADD  CONSTRAINT [FK_Venda_CC] FOREIGN KEY([ID_conta])
REFERENCES [dbo].[Dados_Bancarios] ([ID])
GO
ALTER TABLE [dbo].[Venda] CHECK CONSTRAINT [FK_Venda_CC]
GO
/****** Object:  ForeignKey [FK_Venda_Cliente]    Script Date: 06/02/2016 02:42:13 ******/
ALTER TABLE [dbo].[Venda]  WITH CHECK ADD  CONSTRAINT [FK_Venda_Cliente] FOREIGN KEY([ID_Cliente])
REFERENCES [dbo].[ClienteFornecedor] ([ID])
GO
ALTER TABLE [dbo].[Venda] CHECK CONSTRAINT [FK_Venda_Cliente]
GO
/****** Object:  ForeignKey [FK_Venda_Empresa]    Script Date: 06/02/2016 02:42:13 ******/
ALTER TABLE [dbo].[Venda]  WITH CHECK ADD  CONSTRAINT [FK_Venda_Empresa] FOREIGN KEY([ID_Empresa])
REFERENCES [dbo].[Empresa] ([ID])
GO
ALTER TABLE [dbo].[Venda] CHECK CONSTRAINT [FK_Venda_Empresa]
GO
/****** Object:  ForeignKey [FK_Venda_FormaPgto]    Script Date: 06/02/2016 02:42:13 ******/
ALTER TABLE [dbo].[Venda]  WITH CHECK ADD  CONSTRAINT [FK_Venda_FormaPgto] FOREIGN KEY([ID_FormaPgto])
REFERENCES [dbo].[Forma_Pgto] ([ID])
GO
ALTER TABLE [dbo].[Venda] CHECK CONSTRAINT [FK_Venda_FormaPgto]
GO
/****** Object:  ForeignKey [FK_Venda_Orcamento]    Script Date: 06/02/2016 02:42:13 ******/
ALTER TABLE [dbo].[Venda]  WITH CHECK ADD  CONSTRAINT [FK_Venda_Orcamento] FOREIGN KEY([ID_Orcamento])
REFERENCES [dbo].[Venda] ([ID])
GO
ALTER TABLE [dbo].[Venda] CHECK CONSTRAINT [FK_Venda_Orcamento]
GO
/****** Object:  ForeignKey [FK_Venda_Status]    Script Date: 06/02/2016 02:42:13 ******/
ALTER TABLE [dbo].[Venda]  WITH CHECK ADD  CONSTRAINT [FK_Venda_Status] FOREIGN KEY([ID_Status])
REFERENCES [dbo].[Status_Venda] ([ID])
GO
ALTER TABLE [dbo].[Venda] CHECK CONSTRAINT [FK_Venda_Status]
GO
/****** Object:  ForeignKey [FK_Venda_Usuario]    Script Date: 06/02/2016 02:42:13 ******/
ALTER TABLE [dbo].[Venda]  WITH CHECK ADD  CONSTRAINT [FK_Venda_Usuario] FOREIGN KEY([ID_Usuario])
REFERENCES [dbo].[Usuario] ([ID])
GO
ALTER TABLE [dbo].[Venda] CHECK CONSTRAINT [FK_Venda_Usuario]
GO
/****** Object:  ForeignKey [FK_Compra]    Script Date: 06/02/2016 02:42:13 ******/
ALTER TABLE [dbo].[Venda_Ativos]  WITH CHECK ADD  CONSTRAINT [FK_Compra] FOREIGN KEY([ID_Compra])
REFERENCES [dbo].[Compra] ([ID])
GO
ALTER TABLE [dbo].[Venda_Ativos] CHECK CONSTRAINT [FK_Compra]
GO
/****** Object:  ForeignKey [FK_VendaAtivo_Produto]    Script Date: 06/02/2016 02:42:13 ******/
ALTER TABLE [dbo].[Venda_Ativos]  WITH CHECK ADD  CONSTRAINT [FK_VendaAtivo_Produto] FOREIGN KEY([ID_Produto])
REFERENCES [dbo].[Produto] ([ID])
GO
ALTER TABLE [dbo].[Venda_Ativos] CHECK CONSTRAINT [FK_VendaAtivo_Produto]
GO
/****** Object:  ForeignKey [FK_VendaAtivo_Servico]    Script Date: 06/02/2016 02:42:13 ******/
ALTER TABLE [dbo].[Venda_Ativos]  WITH CHECK ADD  CONSTRAINT [FK_VendaAtivo_Servico] FOREIGN KEY([ID_Servico])
REFERENCES [dbo].[Servico] ([ID])
GO
ALTER TABLE [dbo].[Venda_Ativos] CHECK CONSTRAINT [FK_VendaAtivo_Servico]
GO
/****** Object:  ForeignKey [FK_VendaAtivo_Venda]    Script Date: 06/02/2016 02:42:13 ******/
ALTER TABLE [dbo].[Venda_Ativos]  WITH CHECK ADD  CONSTRAINT [FK_VendaAtivo_Venda] FOREIGN KEY([ID_Venda])
REFERENCES [dbo].[Venda] ([ID])
GO
ALTER TABLE [dbo].[Venda_Ativos] CHECK CONSTRAINT [FK_VendaAtivo_Venda]
GO
/****** Object:  ForeignKey [FK_Parcelamento_Compra]    Script Date: 06/02/2016 02:42:13 ******/
ALTER TABLE [dbo].[Parcelamento]  WITH CHECK ADD  CONSTRAINT [FK_Parcelamento_Compra] FOREIGN KEY([ID_Compra])
REFERENCES [dbo].[Compra] ([ID])
GO
ALTER TABLE [dbo].[Parcelamento] CHECK CONSTRAINT [FK_Parcelamento_Compra]
GO
/****** Object:  ForeignKey [FK_Parcelamento_Venda]    Script Date: 06/02/2016 02:42:13 ******/
ALTER TABLE [dbo].[Parcelamento]  WITH CHECK ADD  CONSTRAINT [FK_Parcelamento_Venda] FOREIGN KEY([ID_Venda])
REFERENCES [dbo].[Venda] ([ID])
GO
ALTER TABLE [dbo].[Parcelamento] CHECK CONSTRAINT [FK_Parcelamento_Venda]
GO
/****** Object:  ForeignKey [FK_ContratoVenda_Periodicidade]    Script Date: 06/02/2016 02:42:13 ******/
ALTER TABLE [dbo].[Contrato_Venda]  WITH CHECK ADD  CONSTRAINT [FK_ContratoVenda_Periodicidade] FOREIGN KEY([ID_Periodicidade])
REFERENCES [dbo].[Periodicidade] ([ID])
GO
ALTER TABLE [dbo].[Contrato_Venda] CHECK CONSTRAINT [FK_ContratoVenda_Periodicidade]
GO
/****** Object:  ForeignKey [FK_ContratoVenda_Venda]    Script Date: 06/02/2016 02:42:13 ******/
ALTER TABLE [dbo].[Contrato_Venda]  WITH CHECK ADD  CONSTRAINT [FK_ContratoVenda_Venda] FOREIGN KEY([ID_Venda])
REFERENCES [dbo].[Venda] ([ID])
GO
ALTER TABLE [dbo].[Contrato_Venda] CHECK CONSTRAINT [FK_ContratoVenda_Venda]
GO
/****** Object:  ForeignKey [FK_CompraAtivo_Produto]    Script Date: 06/02/2016 02:42:13 ******/
ALTER TABLE [dbo].[Compra_Ativos]  WITH CHECK ADD  CONSTRAINT [FK_CompraAtivo_Produto] FOREIGN KEY([ID_Produto])
REFERENCES [dbo].[Produto] ([ID])
GO
ALTER TABLE [dbo].[Compra_Ativos] CHECK CONSTRAINT [FK_CompraAtivo_Produto]
GO
/****** Object:  ForeignKey [FK_CompraAtivo_Servico]    Script Date: 06/02/2016 02:42:13 ******/
ALTER TABLE [dbo].[Compra_Ativos]  WITH CHECK ADD  CONSTRAINT [FK_CompraAtivo_Servico] FOREIGN KEY([ID_Servico])
REFERENCES [dbo].[Servico] ([ID])
GO
ALTER TABLE [dbo].[Compra_Ativos] CHECK CONSTRAINT [FK_CompraAtivo_Servico]
GO
/****** Object:  ForeignKey [FK_CompraAtivo_Venda]    Script Date: 06/02/2016 02:42:13 ******/
ALTER TABLE [dbo].[Compra_Ativos]  WITH CHECK ADD  CONSTRAINT [FK_CompraAtivo_Venda] FOREIGN KEY([ID_Compra])
REFERENCES [dbo].[Compra] ([ID])
GO
ALTER TABLE [dbo].[Compra_Ativos] CHECK CONSTRAINT [FK_CompraAtivo_Venda]
GO
