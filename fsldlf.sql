USE [master]
GO
/****** Object:  Database [test2]    Script Date: 20.05.2021 20:14:44 ******/
CREATE DATABASE [test2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'test2', FILENAME = N'D:\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\test2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'test2_log', FILENAME = N'D:\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\test2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [test2] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [test2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [test2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [test2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [test2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [test2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [test2] SET ARITHABORT OFF 
GO
ALTER DATABASE [test2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [test2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [test2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [test2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [test2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [test2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [test2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [test2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [test2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [test2] SET  DISABLE_BROKER 
GO
ALTER DATABASE [test2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [test2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [test2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [test2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [test2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [test2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [test2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [test2] SET RECOVERY FULL 
GO
ALTER DATABASE [test2] SET  MULTI_USER 
GO
ALTER DATABASE [test2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [test2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [test2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [test2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [test2] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [test2] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [test2] SET QUERY_STORE = OFF
GO
USE [test2]
GO
/****** Object:  Table [dbo].[alt_kategori]    Script Date: 20.05.2021 20:14:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[alt_kategori](
	[alt_kategori_id] [int] IDENTITY(1,1) NOT NULL,
	[alt_kategori_ad] [varchar](50) NULL,
	[kategori_id] [int] NULL,
	[aktif] [bit] NULL,
 CONSTRAINT [PK_alt_kategori] PRIMARY KEY CLUSTERED 
(
	[alt_kategori_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kategori]    Script Date: 20.05.2021 20:14:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kategori](
	[kategori_id] [int] IDENTITY(1,1) NOT NULL,
	[kategori_ad] [varchar](50) NULL,
	[aktif] [bit] NULL,
 CONSTRAINT [PK_kategori] PRIMARY KEY CLUSTERED 
(
	[kategori_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kullanici]    Script Date: 20.05.2021 20:14:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kullanici](
	[kullanici_id] [int] IDENTITY(1,1) NOT NULL,
	[kullanici_adi] [varchar](50) NOT NULL,
	[kullanici_mail] [varchar](50) NOT NULL,
	[kullanici_sifre] [varchar](50) NOT NULL,
	[aktif] [bit] NULL,
	[yetki] [varchar](50) NULL,
 CONSTRAINT [PK_kullanici] PRIMARY KEY CLUSTERED 
(
	[kullanici_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kullanici_skor]    Script Date: 20.05.2021 20:14:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kullanici_skor](
	[skor_id] [int] NOT NULL,
	[kullanici_id] [int] NULL,
	[eniyi_skor] [int] NULL,
 CONSTRAINT [PK_kullanici_skor] PRIMARY KEY CLUSTERED 
(
	[skor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kullanici_soru_cevap]    Script Date: 20.05.2021 20:14:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kullanici_soru_cevap](
	[kullanici_id] [int] NOT NULL,
	[soru_id] [int] NULL,
	[secim_id] [int] NULL,
	[secim] [nchar](10) NULL,
	[skor] [int] NULL,
 CONSTRAINT [PK_kullanici_soru_cevap] PRIMARY KEY CLUSTERED 
(
	[kullanici_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[secenekler]    Script Date: 20.05.2021 20:14:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[secenekler](
	[secenek_id] [int] IDENTITY(1,1) NOT NULL,
	[secenekler] [varchar](500) NULL,
	[soru_id] [int] NULL,
 CONSTRAINT [PK_secenekler] PRIMARY KEY CLUSTERED 
(
	[secenek_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sinav_kullanici]    Script Date: 20.05.2021 20:14:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sinav_kullanici](
	[sinav_id] [int] NULL,
	[kullanici_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sinav_tablo]    Script Date: 20.05.2021 20:14:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sinav_tablo](
	[sinav_id] [int] IDENTITY(1,1) NOT NULL,
	[alt_kategori_id] [int] NULL,
	[soru_id] [int] NULL,
	[Sınav_ad] [varchar](50) NULL,
 CONSTRAINT [PK_sinav_tablo] PRIMARY KEY CLUSTERED 
(
	[sinav_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[soru]    Script Date: 20.05.2021 20:14:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[soru](
	[soru_id] [int] IDENTITY(1,1) NOT NULL,
	[soru_ad] [varchar](50) NULL,
	[alt_kategori_id] [int] NULL,
	[aktif] [bit] NULL,
 CONSTRAINT [PK_soru] PRIMARY KEY CLUSTERED 
(
	[soru_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[soru_secenek]    Script Date: 20.05.2021 20:14:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[soru_secenek](
	[secim_id] [int] IDENTITY(1,1) NOT NULL,
	[soru_id] [int] NULL,
	[dogru_cevap] [varchar](500) NULL,
 CONSTRAINT [PK_soru_secenek] PRIMARY KEY CLUSTERED 
(
	[secim_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[alt_kategori] ON 

INSERT [dbo].[alt_kategori] ([alt_kategori_id], [alt_kategori_ad], [kategori_id], [aktif]) VALUES (11, N'a1', 11, NULL)
INSERT [dbo].[alt_kategori] ([alt_kategori_id], [alt_kategori_ad], [kategori_id], [aktif]) VALUES (12, N'Mat', 12, NULL)
INSERT [dbo].[alt_kategori] ([alt_kategori_id], [alt_kategori_ad], [kategori_id], [aktif]) VALUES (13, N'aaa', 13, NULL)
INSERT [dbo].[alt_kategori] ([alt_kategori_id], [alt_kategori_ad], [kategori_id], [aktif]) VALUES (14, N'bbb', 11, NULL)
SET IDENTITY_INSERT [dbo].[alt_kategori] OFF
GO
SET IDENTITY_INSERT [dbo].[kategori] ON 

INSERT [dbo].[kategori] ([kategori_id], [kategori_ad], [aktif]) VALUES (10, N'Matematik', 1)
INSERT [dbo].[kategori] ([kategori_id], [kategori_ad], [aktif]) VALUES (11, N'Türkçe', 1)
INSERT [dbo].[kategori] ([kategori_id], [kategori_ad], [aktif]) VALUES (12, N'Matematik', 0)
INSERT [dbo].[kategori] ([kategori_id], [kategori_ad], [aktif]) VALUES (13, N'fen', 1)
SET IDENTITY_INSERT [dbo].[kategori] OFF
GO
SET IDENTITY_INSERT [dbo].[kullanici] ON 

INSERT [dbo].[kullanici] ([kullanici_id], [kullanici_adi], [kullanici_mail], [kullanici_sifre], [aktif], [yetki]) VALUES (3, N'can', N'hcankurt0766@gmail.com', N'123', 1, N'admin	')
INSERT [dbo].[kullanici] ([kullanici_id], [kullanici_adi], [kullanici_mail], [kullanici_sifre], [aktif], [yetki]) VALUES (5, N'emre', N'iek.emrere@gmail.com', N'321', 1, N'admin')
SET IDENTITY_INSERT [dbo].[kullanici] OFF
GO
SET IDENTITY_INSERT [dbo].[secenekler] ON 

INSERT [dbo].[secenekler] ([secenek_id], [secenekler], [soru_id]) VALUES (0, N'154       ', NULL)
INSERT [dbo].[secenekler] ([secenek_id], [secenekler], [soru_id]) VALUES (1, N'10        ', NULL)
INSERT [dbo].[secenekler] ([secenek_id], [secenekler], [soru_id]) VALUES (2, N'10        ', NULL)
INSERT [dbo].[secenekler] ([secenek_id], [secenekler], [soru_id]) VALUES (3, N'11        ', NULL)
INSERT [dbo].[secenekler] ([secenek_id], [secenekler], [soru_id]) VALUES (4, N'41        ', NULL)
INSERT [dbo].[secenekler] ([secenek_id], [secenekler], [soru_id]) VALUES (5, N'555       ', NULL)
INSERT [dbo].[secenekler] ([secenek_id], [secenekler], [soru_id]) VALUES (6, N'787', 18)
INSERT [dbo].[secenekler] ([secenek_id], [secenekler], [soru_id]) VALUES (7, N'154', 18)
INSERT [dbo].[secenekler] ([secenek_id], [secenekler], [soru_id]) VALUES (8, N'78', 19)
INSERT [dbo].[secenekler] ([secenek_id], [secenekler], [soru_id]) VALUES (9, N'74', 19)
INSERT [dbo].[secenekler] ([secenek_id], [secenekler], [soru_id]) VALUES (10, N'57', 19)
INSERT [dbo].[secenekler] ([secenek_id], [secenekler], [soru_id]) VALUES (11, N'10', 20)
INSERT [dbo].[secenekler] ([secenek_id], [secenekler], [soru_id]) VALUES (12, N'11', 20)
INSERT [dbo].[secenekler] ([secenek_id], [secenekler], [soru_id]) VALUES (13, N'12', 20)
INSERT [dbo].[secenekler] ([secenek_id], [secenekler], [soru_id]) VALUES (14, N'10', 20)
INSERT [dbo].[secenekler] ([secenek_id], [secenekler], [soru_id]) VALUES (15, N'11', 20)
INSERT [dbo].[secenekler] ([secenek_id], [secenekler], [soru_id]) VALUES (16, N'12', 20)
INSERT [dbo].[secenekler] ([secenek_id], [secenekler], [soru_id]) VALUES (17, N'41', 22)
INSERT [dbo].[secenekler] ([secenek_id], [secenekler], [soru_id]) VALUES (18, N'31', 22)
INSERT [dbo].[secenekler] ([secenek_id], [secenekler], [soru_id]) VALUES (19, N'28', 22)
INSERT [dbo].[secenekler] ([secenek_id], [secenekler], [soru_id]) VALUES (20, N'69', 22)
INSERT [dbo].[secenekler] ([secenek_id], [secenekler], [soru_id]) VALUES (21, N'41', 22)
INSERT [dbo].[secenekler] ([secenek_id], [secenekler], [soru_id]) VALUES (22, N'31', 22)
INSERT [dbo].[secenekler] ([secenek_id], [secenekler], [soru_id]) VALUES (23, N'28', 22)
INSERT [dbo].[secenekler] ([secenek_id], [secenekler], [soru_id]) VALUES (24, N'69', 22)
INSERT [dbo].[secenekler] ([secenek_id], [secenekler], [soru_id]) VALUES (25, N'dfgdfg', 12)
INSERT [dbo].[secenekler] ([secenek_id], [secenekler], [soru_id]) VALUES (26, N'dfgdfg', 12)
INSERT [dbo].[secenekler] ([secenek_id], [secenekler], [soru_id]) VALUES (27, N'fdgdfgd', 12)
INSERT [dbo].[secenekler] ([secenek_id], [secenekler], [soru_id]) VALUES (28, N'75', 11)
INSERT [dbo].[secenekler] ([secenek_id], [secenekler], [soru_id]) VALUES (29, N'75', 11)
INSERT [dbo].[secenekler] ([secenek_id], [secenekler], [soru_id]) VALUES (30, N'75', 11)
INSERT [dbo].[secenekler] ([secenek_id], [secenekler], [soru_id]) VALUES (31, N'75', 11)
INSERT [dbo].[secenekler] ([secenek_id], [secenekler], [soru_id]) VALUES (32, N'78', 28)
INSERT [dbo].[secenekler] ([secenek_id], [secenekler], [soru_id]) VALUES (33, N'45', 28)
INSERT [dbo].[secenekler] ([secenek_id], [secenekler], [soru_id]) VALUES (34, N'45', 11)
INSERT [dbo].[secenekler] ([secenek_id], [secenekler], [soru_id]) VALUES (35, N'454', 11)
INSERT [dbo].[secenekler] ([secenek_id], [secenekler], [soru_id]) VALUES (36, N'147', 11)
INSERT [dbo].[secenekler] ([secenek_id], [secenekler], [soru_id]) VALUES (37, N'785', 30)
INSERT [dbo].[secenekler] ([secenek_id], [secenekler], [soru_id]) VALUES (38, N'124', 30)
INSERT [dbo].[secenekler] ([secenek_id], [secenekler], [soru_id]) VALUES (39, N'354', 30)
INSERT [dbo].[secenekler] ([secenek_id], [secenekler], [soru_id]) VALUES (40, N'785', 30)
INSERT [dbo].[secenekler] ([secenek_id], [secenekler], [soru_id]) VALUES (41, N'124', 30)
INSERT [dbo].[secenekler] ([secenek_id], [secenekler], [soru_id]) VALUES (42, N'354', 30)
SET IDENTITY_INSERT [dbo].[secenekler] OFF
GO
SET IDENTITY_INSERT [dbo].[sinav_tablo] ON 

INSERT [dbo].[sinav_tablo] ([sinav_id], [alt_kategori_id], [soru_id], [Sınav_ad]) VALUES (1, 13, 21, N'Hakıı')
INSERT [dbo].[sinav_tablo] ([sinav_id], [alt_kategori_id], [soru_id], [Sınav_ad]) VALUES (2, 11, NULL, N'Hatun')
INSERT [dbo].[sinav_tablo] ([sinav_id], [alt_kategori_id], [soru_id], [Sınav_ad]) VALUES (3, 11, NULL, N'Hatun')
INSERT [dbo].[sinav_tablo] ([sinav_id], [alt_kategori_id], [soru_id], [Sınav_ad]) VALUES (4, 11, NULL, N'Hatun')
INSERT [dbo].[sinav_tablo] ([sinav_id], [alt_kategori_id], [soru_id], [Sınav_ad]) VALUES (5, 11, 5, N'Hatun')
INSERT [dbo].[sinav_tablo] ([sinav_id], [alt_kategori_id], [soru_id], [Sınav_ad]) VALUES (6, 11, 6, N'Hatun')
INSERT [dbo].[sinav_tablo] ([sinav_id], [alt_kategori_id], [soru_id], [Sınav_ad]) VALUES (7, 11, 17, N'Hatun')
INSERT [dbo].[sinav_tablo] ([sinav_id], [alt_kategori_id], [soru_id], [Sınav_ad]) VALUES (8, 11, 22, N'asdasd')
INSERT [dbo].[sinav_tablo] ([sinav_id], [alt_kategori_id], [soru_id], [Sınav_ad]) VALUES (9, 11, NULL, NULL)
INSERT [dbo].[sinav_tablo] ([sinav_id], [alt_kategori_id], [soru_id], [Sınav_ad]) VALUES (10, 11, NULL, NULL)
INSERT [dbo].[sinav_tablo] ([sinav_id], [alt_kategori_id], [soru_id], [Sınav_ad]) VALUES (11, 11, NULL, NULL)
INSERT [dbo].[sinav_tablo] ([sinav_id], [alt_kategori_id], [soru_id], [Sınav_ad]) VALUES (12, 11, 6, NULL)
INSERT [dbo].[sinav_tablo] ([sinav_id], [alt_kategori_id], [soru_id], [Sınav_ad]) VALUES (13, 11, 17, NULL)
INSERT [dbo].[sinav_tablo] ([sinav_id], [alt_kategori_id], [soru_id], [Sınav_ad]) VALUES (14, 11, 26, NULL)
INSERT [dbo].[sinav_tablo] ([sinav_id], [alt_kategori_id], [soru_id], [Sınav_ad]) VALUES (15, 11, 18, N'emre')
INSERT [dbo].[sinav_tablo] ([sinav_id], [alt_kategori_id], [soru_id], [Sınav_ad]) VALUES (16, 11, NULL, N'Matematik')
INSERT [dbo].[sinav_tablo] ([sinav_id], [alt_kategori_id], [soru_id], [Sınav_ad]) VALUES (17, 11, NULL, N'Matematik')
INSERT [dbo].[sinav_tablo] ([sinav_id], [alt_kategori_id], [soru_id], [Sınav_ad]) VALUES (18, 11, NULL, N'Matematik')
INSERT [dbo].[sinav_tablo] ([sinav_id], [alt_kategori_id], [soru_id], [Sınav_ad]) VALUES (19, 11, 5, N'Matematik')
INSERT [dbo].[sinav_tablo] ([sinav_id], [alt_kategori_id], [soru_id], [Sınav_ad]) VALUES (20, 11, 14, N'Matematik')
INSERT [dbo].[sinav_tablo] ([sinav_id], [alt_kategori_id], [soru_id], [Sınav_ad]) VALUES (21, 11, 26, N'Matematik')
INSERT [dbo].[sinav_tablo] ([sinav_id], [alt_kategori_id], [soru_id], [Sınav_ad]) VALUES (22, 11, NULL, N'werer')
INSERT [dbo].[sinav_tablo] ([sinav_id], [alt_kategori_id], [soru_id], [Sınav_ad]) VALUES (23, 11, 15, N'werer')
INSERT [dbo].[sinav_tablo] ([sinav_id], [alt_kategori_id], [soru_id], [Sınav_ad]) VALUES (24, 11, 19, N'werer')
INSERT [dbo].[sinav_tablo] ([sinav_id], [alt_kategori_id], [soru_id], [Sınav_ad]) VALUES (25, 11, 3, N'werer')
INSERT [dbo].[sinav_tablo] ([sinav_id], [alt_kategori_id], [soru_id], [Sınav_ad]) VALUES (26, 11, 3, N'werer')
INSERT [dbo].[sinav_tablo] ([sinav_id], [alt_kategori_id], [soru_id], [Sınav_ad]) VALUES (27, 11, 15, N'werer')
INSERT [dbo].[sinav_tablo] ([sinav_id], [alt_kategori_id], [soru_id], [Sınav_ad]) VALUES (28, 11, 19, N'werer')
INSERT [dbo].[sinav_tablo] ([sinav_id], [alt_kategori_id], [soru_id], [Sınav_ad]) VALUES (29, 11, 3, N'werer')
INSERT [dbo].[sinav_tablo] ([sinav_id], [alt_kategori_id], [soru_id], [Sınav_ad]) VALUES (30, 11, 3, N'werer')
INSERT [dbo].[sinav_tablo] ([sinav_id], [alt_kategori_id], [soru_id], [Sınav_ad]) VALUES (31, 11, 15, N'werer')
INSERT [dbo].[sinav_tablo] ([sinav_id], [alt_kategori_id], [soru_id], [Sınav_ad]) VALUES (32, 11, 19, N'werer')
INSERT [dbo].[sinav_tablo] ([sinav_id], [alt_kategori_id], [soru_id], [Sınav_ad]) VALUES (33, 11, 3, N'werer')
INSERT [dbo].[sinav_tablo] ([sinav_id], [alt_kategori_id], [soru_id], [Sınav_ad]) VALUES (34, 11, 3, N'werer')
INSERT [dbo].[sinav_tablo] ([sinav_id], [alt_kategori_id], [soru_id], [Sınav_ad]) VALUES (35, 11, 15, N'werer')
INSERT [dbo].[sinav_tablo] ([sinav_id], [alt_kategori_id], [soru_id], [Sınav_ad]) VALUES (36, 11, 19, N'werer')
INSERT [dbo].[sinav_tablo] ([sinav_id], [alt_kategori_id], [soru_id], [Sınav_ad]) VALUES (37, 11, 3, N'werer')
INSERT [dbo].[sinav_tablo] ([sinav_id], [alt_kategori_id], [soru_id], [Sınav_ad]) VALUES (38, 11, 3, N'werer')
INSERT [dbo].[sinav_tablo] ([sinav_id], [alt_kategori_id], [soru_id], [Sınav_ad]) VALUES (39, 11, 15, N'werer')
INSERT [dbo].[sinav_tablo] ([sinav_id], [alt_kategori_id], [soru_id], [Sınav_ad]) VALUES (40, 11, 19, N'werer')
INSERT [dbo].[sinav_tablo] ([sinav_id], [alt_kategori_id], [soru_id], [Sınav_ad]) VALUES (41, 11, 3, N'werer')
INSERT [dbo].[sinav_tablo] ([sinav_id], [alt_kategori_id], [soru_id], [Sınav_ad]) VALUES (42, 11, 3, N'werer')
INSERT [dbo].[sinav_tablo] ([sinav_id], [alt_kategori_id], [soru_id], [Sınav_ad]) VALUES (43, 11, 15, N'werer')
INSERT [dbo].[sinav_tablo] ([sinav_id], [alt_kategori_id], [soru_id], [Sınav_ad]) VALUES (44, 11, 19, N'werer')
INSERT [dbo].[sinav_tablo] ([sinav_id], [alt_kategori_id], [soru_id], [Sınav_ad]) VALUES (45, 11, 3, N'werer')
INSERT [dbo].[sinav_tablo] ([sinav_id], [alt_kategori_id], [soru_id], [Sınav_ad]) VALUES (46, 11, 3, N'werer')
INSERT [dbo].[sinav_tablo] ([sinav_id], [alt_kategori_id], [soru_id], [Sınav_ad]) VALUES (47, 11, 15, N'werer')
INSERT [dbo].[sinav_tablo] ([sinav_id], [alt_kategori_id], [soru_id], [Sınav_ad]) VALUES (48, 11, 19, N'werer')
INSERT [dbo].[sinav_tablo] ([sinav_id], [alt_kategori_id], [soru_id], [Sınav_ad]) VALUES (49, 11, 3, N'werer')
INSERT [dbo].[sinav_tablo] ([sinav_id], [alt_kategori_id], [soru_id], [Sınav_ad]) VALUES (50, 11, 3, N'werer')
INSERT [dbo].[sinav_tablo] ([sinav_id], [alt_kategori_id], [soru_id], [Sınav_ad]) VALUES (51, 11, 15, N'werer')
INSERT [dbo].[sinav_tablo] ([sinav_id], [alt_kategori_id], [soru_id], [Sınav_ad]) VALUES (52, 11, 19, N'werer')
INSERT [dbo].[sinav_tablo] ([sinav_id], [alt_kategori_id], [soru_id], [Sınav_ad]) VALUES (53, 11, 3, N'werer')
INSERT [dbo].[sinav_tablo] ([sinav_id], [alt_kategori_id], [soru_id], [Sınav_ad]) VALUES (54, 11, 3, N'werer')
INSERT [dbo].[sinav_tablo] ([sinav_id], [alt_kategori_id], [soru_id], [Sınav_ad]) VALUES (55, 11, 15, N'werer')
INSERT [dbo].[sinav_tablo] ([sinav_id], [alt_kategori_id], [soru_id], [Sınav_ad]) VALUES (56, 11, 19, N'werer')
INSERT [dbo].[sinav_tablo] ([sinav_id], [alt_kategori_id], [soru_id], [Sınav_ad]) VALUES (57, 11, 3, N'werer')
SET IDENTITY_INSERT [dbo].[sinav_tablo] OFF
GO
SET IDENTITY_INSERT [dbo].[soru] ON 

INSERT [dbo].[soru] ([soru_id], [soru_ad], [alt_kategori_id], [aktif]) VALUES (3, N'sdfsdfsd', 11, 1)
INSERT [dbo].[soru] ([soru_id], [soru_ad], [alt_kategori_id], [aktif]) VALUES (5, N'fdgdfgdf', 11, 0)
INSERT [dbo].[soru] ([soru_id], [soru_ad], [alt_kategori_id], [aktif]) VALUES (6, N'lkşklşk', 11, 0)
INSERT [dbo].[soru] ([soru_id], [soru_ad], [alt_kategori_id], [aktif]) VALUES (10, N'hgfhfgh', 11, 1)
INSERT [dbo].[soru] ([soru_id], [soru_ad], [alt_kategori_id], [aktif]) VALUES (11, N'sdfsdf', 11, 1)
INSERT [dbo].[soru] ([soru_id], [soru_ad], [alt_kategori_id], [aktif]) VALUES (12, N'dfgdfgdfg', 11, 1)
INSERT [dbo].[soru] ([soru_id], [soru_ad], [alt_kategori_id], [aktif]) VALUES (14, N'5545', 11, 1)
INSERT [dbo].[soru] ([soru_id], [soru_ad], [alt_kategori_id], [aktif]) VALUES (15, N'wdasd', 11, 1)
INSERT [dbo].[soru] ([soru_id], [soru_ad], [alt_kategori_id], [aktif]) VALUES (17, N'tgfhfg', 11, 1)
INSERT [dbo].[soru] ([soru_id], [soru_ad], [alt_kategori_id], [aktif]) VALUES (18, N'gfhfgh', 11, 0)
INSERT [dbo].[soru] ([soru_id], [soru_ad], [alt_kategori_id], [aktif]) VALUES (19, N'asıydhkjasd', 11, 1)
INSERT [dbo].[soru] ([soru_id], [soru_ad], [alt_kategori_id], [aktif]) VALUES (20, N'dsfsdf', 13, 0)
INSERT [dbo].[soru] ([soru_id], [soru_ad], [alt_kategori_id], [aktif]) VALUES (21, N'dsfsdf', 13, 0)
INSERT [dbo].[soru] ([soru_id], [soru_ad], [alt_kategori_id], [aktif]) VALUES (22, N'sdfsdfsdf', 11, 1)
INSERT [dbo].[soru] ([soru_id], [soru_ad], [alt_kategori_id], [aktif]) VALUES (26, N'sdfsdf', 11, 1)
INSERT [dbo].[soru] ([soru_id], [soru_ad], [alt_kategori_id], [aktif]) VALUES (27, N'sdfsdf', 11, 1)
INSERT [dbo].[soru] ([soru_id], [soru_ad], [alt_kategori_id], [aktif]) VALUES (28, N'sdkjhfkjsjdlkfşlsdf', 14, 1)
INSERT [dbo].[soru] ([soru_id], [soru_ad], [alt_kategori_id], [aktif]) VALUES (29, N'sdfsdf', 11, 1)
INSERT [dbo].[soru] ([soru_id], [soru_ad], [alt_kategori_id], [aktif]) VALUES (30, N'werwer', 11, 0)
INSERT [dbo].[soru] ([soru_id], [soru_ad], [alt_kategori_id], [aktif]) VALUES (31, N'werwer', 11, 0)
SET IDENTITY_INSERT [dbo].[soru] OFF
GO
SET IDENTITY_INSERT [dbo].[soru_secenek] ON 

INSERT [dbo].[soru_secenek] ([secim_id], [soru_id], [dogru_cevap]) VALUES (1, 20, N'12')
INSERT [dbo].[soru_secenek] ([secim_id], [soru_id], [dogru_cevap]) VALUES (2, 22, N'41')
INSERT [dbo].[soru_secenek] ([secim_id], [soru_id], [dogru_cevap]) VALUES (3, 12, N'fdgdfgd')
INSERT [dbo].[soru_secenek] ([secim_id], [soru_id], [dogru_cevap]) VALUES (4, 11, N'75')
INSERT [dbo].[soru_secenek] ([secim_id], [soru_id], [dogru_cevap]) VALUES (5, 11, N'75')
INSERT [dbo].[soru_secenek] ([secim_id], [soru_id], [dogru_cevap]) VALUES (6, 11, N'75')
INSERT [dbo].[soru_secenek] ([secim_id], [soru_id], [dogru_cevap]) VALUES (7, 11, N'75')
INSERT [dbo].[soru_secenek] ([secim_id], [soru_id], [dogru_cevap]) VALUES (8, 28, N'45')
INSERT [dbo].[soru_secenek] ([secim_id], [soru_id], [dogru_cevap]) VALUES (9, 11, N'45')
INSERT [dbo].[soru_secenek] ([secim_id], [soru_id], [dogru_cevap]) VALUES (10, 30, N'785')
INSERT [dbo].[soru_secenek] ([secim_id], [soru_id], [dogru_cevap]) VALUES (11, 30, N'785')
SET IDENTITY_INSERT [dbo].[soru_secenek] OFF
GO
ALTER TABLE [dbo].[alt_kategori]  WITH CHECK ADD  CONSTRAINT [FK_alt_kategori_kategori] FOREIGN KEY([kategori_id])
REFERENCES [dbo].[kategori] ([kategori_id])
GO
ALTER TABLE [dbo].[alt_kategori] CHECK CONSTRAINT [FK_alt_kategori_kategori]
GO
ALTER TABLE [dbo].[kullanici_skor]  WITH CHECK ADD  CONSTRAINT [FK_kullanici_skor_kullanici] FOREIGN KEY([kullanici_id])
REFERENCES [dbo].[kullanici] ([kullanici_id])
GO
ALTER TABLE [dbo].[kullanici_skor] CHECK CONSTRAINT [FK_kullanici_skor_kullanici]
GO
ALTER TABLE [dbo].[kullanici_soru_cevap]  WITH CHECK ADD  CONSTRAINT [FK_kullanici_soru_cevap_kullanici] FOREIGN KEY([kullanici_id])
REFERENCES [dbo].[kullanici] ([kullanici_id])
GO
ALTER TABLE [dbo].[kullanici_soru_cevap] CHECK CONSTRAINT [FK_kullanici_soru_cevap_kullanici]
GO
ALTER TABLE [dbo].[kullanici_soru_cevap]  WITH CHECK ADD  CONSTRAINT [FK_kullanici_soru_cevap_soru] FOREIGN KEY([soru_id])
REFERENCES [dbo].[soru] ([soru_id])
GO
ALTER TABLE [dbo].[kullanici_soru_cevap] CHECK CONSTRAINT [FK_kullanici_soru_cevap_soru]
GO
ALTER TABLE [dbo].[kullanici_soru_cevap]  WITH CHECK ADD  CONSTRAINT [FK_kullanici_soru_cevap_soru_secenek] FOREIGN KEY([secim_id])
REFERENCES [dbo].[soru_secenek] ([secim_id])
GO
ALTER TABLE [dbo].[kullanici_soru_cevap] CHECK CONSTRAINT [FK_kullanici_soru_cevap_soru_secenek]
GO
ALTER TABLE [dbo].[secenekler]  WITH CHECK ADD  CONSTRAINT [FK_secenekler_soru] FOREIGN KEY([soru_id])
REFERENCES [dbo].[soru] ([soru_id])
GO
ALTER TABLE [dbo].[secenekler] CHECK CONSTRAINT [FK_secenekler_soru]
GO
ALTER TABLE [dbo].[sinav_kullanici]  WITH CHECK ADD  CONSTRAINT [FK_sinav_kullanici_kullanici] FOREIGN KEY([kullanici_id])
REFERENCES [dbo].[kullanici] ([kullanici_id])
GO
ALTER TABLE [dbo].[sinav_kullanici] CHECK CONSTRAINT [FK_sinav_kullanici_kullanici]
GO
ALTER TABLE [dbo].[sinav_kullanici]  WITH CHECK ADD  CONSTRAINT [FK_sinav_kullanici_sinav_tablo] FOREIGN KEY([sinav_id])
REFERENCES [dbo].[sinav_tablo] ([sinav_id])
GO
ALTER TABLE [dbo].[sinav_kullanici] CHECK CONSTRAINT [FK_sinav_kullanici_sinav_tablo]
GO
ALTER TABLE [dbo].[sinav_tablo]  WITH CHECK ADD  CONSTRAINT [FK_sinav_tablo_alt_kategori] FOREIGN KEY([alt_kategori_id])
REFERENCES [dbo].[alt_kategori] ([alt_kategori_id])
GO
ALTER TABLE [dbo].[sinav_tablo] CHECK CONSTRAINT [FK_sinav_tablo_alt_kategori]
GO
ALTER TABLE [dbo].[sinav_tablo]  WITH CHECK ADD  CONSTRAINT [FK_sinav_tablo_soru] FOREIGN KEY([soru_id])
REFERENCES [dbo].[soru] ([soru_id])
GO
ALTER TABLE [dbo].[sinav_tablo] CHECK CONSTRAINT [FK_sinav_tablo_soru]
GO
ALTER TABLE [dbo].[soru]  WITH CHECK ADD  CONSTRAINT [FK_soru_alt_kategori] FOREIGN KEY([alt_kategori_id])
REFERENCES [dbo].[alt_kategori] ([alt_kategori_id])
GO
ALTER TABLE [dbo].[soru] CHECK CONSTRAINT [FK_soru_alt_kategori]
GO
ALTER TABLE [dbo].[soru_secenek]  WITH CHECK ADD  CONSTRAINT [FK_soru_secenek_soru] FOREIGN KEY([soru_id])
REFERENCES [dbo].[soru] ([soru_id])
GO
ALTER TABLE [dbo].[soru_secenek] CHECK CONSTRAINT [FK_soru_secenek_soru]
GO
USE [master]
GO
ALTER DATABASE [test2] SET  READ_WRITE 
GO
