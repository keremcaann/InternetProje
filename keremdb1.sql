USE [keremdb1]
GO
/****** Object:  Table [dbo].[derstablo]    Script Date: 6.12.2022 23:33:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[derstablo](
	[dersid] [smallint] IDENTITY(1,1) NOT NULL,
	[dersadi] [varchar](30) NULL,
	[derskredisi] [varchar](30) NULL,
	[dersokulyonetimid] [smallint] NULL,
 CONSTRAINT [PK_tbl_ders] PRIMARY KEY CLUSTERED 
(
	[dersid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ogrenciderstablo]    Script Date: 6.12.2022 23:33:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ogrenciderstablo](
	[ogrencidersid] [smallint] IDENTITY(1,1) NOT NULL,
	[ogrencidersdersid] [smallint] NULL,
	[ogrencidersogrenciid] [smallint] NULL,
 CONSTRAINT [PK_tbl_ogrenciders] PRIMARY KEY CLUSTERED 
(
	[ogrencidersid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ogrencilertablo]    Script Date: 6.12.2022 23:33:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ogrencilertablo](
	[ogrenciid] [smallint] IDENTITY(1,1) NOT NULL,
	[ogrenciadsoyad] [varchar](50) NULL,
	[ogrencikayittarih] [datetime] NULL,
	[ogrencidogumtarih] [datetime] NULL,
	[ogrencibolum] [varchar](50) NULL,
	[ogrencino] [varchar](11) NULL,
 CONSTRAINT [PK_tbl_ogrenciler] PRIMARY KEY CLUSTERED 
(
	[ogrenciid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[okulyonetimtablo]    Script Date: 6.12.2022 23:33:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[okulyonetimtablo](
	[yonetimid] [smallint] IDENTITY(1,1) NOT NULL,
	[yonetimadsoyad] [varchar](30) NULL,
	[yonetimgorevi] [varchar](30) NULL,
	[yonetimtipi] [nchar](10) NULL,
 CONSTRAINT [PK_tbl_okulyonetim] PRIMARY KEY CLUSTERED 
(
	[yonetimid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[derstablo] ON 

INSERT [dbo].[derstablo] ([dersid], [dersadi], [derskredisi], [dersokulyonetimid]) VALUES (1, N'Elektrik', N'10', 3)
INSERT [dbo].[derstablo] ([dersid], [dersadi], [derskredisi], [dersokulyonetimid]) VALUES (2, N'Edebiyat', N'5', 6)
INSERT [dbo].[derstablo] ([dersid], [dersadi], [derskredisi], [dersokulyonetimid]) VALUES (3, N'Nesne Tabanlı', N'3', 3)
INSERT [dbo].[derstablo] ([dersid], [dersadi], [derskredisi], [dersokulyonetimid]) VALUES (4, N'Veri Tabanı', N'1', 1)
SET IDENTITY_INSERT [dbo].[derstablo] OFF
GO
SET IDENTITY_INSERT [dbo].[ogrenciderstablo] ON 

INSERT [dbo].[ogrenciderstablo] ([ogrencidersid], [ogrencidersdersid], [ogrencidersogrenciid]) VALUES (1, 1, 3)
INSERT [dbo].[ogrenciderstablo] ([ogrencidersid], [ogrencidersdersid], [ogrencidersogrenciid]) VALUES (2, 2, 1)
INSERT [dbo].[ogrenciderstablo] ([ogrencidersid], [ogrencidersdersid], [ogrencidersogrenciid]) VALUES (3, 3, 3)
INSERT [dbo].[ogrenciderstablo] ([ogrencidersid], [ogrencidersdersid], [ogrencidersogrenciid]) VALUES (4, 1, 8)
INSERT [dbo].[ogrenciderstablo] ([ogrencidersid], [ogrencidersdersid], [ogrencidersogrenciid]) VALUES (5, 2, 1)
INSERT [dbo].[ogrenciderstablo] ([ogrencidersid], [ogrencidersdersid], [ogrencidersogrenciid]) VALUES (6, 1, 1)
SET IDENTITY_INSERT [dbo].[ogrenciderstablo] OFF
GO
SET IDENTITY_INSERT [dbo].[ogrencilertablo] ON 

INSERT [dbo].[ogrencilertablo] ([ogrenciid], [ogrenciadsoyad], [ogrencikayittarih], [ogrencidogumtarih], [ogrencibolum], [ogrencino]) VALUES (1, N'Gizem Bağdaçiçek', CAST(N'2022-11-25T00:00:00.000' AS DateTime), CAST(N'2000-02-24T00:00:00.000' AS DateTime), N'Muhendislik', N'453')
INSERT [dbo].[ogrencilertablo] ([ogrenciid], [ogrenciadsoyad], [ogrencikayittarih], [ogrencidogumtarih], [ogrencibolum], [ogrencino]) VALUES (3, N'Sinem Özgür', CAST(N'2022-11-25T00:00:00.000' AS DateTime), CAST(N'2000-02-10T00:00:00.000' AS DateTime), N'Elektronik', N'789')
INSERT [dbo].[ogrencilertablo] ([ogrenciid], [ogrenciadsoyad], [ogrencikayittarih], [ogrencidogumtarih], [ogrencibolum], [ogrencino]) VALUES (8, N'Hande Sarıoğlu', CAST(N'2022-11-26T00:18:28.073' AS DateTime), CAST(N'2002-08-14T00:17:50.000' AS DateTime), N'Elektronik', N'432')
INSERT [dbo].[ogrencilertablo] ([ogrenciid], [ogrenciadsoyad], [ogrencikayittarih], [ogrencidogumtarih], [ogrencibolum], [ogrencino]) VALUES (9, N'Harry Kane', CAST(N'2022-11-29T22:57:14.637' AS DateTime), CAST(N'2000-04-13T22:56:38.000' AS DateTime), N'Muhendislik', N'674')
INSERT [dbo].[ogrencilertablo] ([ogrenciid], [ogrenciadsoyad], [ogrencikayittarih], [ogrencidogumtarih], [ogrencibolum], [ogrencino]) VALUES (10, N'Johnny Depp', CAST(N'2022-12-02T20:52:44.507' AS DateTime), CAST(N'2020-03-11T20:52:12.000' AS DateTime), N'Muhendislik', N'321')
SET IDENTITY_INSERT [dbo].[ogrencilertablo] OFF
GO
SET IDENTITY_INSERT [dbo].[okulyonetimtablo] ON 

INSERT [dbo].[okulyonetimtablo] ([yonetimid], [yonetimadsoyad], [yonetimgorevi], [yonetimtipi]) VALUES (1, N'Mia Malkova', N'Matematik', N'12        ')
INSERT [dbo].[okulyonetimtablo] ([yonetimid], [yonetimadsoyad], [yonetimgorevi], [yonetimtipi]) VALUES (2, N'Şahin Kaya', N'Yazılım', N'12        ')
INSERT [dbo].[okulyonetimtablo] ([yonetimid], [yonetimadsoyad], [yonetimgorevi], [yonetimtipi]) VALUES (3, N'Bradley Cooper', N'İşletme', N'12        ')
INSERT [dbo].[okulyonetimtablo] ([yonetimid], [yonetimadsoyad], [yonetimgorevi], [yonetimtipi]) VALUES (4, N'Angelina Jolie', N'Müdür Yardımcısı', N'11        ')
INSERT [dbo].[okulyonetimtablo] ([yonetimid], [yonetimadsoyad], [yonetimgorevi], [yonetimtipi]) VALUES (5, N'Fatih Terim', N'Müdür', N'11        ')
INSERT [dbo].[okulyonetimtablo] ([yonetimid], [yonetimadsoyad], [yonetimgorevi], [yonetimtipi]) VALUES (6, N'Ersun Yanal', N'Sosyal Bilgiler', N'12        ')
INSERT [dbo].[okulyonetimtablo] ([yonetimid], [yonetimadsoyad], [yonetimgorevi], [yonetimtipi]) VALUES (9, N'Aykut Kocaman', N'Muhasebe', N'11        ')
INSERT [dbo].[okulyonetimtablo] ([yonetimid], [yonetimadsoyad], [yonetimgorevi], [yonetimtipi]) VALUES (10, N'Tim Burton', N'Sosyal Bilgiler', N'12        ')
INSERT [dbo].[okulyonetimtablo] ([yonetimid], [yonetimadsoyad], [yonetimgorevi], [yonetimtipi]) VALUES (11, N'Ryan Gosling', N'Siyasal Bilimler', N'11        ')
SET IDENTITY_INSERT [dbo].[okulyonetimtablo] OFF
GO
ALTER TABLE [dbo].[derstablo]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ders_tbl_okulyonetim] FOREIGN KEY([dersokulyonetimid])
REFERENCES [dbo].[okulyonetimtablo] ([yonetimid])
GO
ALTER TABLE [dbo].[derstablo] CHECK CONSTRAINT [FK_tbl_ders_tbl_okulyonetim]
GO
ALTER TABLE [dbo].[ogrenciderstablo]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ogrenciders_tbl_ders] FOREIGN KEY([ogrencidersdersid])
REFERENCES [dbo].[derstablo] ([dersid])
GO
ALTER TABLE [dbo].[ogrenciderstablo] CHECK CONSTRAINT [FK_tbl_ogrenciders_tbl_ders]
GO
ALTER TABLE [dbo].[ogrenciderstablo]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ogrenciders_tbl_ogrenciler1] FOREIGN KEY([ogrencidersogrenciid])
REFERENCES [dbo].[ogrencilertablo] ([ogrenciid])
GO
ALTER TABLE [dbo].[ogrenciderstablo] CHECK CONSTRAINT [FK_tbl_ogrenciders_tbl_ogrenciler1]
GO
