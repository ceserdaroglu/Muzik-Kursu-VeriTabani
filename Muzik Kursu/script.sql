USE [master]
GO
/****** Object:  Database [MuzikKursu]    Script Date: 25.05.2020 02:05:00 ******/
CREATE DATABASE [MuzikKursu]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MuzikKursu', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\MuzikKursu.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MuzikKursu_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\MuzikKursu_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [MuzikKursu] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MuzikKursu].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MuzikKursu] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MuzikKursu] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MuzikKursu] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MuzikKursu] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MuzikKursu] SET ARITHABORT OFF 
GO
ALTER DATABASE [MuzikKursu] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MuzikKursu] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MuzikKursu] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MuzikKursu] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MuzikKursu] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MuzikKursu] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MuzikKursu] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MuzikKursu] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MuzikKursu] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MuzikKursu] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MuzikKursu] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MuzikKursu] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MuzikKursu] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MuzikKursu] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MuzikKursu] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MuzikKursu] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MuzikKursu] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MuzikKursu] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MuzikKursu] SET  MULTI_USER 
GO
ALTER DATABASE [MuzikKursu] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MuzikKursu] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MuzikKursu] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MuzikKursu] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [MuzikKursu] SET DELAYED_DURABILITY = DISABLED 
GO
USE [MuzikKursu]
GO
/****** Object:  Table [dbo].[tbl_Hocalar]    Script Date: 25.05.2020 02:05:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Hocalar](
	[HocaId] [int] IDENTITY(20,1) NOT NULL,
	[HocaAd] [nvarchar](50) NULL,
	[HocaSoyad] [nvarchar](50) NULL,
	[Enstrüman] [nvarchar](50) NULL,
	[HocaTel] [nvarchar](11) NULL,
 CONSTRAINT [PK_tbl_Hocalar] PRIMARY KEY CLUSTERED 
(
	[HocaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Kurslar]    Script Date: 25.05.2020 02:05:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Kurslar](
	[KursId] [int] IDENTITY(1,1) NOT NULL,
	[Gun] [nvarchar](50) NULL,
	[Saat] [nvarchar](50) NULL,
	[KursSuresi] [nvarchar](50) NULL,
	[Ucret] [money] NULL,
	[SınıfId] [int] NULL,
	[HocaId] [int] NULL,
	[Tarih] [date] NULL,
 CONSTRAINT [PK_tbl_Kurslar] PRIMARY KEY CLUSTERED 
(
	[KursId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Ogrenciler]    Script Date: 25.05.2020 02:05:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Ogrenciler](
	[OgrenciId] [int] IDENTITY(1,1) NOT NULL,
	[Tc] [nvarchar](11) NULL,
	[Ad] [nvarchar](50) NULL,
	[Soyad] [nvarchar](50) NULL,
	[Telefon] [nvarchar](11) NULL,
	[DogumTarihi] [date] NULL,
	[VeliAd] [nvarchar](50) NULL,
	[VeliTel] [nvarchar](50) NULL,
	[Mail] [nvarchar](50) NULL,
	[OgrenciMi] [varchar](1) NULL,
	[Aktiflik] [varchar](1) NULL,
 CONSTRAINT [PK_tbl_Musteriler] PRIMARY KEY CLUSTERED 
(
	[OgrenciId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_OzelDersler]    Script Date: 25.05.2020 02:05:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_OzelDersler](
	[OzelDersId] [int] IDENTITY(1,1) NOT NULL,
	[KursSure] [nvarchar](50) NULL,
	[Fiyat] [money] NULL,
	[Gun] [nvarchar](50) NULL,
	[Saat] [nvarchar](50) NULL,
	[HocaId] [int] NULL,
	[OgrenciId] [int] NULL,
	[SınıfId] [int] NULL,
 CONSTRAINT [PK_tbl_OzelDersler] PRIMARY KEY CLUSTERED 
(
	[OzelDersId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Randevular]    Script Date: 25.05.2020 02:05:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Randevular](
	[RandevuId] [int] IDENTITY(54,1) NOT NULL,
	[Fiyat] [money] NULL,
	[OdendiMi] [varchar](1) NULL,
	[OgrenciId] [int] NULL,
	[KursId] [int] NULL,
	[SınıfId] [int] NULL,
	[OzelDersId] [int] NULL,
	[IptalMi] [nvarchar](50) NULL CONSTRAINT [DF_tbl_Randevular_IptalMi]  DEFAULT (N'H'),
	[IptalTarihi] [date] NULL,
 CONSTRAINT [PK_tbl_Randevular] PRIMARY KEY CLUSTERED 
(
	[RandevuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Sınıflar]    Script Date: 25.05.2020 02:05:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Sınıflar](
	[SınıfId] [int] IDENTITY(100,1) NOT NULL,
	[SınıfAd] [nvarchar](50) NULL,
	[Kapasite] [int] NULL,
 CONSTRAINT [PK_tbl_Sınıflar] PRIMARY KEY CLUSTERED 
(
	[SınıfId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[tbl_Hocalar] ON 

INSERT [dbo].[tbl_Hocalar] ([HocaId], [HocaAd], [HocaSoyad], [Enstrüman], [HocaTel]) VALUES (1, N'Özlem', N'Çakır', N'Keman', N'08515605593')
INSERT [dbo].[tbl_Hocalar] ([HocaId], [HocaAd], [HocaSoyad], [Enstrüman], [HocaTel]) VALUES (21, N'Bahar', N'Başel', N'Keman', N'08517334137')
INSERT [dbo].[tbl_Hocalar] ([HocaId], [HocaAd], [HocaSoyad], [Enstrüman], [HocaTel]) VALUES (41, N'Sibel', N'Şimşek', N'Piyano', N'08512451149')
INSERT [dbo].[tbl_Hocalar] ([HocaId], [HocaAd], [HocaSoyad], [Enstrüman], [HocaTel]) VALUES (61, N'Süleyman', N'Yüksel', N'Bağlama', N'08512518385')
INSERT [dbo].[tbl_Hocalar] ([HocaId], [HocaAd], [HocaSoyad], [Enstrüman], [HocaTel]) VALUES (62, N'Yılmaz', N'Özer', N'Keman', N'08511229473')
INSERT [dbo].[tbl_Hocalar] ([HocaId], [HocaAd], [HocaSoyad], [Enstrüman], [HocaTel]) VALUES (64, N'Emre', N'Köse', N'Gitar', N'08512030668')
INSERT [dbo].[tbl_Hocalar] ([HocaId], [HocaAd], [HocaSoyad], [Enstrüman], [HocaTel]) VALUES (65, N'Burak', N'Albayrak', N'Yan Flüt', N'08564652215')
INSERT [dbo].[tbl_Hocalar] ([HocaId], [HocaAd], [HocaSoyad], [Enstrüman], [HocaTel]) VALUES (66, N'Hamza', N'Toptancı', N'Keman', N'08553266632')
INSERT [dbo].[tbl_Hocalar] ([HocaId], [HocaAd], [HocaSoyad], [Enstrüman], [HocaTel]) VALUES (67, N'Berat', N'Yoncacılar', N'Gitar', N'08532321455')
INSERT [dbo].[tbl_Hocalar] ([HocaId], [HocaAd], [HocaSoyad], [Enstrüman], [HocaTel]) VALUES (68, N'Seda', N'Sümbül', N'Keman', N'08543213222')
INSERT [dbo].[tbl_Hocalar] ([HocaId], [HocaAd], [HocaSoyad], [Enstrüman], [HocaTel]) VALUES (69, N'Ercan', N'Azap', N'Bağlama', N'08542152045')
INSERT [dbo].[tbl_Hocalar] ([HocaId], [HocaAd], [HocaSoyad], [Enstrüman], [HocaTel]) VALUES (70, N'Murat', N'Kalkan', N'Ney', N'08545212111')
INSERT [dbo].[tbl_Hocalar] ([HocaId], [HocaAd], [HocaSoyad], [Enstrüman], [HocaTel]) VALUES (71, N'Begüm', N'Sipahi', N'Piyano', N'08512320000')
INSERT [dbo].[tbl_Hocalar] ([HocaId], [HocaAd], [HocaSoyad], [Enstrüman], [HocaTel]) VALUES (72, N'Vildan', N'Ataoğlu', N'Piyano', N'08523012323')
INSERT [dbo].[tbl_Hocalar] ([HocaId], [HocaAd], [HocaSoyad], [Enstrüman], [HocaTel]) VALUES (73, N'Sude', N'Başel', N'Gitar', N'08553210022')
INSERT [dbo].[tbl_Hocalar] ([HocaId], [HocaAd], [HocaSoyad], [Enstrüman], [HocaTel]) VALUES (74, N'Yakup', N'Güneş', N'Gitar', N'08542120215')
INSERT [dbo].[tbl_Hocalar] ([HocaId], [HocaAd], [HocaSoyad], [Enstrüman], [HocaTel]) VALUES (75, N'Mustafa', N'Ateş', N'Bağlama', N'08542312152')
INSERT [dbo].[tbl_Hocalar] ([HocaId], [HocaAd], [HocaSoyad], [Enstrüman], [HocaTel]) VALUES (76, N'Ömer Faruk', N'Gül', N'Bağlama', N'08552111111')
INSERT [dbo].[tbl_Hocalar] ([HocaId], [HocaAd], [HocaSoyad], [Enstrüman], [HocaTel]) VALUES (77, N'Oğuzhan', N'Kaya', N'Klarnet', N'08565423111')
INSERT [dbo].[tbl_Hocalar] ([HocaId], [HocaAd], [HocaSoyad], [Enstrüman], [HocaTel]) VALUES (78, N'Tarık', N'Avşaroğlu', N'Klarnet', N'08962232878')
INSERT [dbo].[tbl_Hocalar] ([HocaId], [HocaAd], [HocaSoyad], [Enstrüman], [HocaTel]) VALUES (79, N'Yasin', N'Tokgöz', N'Klarnet', N'08254451236')
INSERT [dbo].[tbl_Hocalar] ([HocaId], [HocaAd], [HocaSoyad], [Enstrüman], [HocaTel]) VALUES (80, N'Metehan', N'Yıldırım', N'Bateri', N'08563221110')
INSERT [dbo].[tbl_Hocalar] ([HocaId], [HocaAd], [HocaSoyad], [Enstrüman], [HocaTel]) VALUES (81, N'Ömer', N'Yağcı', N'Bateri', N'08457122512')
INSERT [dbo].[tbl_Hocalar] ([HocaId], [HocaAd], [HocaSoyad], [Enstrüman], [HocaTel]) VALUES (82, N'Buğrahan', N'Sertel', N'Bateri', N'08512035541')
INSERT [dbo].[tbl_Hocalar] ([HocaId], [HocaAd], [HocaSoyad], [Enstrüman], [HocaTel]) VALUES (83, N'Erdem', N'Sakarya', N'Ney', N'08752201122')
INSERT [dbo].[tbl_Hocalar] ([HocaId], [HocaAd], [HocaSoyad], [Enstrüman], [HocaTel]) VALUES (84, N'Melike', N'Demir', N'Yan Flüt', N'08542155221')
INSERT [dbo].[tbl_Hocalar] ([HocaId], [HocaAd], [HocaSoyad], [Enstrüman], [HocaTel]) VALUES (85, N'Esranur', N'Tura', N'Yan Flüt', N'08554199998')
INSERT [dbo].[tbl_Hocalar] ([HocaId], [HocaAd], [HocaSoyad], [Enstrüman], [HocaTel]) VALUES (86, N'Beril', N'Çelik', N'Ney', N'08532311520')
INSERT [dbo].[tbl_Hocalar] ([HocaId], [HocaAd], [HocaSoyad], [Enstrüman], [HocaTel]) VALUES (87, N'Hazal', N'Kuçcam', N'Piyano', N'08542115420')
INSERT [dbo].[tbl_Hocalar] ([HocaId], [HocaAd], [HocaSoyad], [Enstrüman], [HocaTel]) VALUES (88, N'İlayda', N'Karabatak', N'Keman', N'08455224745')
INSERT [dbo].[tbl_Hocalar] ([HocaId], [HocaAd], [HocaSoyad], [Enstrüman], [HocaTel]) VALUES (89, N'Buğra', N'Akın', N'Gitar', N'08543212441')
INSERT [dbo].[tbl_Hocalar] ([HocaId], [HocaAd], [HocaSoyad], [Enstrüman], [HocaTel]) VALUES (90, N'Zühal', N'Delici', N'Gitar', N'08742124100')
INSERT [dbo].[tbl_Hocalar] ([HocaId], [HocaAd], [HocaSoyad], [Enstrüman], [HocaTel]) VALUES (91, N'Zeynep', N'Uyan', N'Ney', N'08885224522')
INSERT [dbo].[tbl_Hocalar] ([HocaId], [HocaAd], [HocaSoyad], [Enstrüman], [HocaTel]) VALUES (92, N'İrem', N'Akpınar', N'Piyano', N'08521452015')
SET IDENTITY_INSERT [dbo].[tbl_Hocalar] OFF
SET IDENTITY_INSERT [dbo].[tbl_Kurslar] ON 

INSERT [dbo].[tbl_Kurslar] ([KursId], [Gun], [Saat], [KursSuresi], [Ucret], [SınıfId], [HocaId], [Tarih]) VALUES (2, N'Pazartesi', N'09.00', N'2', 150.0000, 102, 1, CAST(N'2020-06-04' AS Date))
INSERT [dbo].[tbl_Kurslar] ([KursId], [Gun], [Saat], [KursSuresi], [Ucret], [SınıfId], [HocaId], [Tarih]) VALUES (3, N'Pazartesi', N'09.00', N'1', 150.0000, 103, 72, CAST(N'2020-06-04' AS Date))
INSERT [dbo].[tbl_Kurslar] ([KursId], [Gun], [Saat], [KursSuresi], [Ucret], [SınıfId], [HocaId], [Tarih]) VALUES (5, N'Pazartesi', N'17.00', N'1', 100.0000, 107, 73, CAST(N'2020-06-04' AS Date))
INSERT [dbo].[tbl_Kurslar] ([KursId], [Gun], [Saat], [KursSuresi], [Ucret], [SınıfId], [HocaId], [Tarih]) VALUES (8, N'Salı', N'09.00', N'2', 200.0000, 106, 67, CAST(N'2020-06-05' AS Date))
INSERT [dbo].[tbl_Kurslar] ([KursId], [Gun], [Saat], [KursSuresi], [Ucret], [SınıfId], [HocaId], [Tarih]) VALUES (10, N'Salı', N'12.00', N'1', 100.0000, 105, 67, CAST(N'2020-06-05' AS Date))
INSERT [dbo].[tbl_Kurslar] ([KursId], [Gun], [Saat], [KursSuresi], [Ucret], [SınıfId], [HocaId], [Tarih]) VALUES (11, N'Salı', N'13.00', N'1', 150.0000, 102, 21, CAST(N'2020-06-05' AS Date))
INSERT [dbo].[tbl_Kurslar] ([KursId], [Gun], [Saat], [KursSuresi], [Ucret], [SınıfId], [HocaId], [Tarih]) VALUES (12, N'Salı', N'13.00', N'2', 260.0000, 108, 81, CAST(N'2020-06-05' AS Date))
INSERT [dbo].[tbl_Kurslar] ([KursId], [Gun], [Saat], [KursSuresi], [Ucret], [SınıfId], [HocaId], [Tarih]) VALUES (13, N'Çarşamba', N'11.00', N'1', 150.0000, 103, 88, CAST(N'2020-06-06' AS Date))
INSERT [dbo].[tbl_Kurslar] ([KursId], [Gun], [Saat], [KursSuresi], [Ucret], [SınıfId], [HocaId], [Tarih]) VALUES (14, N'Çarşamba', N'11.00', N'2', 200.0000, 107, 90, CAST(N'2020-06-06' AS Date))
INSERT [dbo].[tbl_Kurslar] ([KursId], [Gun], [Saat], [KursSuresi], [Ucret], [SınıfId], [HocaId], [Tarih]) VALUES (18, N'Cuma', N'12.00', N'1', 150.0000, 102, 71, CAST(N'2020-06-08' AS Date))
INSERT [dbo].[tbl_Kurslar] ([KursId], [Gun], [Saat], [KursSuresi], [Ucret], [SınıfId], [HocaId], [Tarih]) VALUES (19, N'Cuma', N'13.00', N'1', 150.0000, 103, 88, CAST(N'2020-06-08' AS Date))
INSERT [dbo].[tbl_Kurslar] ([KursId], [Gun], [Saat], [KursSuresi], [Ucret], [SınıfId], [HocaId], [Tarih]) VALUES (20, N'Cuma', N'14.00', N'1', 150.0000, 104, 1, CAST(N'2020-06-08' AS Date))
INSERT [dbo].[tbl_Kurslar] ([KursId], [Gun], [Saat], [KursSuresi], [Ucret], [SınıfId], [HocaId], [Tarih]) VALUES (21, N'Cumartesi', N'10.00', N'2', 200.0000, 105, 61, CAST(N'2020-06-09' AS Date))
INSERT [dbo].[tbl_Kurslar] ([KursId], [Gun], [Saat], [KursSuresi], [Ucret], [SınıfId], [HocaId], [Tarih]) VALUES (22, N'Cumartesi', N'10.00', N'2', 200.0000, 106, 90, CAST(N'2020-06-09' AS Date))
INSERT [dbo].[tbl_Kurslar] ([KursId], [Gun], [Saat], [KursSuresi], [Ucret], [SınıfId], [HocaId], [Tarih]) VALUES (23, N'Cumartesi', N'10.00', N'2', 200.0000, 107, 89, CAST(N'2020-06-09' AS Date))
INSERT [dbo].[tbl_Kurslar] ([KursId], [Gun], [Saat], [KursSuresi], [Ucret], [SınıfId], [HocaId], [Tarih]) VALUES (24, N'Cumartesi', N'11.00', N'1', 180.0000, 108, 65, CAST(N'2020-06-09' AS Date))
INSERT [dbo].[tbl_Kurslar] ([KursId], [Gun], [Saat], [KursSuresi], [Ucret], [SınıfId], [HocaId], [Tarih]) VALUES (25, N'Cumartesi', N'15.00', N'1', 180.0000, 109, 65, CAST(N'2020-06-09' AS Date))
INSERT [dbo].[tbl_Kurslar] ([KursId], [Gun], [Saat], [KursSuresi], [Ucret], [SınıfId], [HocaId], [Tarih]) VALUES (26, N'Cumartesi', N'15.00', N'1', 180.0000, 110, 74, CAST(N'2020-06-09' AS Date))
INSERT [dbo].[tbl_Kurslar] ([KursId], [Gun], [Saat], [KursSuresi], [Ucret], [SınıfId], [HocaId], [Tarih]) VALUES (27, N'Cumartesi', N'16.00', N'1', 150.0000, 102, 62, CAST(N'2020-06-09' AS Date))
INSERT [dbo].[tbl_Kurslar] ([KursId], [Gun], [Saat], [KursSuresi], [Ucret], [SınıfId], [HocaId], [Tarih]) VALUES (28, N'Cumartesi', N'19.00', N'1', 150.0000, 102, 71, CAST(N'2020-06-09' AS Date))
INSERT [dbo].[tbl_Kurslar] ([KursId], [Gun], [Saat], [KursSuresi], [Ucret], [SınıfId], [HocaId], [Tarih]) VALUES (29, N'Cumartesi', N'19.00', N'1', 150.0000, 104, 72, CAST(N'2020-06-09' AS Date))
INSERT [dbo].[tbl_Kurslar] ([KursId], [Gun], [Saat], [KursSuresi], [Ucret], [SınıfId], [HocaId], [Tarih]) VALUES (31, N'Pazar', N'13.00', N'1', 150.0000, 103, 73, CAST(N'2020-06-10' AS Date))
INSERT [dbo].[tbl_Kurslar] ([KursId], [Gun], [Saat], [KursSuresi], [Ucret], [SınıfId], [HocaId], [Tarih]) VALUES (32, N'Pazar', N'14.00', N'2', 200.0000, 105, 73, CAST(N'2020-06-10' AS Date))
INSERT [dbo].[tbl_Kurslar] ([KursId], [Gun], [Saat], [KursSuresi], [Ucret], [SınıfId], [HocaId], [Tarih]) VALUES (33, N'Pazar', N'14.00', N'1', 150.0000, 102, 64, CAST(N'2020-06-10' AS Date))
INSERT [dbo].[tbl_Kurslar] ([KursId], [Gun], [Saat], [KursSuresi], [Ucret], [SınıfId], [HocaId], [Tarih]) VALUES (34, N'Pazar', N'14.00', N'1', 100.0000, 108, 81, CAST(N'2020-06-10' AS Date))
INSERT [dbo].[tbl_Kurslar] ([KursId], [Gun], [Saat], [KursSuresi], [Ucret], [SınıfId], [HocaId], [Tarih]) VALUES (35, N'Pazar', N'15.00', N'1', 150.0000, 102, 91, CAST(N'2020-06-10' AS Date))
SET IDENTITY_INSERT [dbo].[tbl_Kurslar] OFF
SET IDENTITY_INSERT [dbo].[tbl_Ogrenciler] ON 

INSERT [dbo].[tbl_Ogrenciler] ([OgrenciId], [Tc], [Ad], [Soyad], [Telefon], [DogumTarihi], [VeliAd], [VeliTel], [Mail], [OgrenciMi], [Aktiflik]) VALUES (1, N'111', N'Uğur', N'Aksoy', N'05998998899', CAST(N'1999-11-10' AS Date), N'Ali', N'05998989988', N'ugur@gmail.com', N'E', N'E')
INSERT [dbo].[tbl_Ogrenciler] ([OgrenciId], [Tc], [Ad], [Soyad], [Telefon], [DogumTarihi], [VeliAd], [VeliTel], [Mail], [OgrenciMi], [Aktiflik]) VALUES (2, N'222', N'Sevgi', N'Yavuz', N'05878965485', CAST(N'1992-02-02' AS Date), N'Ayşe', N'05898654754', N'sevgi_yavuz@gmail.com', N'H', N'E')
INSERT [dbo].[tbl_Ogrenciler] ([OgrenciId], [Tc], [Ad], [Soyad], [Telefon], [DogumTarihi], [VeliAd], [VeliTel], [Mail], [OgrenciMi], [Aktiflik]) VALUES (3, N'333', N'Aleyna', N'Gül', N'05478654522', CAST(N'2005-07-06' AS Date), N'Fatma', N'05123456452', N'aleyna@hotmail.com', N'E', N'E')
INSERT [dbo].[tbl_Ogrenciler] ([OgrenciId], [Tc], [Ad], [Soyad], [Telefon], [DogumTarihi], [VeliAd], [VeliTel], [Mail], [OgrenciMi], [Aktiflik]) VALUES (4, N'444', N'Zehra Sena', N'Keskin', N'05235153876', CAST(N'1995-01-10' AS Date), N'Ahmet', N'05542125325', N'sena_acar95@gmail.com', N'H', N'H')
INSERT [dbo].[tbl_Ogrenciler] ([OgrenciId], [Tc], [Ad], [Soyad], [Telefon], [DogumTarihi], [VeliAd], [VeliTel], [Mail], [OgrenciMi], [Aktiflik]) VALUES (5, N'555', N'Muhammed', N'Koç', N'05751232563', CAST(N'1997-05-19' AS Date), N'Orhan', N'05674321314', N'mamikoc@gmail.com', N'E', N'E')
INSERT [dbo].[tbl_Ogrenciler] ([OgrenciId], [Tc], [Ad], [Soyad], [Telefon], [DogumTarihi], [VeliAd], [VeliTel], [Mail], [OgrenciMi], [Aktiflik]) VALUES (6, N'666', N'Orhan', N'Köse', N'05235321512', CAST(N'1998-09-29' AS Date), N'Melike', N'05233413212', N'orhan@gmail.com', N'E', N'H')
INSERT [dbo].[tbl_Ogrenciler] ([OgrenciId], [Tc], [Ad], [Soyad], [Telefon], [DogumTarihi], [VeliAd], [VeliTel], [Mail], [OgrenciMi], [Aktiflik]) VALUES (7, N'777', N'Leyla', N'Yavuz', N'02354321212', CAST(N'1993-01-30' AS Date), N'Buse', N'02323121232', N'leyla_yavuz@gmail.com', N'E', N'E')
INSERT [dbo].[tbl_Ogrenciler] ([OgrenciId], [Tc], [Ad], [Soyad], [Telefon], [DogumTarihi], [VeliAd], [VeliTel], [Mail], [OgrenciMi], [Aktiflik]) VALUES (8, N'888', N'Rümeysa', N'Güler', N'02341531215', CAST(N'1995-08-03' AS Date), N'Aylin', N'02334654123', N'rumeysa54@gmail.com', N'E', N'E')
INSERT [dbo].[tbl_Ogrenciler] ([OgrenciId], [Tc], [Ad], [Soyad], [Telefon], [DogumTarihi], [VeliAd], [VeliTel], [Mail], [OgrenciMi], [Aktiflik]) VALUES (9, N'999', N'Beste', N'Güler', N'02345621312', CAST(N'1999-04-17' AS Date), N'Aylin', N'02334654123', N'beste54@gmail.com', N'E', N'E')
INSERT [dbo].[tbl_Ogrenciler] ([OgrenciId], [Tc], [Ad], [Soyad], [Telefon], [DogumTarihi], [VeliAd], [VeliTel], [Mail], [OgrenciMi], [Aktiflik]) VALUES (10, N'100', N'Yakup', N'Çetin', N'08512417153', CAST(N'1982-03-31' AS Date), N'Nuri', N'02634121221', N'yako@gmail.com', N'H', N'H')
INSERT [dbo].[tbl_Ogrenciler] ([OgrenciId], [Tc], [Ad], [Soyad], [Telefon], [DogumTarihi], [VeliAd], [VeliTel], [Mail], [OgrenciMi], [Aktiflik]) VALUES (11, N'101', N'Kemal', N'Kurt', N'08512542654', CAST(N'2007-01-22' AS Date), N'Recep', N'08512909380', N'kemal983@gmail.com', N'E', N'E')
INSERT [dbo].[tbl_Ogrenciler] ([OgrenciId], [Tc], [Ad], [Soyad], [Telefon], [DogumTarihi], [VeliAd], [VeliTel], [Mail], [OgrenciMi], [Aktiflik]) VALUES (12, N'102', N'Nalan', N'Serdar', N'08542315411', CAST(N'1997-02-12' AS Date), N'Ceren', N'05443215521', N'nserdar@gmail.com', N'E', N'E')
INSERT [dbo].[tbl_Ogrenciler] ([OgrenciId], [Tc], [Ad], [Soyad], [Telefon], [DogumTarihi], [VeliAd], [VeliTel], [Mail], [OgrenciMi], [Aktiflik]) VALUES (13, N'103', N'Canan', N'Yılmaz', N'02521552155', CAST(N'2001-05-05' AS Date), N'Nezahat', N'02584611512', N'cananyilmaz@gmail.com', N'E', N'E')
INSERT [dbo].[tbl_Ogrenciler] ([OgrenciId], [Tc], [Ad], [Soyad], [Telefon], [DogumTarihi], [VeliAd], [VeliTel], [Mail], [OgrenciMi], [Aktiflik]) VALUES (14, N'104', N'İsmail Emre', N'Başel', N'02524512552', CAST(N'1995-09-30' AS Date), N'Ahmet', N'02454214422', N'ebasel@gmail.com', N'H', N'E')
INSERT [dbo].[tbl_Ogrenciler] ([OgrenciId], [Tc], [Ad], [Soyad], [Telefon], [DogumTarihi], [VeliAd], [VeliTel], [Mail], [OgrenciMi], [Aktiflik]) VALUES (15, N'105', N'Kasım', N'Polat', N'02481215411', CAST(N'2004-03-02' AS Date), N'Eymen', N'02489431215', N'kasim@gmail.com', N'E', N'E')
INSERT [dbo].[tbl_Ogrenciler] ([OgrenciId], [Tc], [Ad], [Soyad], [Telefon], [DogumTarihi], [VeliAd], [VeliTel], [Mail], [OgrenciMi], [Aktiflik]) VALUES (16, N'106', N'Beliz', N'Ahi', N'01241522221', CAST(N'1998-07-04' AS Date), N'Burak', N'02131321211', N'belizim@gmail.com', N'E', N'E')
INSERT [dbo].[tbl_Ogrenciler] ([OgrenciId], [Tc], [Ad], [Soyad], [Telefon], [DogumTarihi], [VeliAd], [VeliTel], [Mail], [OgrenciMi], [Aktiflik]) VALUES (17, N'107', N'Rana', N'Kocaoğlu', N'02561321532', CAST(N'1995-09-29' AS Date), N'Nagihan', N'02115121575', N'kocaoglu@gmail.com', N'H', N'E')
INSERT [dbo].[tbl_Ogrenciler] ([OgrenciId], [Tc], [Ad], [Soyad], [Telefon], [DogumTarihi], [VeliAd], [VeliTel], [Mail], [OgrenciMi], [Aktiflik]) VALUES (18, N'108', N'Sena', N'Parlak', N'02125132211', CAST(N'1998-11-20' AS Date), N'Nimet', N'05324132125', N'senap@gmail.com', N'E', N'E')
INSERT [dbo].[tbl_Ogrenciler] ([OgrenciId], [Tc], [Ad], [Soyad], [Telefon], [DogumTarihi], [VeliAd], [VeliTel], [Mail], [OgrenciMi], [Aktiflik]) VALUES (19, N'109', N'Oğuzhan', N'Parlak', N'02314511215', CAST(N'2000-07-08' AS Date), N'Nimet', N'05324132125', N'ogus@hotmail.com', N'H', N'E')
INSERT [dbo].[tbl_Ogrenciler] ([OgrenciId], [Tc], [Ad], [Soyad], [Telefon], [DogumTarihi], [VeliAd], [VeliTel], [Mail], [OgrenciMi], [Aktiflik]) VALUES (20, N'200', N'Elif Nur', N'Nazlı', N'02115525322', CAST(N'1999-01-18' AS Date), N'Kemal', N'05643145412', N'elifcim@gmail.com', N'E', N'E')
INSERT [dbo].[tbl_Ogrenciler] ([OgrenciId], [Tc], [Ad], [Soyad], [Telefon], [DogumTarihi], [VeliAd], [VeliTel], [Mail], [OgrenciMi], [Aktiflik]) VALUES (21, N'201', N'Enes Alp', N'Bal', N'02314522155', CAST(N'1997-01-01' AS Date), N'Halime', N'02552656252', N'alpenes@gmail.com', N'E', N'E')
INSERT [dbo].[tbl_Ogrenciler] ([OgrenciId], [Tc], [Ad], [Soyad], [Telefon], [DogumTarihi], [VeliAd], [VeliTel], [Mail], [OgrenciMi], [Aktiflik]) VALUES (22, N'202', N'Ömer Faruk', N'Yılmaz', N'02215511888', CAST(N'1998-06-20' AS Date), N'Nuray', N'02318123155', N'ofaruk@gmail.com', N'E', N'H')
INSERT [dbo].[tbl_Ogrenciler] ([OgrenciId], [Tc], [Ad], [Soyad], [Telefon], [DogumTarihi], [VeliAd], [VeliTel], [Mail], [OgrenciMi], [Aktiflik]) VALUES (23, N'203', N'İlker', N'Yıldırım', N'02315423158', CAST(N'1998-03-02' AS Date), N'Melek', N'03521312052', N'ilk-er@gmail.com', N'E', N'E')
INSERT [dbo].[tbl_Ogrenciler] ([OgrenciId], [Tc], [Ad], [Soyad], [Telefon], [DogumTarihi], [VeliAd], [VeliTel], [Mail], [OgrenciMi], [Aktiflik]) VALUES (24, N'204', N'Nazlıcan', N'Karaca', N'02341518785', CAST(N'1999-08-20' AS Date), N'Alican', N'02472874544', N'nazlican@gmail.com', N'H', N'E')
SET IDENTITY_INSERT [dbo].[tbl_Ogrenciler] OFF
SET IDENTITY_INSERT [dbo].[tbl_OzelDersler] ON 

INSERT [dbo].[tbl_OzelDersler] ([OzelDersId], [KursSure], [Fiyat], [Gun], [Saat], [HocaId], [OgrenciId], [SınıfId]) VALUES (1, N'1', 200.0000, N'Pazartesi', N'08.00', 80, 1, 112)
INSERT [dbo].[tbl_OzelDersler] ([OzelDersId], [KursSure], [Fiyat], [Gun], [Saat], [HocaId], [OgrenciId], [SınıfId]) VALUES (2, N'2', 380.0000, N'Pazartesi', N'19.00', 70, 21, 111)
INSERT [dbo].[tbl_OzelDersler] ([OzelDersId], [KursSure], [Fiyat], [Gun], [Saat], [HocaId], [OgrenciId], [SınıfId]) VALUES (3, N'1', 200.0000, N'Pazartesi', N'19.00', 80, 23, 112)
INSERT [dbo].[tbl_OzelDersler] ([OzelDersId], [KursSure], [Fiyat], [Gun], [Saat], [HocaId], [OgrenciId], [SınıfId]) VALUES (4, N'1', 200.0000, N'Salı', N'09.00', 1, 24, 112)
INSERT [dbo].[tbl_OzelDersler] ([OzelDersId], [KursSure], [Fiyat], [Gun], [Saat], [HocaId], [OgrenciId], [SınıfId]) VALUES (5, N'1', 200.0000, N'Çarşamba', N'19.00', 80, NULL, 111)
INSERT [dbo].[tbl_OzelDersler] ([OzelDersId], [KursSure], [Fiyat], [Gun], [Saat], [HocaId], [OgrenciId], [SınıfId]) VALUES (6, N'1', 200.0000, N'Perşembe', N'17.00', 69, NULL, 111)
INSERT [dbo].[tbl_OzelDersler] ([OzelDersId], [KursSure], [Fiyat], [Gun], [Saat], [HocaId], [OgrenciId], [SınıfId]) VALUES (7, N'1', 200.0000, N'Cuma', N'12.00', 77, NULL, 112)
INSERT [dbo].[tbl_OzelDersler] ([OzelDersId], [KursSure], [Fiyat], [Gun], [Saat], [HocaId], [OgrenciId], [SınıfId]) VALUES (8, N'2', 380.0000, N'Pazar', N'13.00', 83, NULL, 112)
INSERT [dbo].[tbl_OzelDersler] ([OzelDersId], [KursSure], [Fiyat], [Gun], [Saat], [HocaId], [OgrenciId], [SınıfId]) VALUES (9, N'1', 200.0000, N'Pazar', N'15.00', 91, NULL, 112)
SET IDENTITY_INSERT [dbo].[tbl_OzelDersler] OFF
SET IDENTITY_INSERT [dbo].[tbl_Randevular] ON 

INSERT [dbo].[tbl_Randevular] ([RandevuId], [Fiyat], [OdendiMi], [OgrenciId], [KursId], [SınıfId], [OzelDersId], [IptalMi], [IptalTarihi]) VALUES (54, 180.0000, N'E', 1, NULL, 112, 1, N'H', NULL)
INSERT [dbo].[tbl_Randevular] ([RandevuId], [Fiyat], [OdendiMi], [OgrenciId], [KursId], [SınıfId], [OzelDersId], [IptalMi], [IptalTarihi]) VALUES (55, 100.0000, N'E', 2, 34, 108, NULL, N'H', NULL)
INSERT [dbo].[tbl_Randevular] ([RandevuId], [Fiyat], [OdendiMi], [OgrenciId], [KursId], [SınıfId], [OzelDersId], [IptalMi], [IptalTarihi]) VALUES (56, 80.0000, N'E', 3, 34, 108, NULL, N'H', NULL)
INSERT [dbo].[tbl_Randevular] ([RandevuId], [Fiyat], [OdendiMi], [OgrenciId], [KursId], [SınıfId], [OzelDersId], [IptalMi], [IptalTarihi]) VALUES (62, 135.0000, N'E', 18, 2, 102, NULL, N'H', NULL)
INSERT [dbo].[tbl_Randevular] ([RandevuId], [Fiyat], [OdendiMi], [OgrenciId], [KursId], [SınıfId], [OzelDersId], [IptalMi], [IptalTarihi]) VALUES (63, 135.0000, N'E', 5, 2, 102, NULL, N'H', NULL)
INSERT [dbo].[tbl_Randevular] ([RandevuId], [Fiyat], [OdendiMi], [OgrenciId], [KursId], [SınıfId], [OzelDersId], [IptalMi], [IptalTarihi]) VALUES (64, 150.0000, N'E', 17, 2, 102, NULL, N'H', NULL)
INSERT [dbo].[tbl_Randevular] ([RandevuId], [Fiyat], [OdendiMi], [OgrenciId], [KursId], [SınıfId], [OzelDersId], [IptalMi], [IptalTarihi]) VALUES (65, 135.0000, N'H', 7, 2, 102, NULL, N'E', CAST(N'2020-05-02' AS Date))
INSERT [dbo].[tbl_Randevular] ([RandevuId], [Fiyat], [OdendiMi], [OgrenciId], [KursId], [SınıfId], [OzelDersId], [IptalMi], [IptalTarihi]) VALUES (66, 135.0000, N'E', 8, 2, 102, NULL, N'H', NULL)
INSERT [dbo].[tbl_Randevular] ([RandevuId], [Fiyat], [OdendiMi], [OgrenciId], [KursId], [SınıfId], [OzelDersId], [IptalMi], [IptalTarihi]) VALUES (67, 135.0000, N'H', 9, 19, 103, NULL, N'H', NULL)
INSERT [dbo].[tbl_Randevular] ([RandevuId], [Fiyat], [OdendiMi], [OgrenciId], [KursId], [SınıfId], [OzelDersId], [IptalMi], [IptalTarihi]) VALUES (68, 150.0000, N'E', 19, 19, 103, NULL, N'H', NULL)
INSERT [dbo].[tbl_Randevular] ([RandevuId], [Fiyat], [OdendiMi], [OgrenciId], [KursId], [SınıfId], [OzelDersId], [IptalMi], [IptalTarihi]) VALUES (69, 135.0000, N'E', 11, 19, 103, NULL, N'H', NULL)
INSERT [dbo].[tbl_Randevular] ([RandevuId], [Fiyat], [OdendiMi], [OgrenciId], [KursId], [SınıfId], [OzelDersId], [IptalMi], [IptalTarihi]) VALUES (70, 135.0000, N'H', 12, 19, 103, NULL, N'H', NULL)
INSERT [dbo].[tbl_Randevular] ([RandevuId], [Fiyat], [OdendiMi], [OgrenciId], [KursId], [SınıfId], [OzelDersId], [IptalMi], [IptalTarihi]) VALUES (71, 180.0000, N'E', 13, 14, 107, NULL, N'E', CAST(N'2020-05-04' AS Date))
INSERT [dbo].[tbl_Randevular] ([RandevuId], [Fiyat], [OdendiMi], [OgrenciId], [KursId], [SınıfId], [OzelDersId], [IptalMi], [IptalTarihi]) VALUES (72, 200.0000, N'E', 14, 14, 107, NULL, N'H', NULL)
INSERT [dbo].[tbl_Randevular] ([RandevuId], [Fiyat], [OdendiMi], [OgrenciId], [KursId], [SınıfId], [OzelDersId], [IptalMi], [IptalTarihi]) VALUES (73, 180.0000, N'E', 15, 14, 107, NULL, N'H', NULL)
INSERT [dbo].[tbl_Randevular] ([RandevuId], [Fiyat], [OdendiMi], [OgrenciId], [KursId], [SınıfId], [OzelDersId], [IptalMi], [IptalTarihi]) VALUES (74, 180.0000, N'E', 16, 14, 107, NULL, N'H', NULL)
INSERT [dbo].[tbl_Randevular] ([RandevuId], [Fiyat], [OdendiMi], [OgrenciId], [KursId], [SınıfId], [OzelDersId], [IptalMi], [IptalTarihi]) VALUES (75, 180.0000, N'E', 20, 14, 107, NULL, N'H', NULL)
INSERT [dbo].[tbl_Randevular] ([RandevuId], [Fiyat], [OdendiMi], [OgrenciId], [KursId], [SınıfId], [OzelDersId], [IptalMi], [IptalTarihi]) VALUES (76, 180.0000, N'E', 21, NULL, 111, 2, N'H', NULL)
INSERT [dbo].[tbl_Randevular] ([RandevuId], [Fiyat], [OdendiMi], [OgrenciId], [KursId], [SınıfId], [OzelDersId], [IptalMi], [IptalTarihi]) VALUES (77, 180.0000, N'E', 23, NULL, 112, 3, N'H', NULL)
INSERT [dbo].[tbl_Randevular] ([RandevuId], [Fiyat], [OdendiMi], [OgrenciId], [KursId], [SınıfId], [OzelDersId], [IptalMi], [IptalTarihi]) VALUES (78, 380.0000, N'E', 24, NULL, 112, 8, N'H', NULL)
SET IDENTITY_INSERT [dbo].[tbl_Randevular] OFF
SET IDENTITY_INSERT [dbo].[tbl_Sınıflar] ON 

INSERT [dbo].[tbl_Sınıflar] ([SınıfId], [SınıfAd], [Kapasite]) VALUES (102, N'A100', 5)
INSERT [dbo].[tbl_Sınıflar] ([SınıfId], [SınıfAd], [Kapasite]) VALUES (103, N'A101', 5)
INSERT [dbo].[tbl_Sınıflar] ([SınıfId], [SınıfAd], [Kapasite]) VALUES (104, N'A102', 5)
INSERT [dbo].[tbl_Sınıflar] ([SınıfId], [SınıfAd], [Kapasite]) VALUES (105, N'A103', 10)
INSERT [dbo].[tbl_Sınıflar] ([SınıfId], [SınıfAd], [Kapasite]) VALUES (106, N'A104', 10)
INSERT [dbo].[tbl_Sınıflar] ([SınıfId], [SınıfAd], [Kapasite]) VALUES (107, N'A105', 10)
INSERT [dbo].[tbl_Sınıflar] ([SınıfId], [SınıfAd], [Kapasite]) VALUES (108, N'A106', 2)
INSERT [dbo].[tbl_Sınıflar] ([SınıfId], [SınıfAd], [Kapasite]) VALUES (109, N'A107', 2)
INSERT [dbo].[tbl_Sınıflar] ([SınıfId], [SınıfAd], [Kapasite]) VALUES (110, N'A108', 2)
INSERT [dbo].[tbl_Sınıflar] ([SınıfId], [SınıfAd], [Kapasite]) VALUES (111, N'A109', 1)
INSERT [dbo].[tbl_Sınıflar] ([SınıfId], [SınıfAd], [Kapasite]) VALUES (112, N'A110', 1)
SET IDENTITY_INSERT [dbo].[tbl_Sınıflar] OFF
ALTER TABLE [dbo].[tbl_OzelDersler]  WITH CHECK ADD  CONSTRAINT [FK_tbl_OzelDersler_tbl_Hocalar] FOREIGN KEY([HocaId])
REFERENCES [dbo].[tbl_Hocalar] ([HocaId])
GO
ALTER TABLE [dbo].[tbl_OzelDersler] CHECK CONSTRAINT [FK_tbl_OzelDersler_tbl_Hocalar]
GO
ALTER TABLE [dbo].[tbl_OzelDersler]  WITH CHECK ADD  CONSTRAINT [FK_tbl_OzelDersler_tbl_Musteriler] FOREIGN KEY([OgrenciId])
REFERENCES [dbo].[tbl_Ogrenciler] ([OgrenciId])
GO
ALTER TABLE [dbo].[tbl_OzelDersler] CHECK CONSTRAINT [FK_tbl_OzelDersler_tbl_Musteriler]
GO
ALTER TABLE [dbo].[tbl_OzelDersler]  WITH CHECK ADD  CONSTRAINT [FK_tbl_OzelDersler_tbl_Sınıflar] FOREIGN KEY([SınıfId])
REFERENCES [dbo].[tbl_Sınıflar] ([SınıfId])
GO
ALTER TABLE [dbo].[tbl_OzelDersler] CHECK CONSTRAINT [FK_tbl_OzelDersler_tbl_Sınıflar]
GO
ALTER TABLE [dbo].[tbl_Randevular]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Randevular_tbl_Kurslar] FOREIGN KEY([KursId])
REFERENCES [dbo].[tbl_Kurslar] ([KursId])
GO
ALTER TABLE [dbo].[tbl_Randevular] CHECK CONSTRAINT [FK_tbl_Randevular_tbl_Kurslar]
GO
ALTER TABLE [dbo].[tbl_Randevular]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Randevular_tbl_Musteriler] FOREIGN KEY([OgrenciId])
REFERENCES [dbo].[tbl_Ogrenciler] ([OgrenciId])
GO
ALTER TABLE [dbo].[tbl_Randevular] CHECK CONSTRAINT [FK_tbl_Randevular_tbl_Musteriler]
GO
ALTER TABLE [dbo].[tbl_Randevular]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Randevular_tbl_OzelDersler] FOREIGN KEY([OzelDersId])
REFERENCES [dbo].[tbl_OzelDersler] ([OzelDersId])
GO
ALTER TABLE [dbo].[tbl_Randevular] CHECK CONSTRAINT [FK_tbl_Randevular_tbl_OzelDersler]
GO
ALTER TABLE [dbo].[tbl_Randevular]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Randevular_tbl_Sınıflar] FOREIGN KEY([SınıfId])
REFERENCES [dbo].[tbl_Sınıflar] ([SınıfId])
GO
ALTER TABLE [dbo].[tbl_Randevular] CHECK CONSTRAINT [FK_tbl_Randevular_tbl_Sınıflar]
GO
/****** Object:  StoredProcedure [dbo].[sp_gunleregöre_kurslar]    Script Date: 25.05.2020 02:05:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_gunleregöre_kurslar]
@gun nvarchar(50)

AS
BEGIN
 select tbl_Kurslar.Tarih, tbl_Kurslar.Gun, tbl_Kurslar.Saat, tbl_Kurslar.KursSuresi, tbl_Sınıflar.SınıfAd, tbl_Sınıflar.Kapasite
 from tbl_Kurslar inner join tbl_Sınıflar on tbl_Kurslar.SınıfId=tbl_Sınıflar.SınıfId where Gun=@gun
END

GO
/****** Object:  StoredProcedure [dbo].[sp_muzik_aletlerine_gore_hocalari_listeleme]    Script Date: 25.05.2020 02:05:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_muzik_aletlerine_gore_hocalari_listeleme]
@enstrüman nvarchar(50)
AS
BEGIN
 select HocaAd,HocaSoyad,Enstrüman, HocaTel from tbl_Hocalar where Enstrüman=@enstrüman
END

GO
/****** Object:  StoredProcedure [dbo].[sp_randevu_iptal_etme_1_gün_önce_ise_iptal_olmaz]    Script Date: 25.05.2020 02:05:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_randevu_iptal_etme_1_gün_önce_ise_iptal_olmaz]
 @randevuid int
AS
BEGIN
	declare @kurstarih date
	declare @kursid int, @fark int

	select @kursid=KursId from tbl_Randevular where RandevuId=@randevuid
	select @kurstarih=Tarih from tbl_Kurslar where KursId=@kursid
	select @fark=DATEDIFF(day,@kurstarih,GETDATE())

	if(@fark>1)
	begin
		update tbl_Randevular set
		IptalMi='E', IptalTarihi=GETDATE()
		where RandevuId=@randevuid

		print 'Randevunuz iptal edilmiştir.'
END
else
	print 'Randevunuz iptal edilemedi. Lütfen kurs hocanızla iletişime geçiniz.'
end

GO
USE [master]
GO
ALTER DATABASE [MuzikKursu] SET  READ_WRITE 
GO
