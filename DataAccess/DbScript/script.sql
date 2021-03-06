USE [ProjeIt]
GO
/****** Object:  Table [dbo].[HastaUzmanlik]    Script Date: 10.06.2022 14:13:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HastaUzmanlik](
	[HastaUzmanlikId] [int] IDENTITY(1,1) NOT NULL,
	[HastaUzmanlikAdi] [nvarchar](500) NULL,
 CONSTRAINT [PK_HastaUzmanlik] PRIMARY KEY CLUSTERED 
(
	[HastaUzmanlikId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KanserTurleri]    Script Date: 10.06.2022 14:13:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KanserTurleri](
	[KanserTurId] [int] IDENTITY(1,1) NOT NULL,
	[KanserTurAdi] [nvarchar](500) NULL,
 CONSTRAINT [PK_KanserTurleri] PRIMARY KEY CLUSTERED 
(
	[KanserTurId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kullanicilar]    Script Date: 10.06.2022 14:13:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kullanicilar](
	[KullaniciId] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciAdi] [nvarchar](500) NULL,
	[AdiSoyadi] [nvarchar](500) NULL,
	[Sifre] [nvarchar](500) NULL,
	[RolId] [int] NULL,
 CONSTRAINT [PK_Kullanicilar] PRIMARY KEY CLUSTERED 
(
	[KullaniciId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MateryalTipleri]    Script Date: 10.06.2022 14:13:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MateryalTipleri](
	[MateryalTipId] [int] IDENTITY(1,1) NOT NULL,
	[MateryalTipAdi] [nvarchar](500) NULL,
 CONSTRAINT [PK_MateryalTipleri] PRIMARY KEY CLUSTERED 
(
	[MateryalTipId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjeTanimlari]    Script Date: 10.06.2022 14:13:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjeTanimlari](
	[ProjeTanimId] [int] IDENTITY(1,1) NOT NULL,
	[ProjeTanimAdi] [nvarchar](500) NULL,
	[SponsorId] [int] NULL,
	[HastaUzmanlikId] [int] NULL,
	[KanserTurId] [int] NULL,
	[MateryalTipId] [int] NULL,
	[TüpCinsId] [int] NULL,
 CONSTRAINT [PK_ProjeTanimlari] PRIMARY KEY CLUSTERED 
(
	[ProjeTanimId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roller]    Script Date: 10.06.2022 14:13:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roller](
	[RolId] [int] IDENTITY(1,1) NOT NULL,
	[RolAdi] [nvarchar](500) NULL,
 CONSTRAINT [PK_Roller] PRIMARY KEY CLUSTERED 
(
	[RolId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sponsor]    Script Date: 10.06.2022 14:13:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sponsor](
	[SponsorId] [int] IDENTITY(1,1) NOT NULL,
	[SponsorAdi] [nvarchar](500) NULL,
 CONSTRAINT [PK_Sponsor] PRIMARY KEY CLUSTERED 
(
	[SponsorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TüpCinsleri]    Script Date: 10.06.2022 14:13:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TüpCinsleri](
	[TüpCinsId] [int] IDENTITY(1,1) NOT NULL,
	[TüpCinsAdi] [nvarchar](500) NULL,
 CONSTRAINT [PK_TüpCinsleri] PRIMARY KEY CLUSTERED 
(
	[TüpCinsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[HastaUzmanlik] ON 

INSERT [dbo].[HastaUzmanlik] ([HastaUzmanlikId], [HastaUzmanlikAdi]) VALUES (1, N'Kbb Ve Tıbbi Onkoloji')
INSERT [dbo].[HastaUzmanlik] ([HastaUzmanlikId], [HastaUzmanlikAdi]) VALUES (2, N'Göğüs Cerahi Ve tıbbi Onkoloji')
SET IDENTITY_INSERT [dbo].[HastaUzmanlik] OFF
GO
SET IDENTITY_INSERT [dbo].[KanserTurleri] ON 

INSERT [dbo].[KanserTurleri] ([KanserTurId], [KanserTurAdi]) VALUES (1, N'NSCLC')
INSERT [dbo].[KanserTurleri] ([KanserTurId], [KanserTurAdi]) VALUES (2, N'Nazofaringeal Karsinoma (Üst yutak)')
SET IDENTITY_INSERT [dbo].[KanserTurleri] OFF
GO
SET IDENTITY_INSERT [dbo].[Kullanicilar] ON 

INSERT [dbo].[Kullanicilar] ([KullaniciId], [KullaniciAdi], [AdiSoyadi], [Sifre], [RolId]) VALUES (2, N'Ridvan', N'Rıdvan Övsene', N'123', 1)
SET IDENTITY_INSERT [dbo].[Kullanicilar] OFF
GO
SET IDENTITY_INSERT [dbo].[MateryalTipleri] ON 

INSERT [dbo].[MateryalTipleri] ([MateryalTipId], [MateryalTipAdi]) VALUES (1, N'SST veya Plazma')
INSERT [dbo].[MateryalTipleri] ([MateryalTipId], [MateryalTipAdi]) VALUES (2, N'WB')
SET IDENTITY_INSERT [dbo].[MateryalTipleri] OFF
GO
SET IDENTITY_INSERT [dbo].[ProjeTanimlari] ON 

INSERT [dbo].[ProjeTanimlari] ([ProjeTanimId], [ProjeTanimAdi], [SponsorId], [HastaUzmanlikId], [KanserTurId], [MateryalTipId], [TüpCinsId]) VALUES (1, N'Deneme Proje', 1, 1, 1, 1, 1)
INSERT [dbo].[ProjeTanimlari] ([ProjeTanimId], [ProjeTanimAdi], [SponsorId], [HastaUzmanlikId], [KanserTurId], [MateryalTipId], [TüpCinsId]) VALUES (2, N'Test', 2, 2, 2, 2, 1)
SET IDENTITY_INSERT [dbo].[ProjeTanimlari] OFF
GO
SET IDENTITY_INSERT [dbo].[Roller] ON 

INSERT [dbo].[Roller] ([RolId], [RolAdi]) VALUES (1, N'Admin')
INSERT [dbo].[Roller] ([RolId], [RolAdi]) VALUES (2, N'User')
SET IDENTITY_INSERT [dbo].[Roller] OFF
GO
SET IDENTITY_INSERT [dbo].[Sponsor] ON 

INSERT [dbo].[Sponsor] ([SponsorId], [SponsorAdi]) VALUES (1, N'XALTO')
INSERT [dbo].[Sponsor] ([SponsorId], [SponsorAdi]) VALUES (2, N'XABİ')
SET IDENTITY_INSERT [dbo].[Sponsor] OFF
GO
SET IDENTITY_INSERT [dbo].[TüpCinsleri] ON 

INSERT [dbo].[TüpCinsleri] ([TüpCinsId], [TüpCinsAdi]) VALUES (1, N'Streck')
SET IDENTITY_INSERT [dbo].[TüpCinsleri] OFF
GO
/****** Object:  StoredProcedure [dbo].[GetListKullanici]    Script Date: 10.06.2022 14:13:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetListKullanici] 

	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT 
	.Kullanicilar.[KullaniciId]
	,Kullanicilar.[KullaniciAdi]
	,Kullanicilar.[AdiSoyadi]
	,Kullanicilar.[Sifre]
	,Roller.[RolId]
	,Roller.[RolAdi]


	
	FROM  Kullanicilar
	LEFT JOIN Roller ON Roller.RolId=Kullanicilar.RolId


END
GO
/****** Object:  StoredProcedure [dbo].[GetListProje]    Script Date: 10.06.2022 14:13:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetListProje] 

	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT 
	.ProjeTanimlari.[ProjeTanimId]
	,ProjeTanimlari.[ProjeTanimAdi]
	,Sponsor.[SponsorId]
	,Sponsor.[SponsorAdi]
	,HastaUzmanlik.[HastaUzmanlikId]
	,HastaUzmanlik.[HastaUzmanlikAdi]
	,KanserTurleri.[KanserTurId]
	,KanserTurleri.[KanserTurAdi]
	,MateryalTipleri.[MateryalTipId]
	,MateryalTipleri.[MateryalTipAdi]
	,TüpCinsleri.[TüpCinsId]
	,TüpCinsleri.[TüpCinsAdi]

	
	FROM  ProjeTanimlari
	LEFT JOIN Sponsor ON Sponsor.SponsorId=ProjeTanimlari.SponsorId
	LEFT JOIN HastaUzmanlik ON HastaUzmanlik.HastaUzmanlikId=ProjeTanimlari.HastaUzmanlikId
	LEFT JOIN KanserTurleri ON KanserTurleri.KanserTurId=ProjeTanimlari.KanserTurId
	LEFT JOIN MateryalTipleri ON MateryalTipleri.MateryalTipId=ProjeTanimlari.MateryalTipId
	LEFT JOIN TüpCinsleri ON TüpCinsleri.TüpCinsId=ProjeTanimlari.TüpCinsId

END
GO
