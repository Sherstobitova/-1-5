USE [Vet clinic]
GO
/****** Object:  Table [dbo].[Family*]    Script Date: 19.02.2024 10:07:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Family*](
	[Family] [char](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Master]    Script Date: 19.02.2024 10:07:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Master](
	[ID_Master] [int] NOT NULL,
	[Owner's_name] [char](10) NULL,
	[Address] [char](10) NULL,
	[Telephone] [nvarchar](50) NULL,
 CONSTRAINT [PK_Master] PRIMARY KEY CLUSTERED 
(
	[ID_Master] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pets]    Script Date: 19.02.2024 10:07:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pets](
	[ID_Master] [int] NULL,
	[ID_Pet] [int] NOT NULL,
	[Family] [char](10) NULL,
	[View] [char](10) NULL,
	[Breed] [char](10) NULL,
	[Nickname] [char](10) NULL,
	[Age] [char](10) NULL,
	[Floor] [char](10) NULL,
	[Name_service] [char](10) NULL,
	[Price] [money] NULL,
 CONSTRAINT [PK_Pets] PRIMARY KEY CLUSTERED 
(
	[ID_Pet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reception]    Script Date: 19.02.2024 10:07:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reception](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Owner's_name] [char](10) NULL,
	[ID_Pet] [int] NULL,
	[ID_veterinarian] [int] NULL,
	[Time] [time](7) NULL,
	[Date_receipt] [date] NULL,
 CONSTRAINT [PK_Reception_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Services]    Script Date: 19.02.2024 10:07:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Services](
	[Name] [char](10) NOT NULL,
	[Price] [money] NULL,
	[Описание] [char](50) NULL,
	[Препорат] [char](10) NULL,
 CONSTRAINT [PK_Services] PRIMARY KEY CLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Time*]    Script Date: 19.02.2024 10:07:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Time*](
	[Time] [time](7) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vet]    Script Date: 19.02.2024 10:07:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vet](
	[ID_veterinarian] [int] NOT NULL,
	[Name_veterinarian] [char](10) NULL,
	[Direction] [char](10) NULL,
	[Cabinet] [int] NULL,
	[Telephone] [nvarchar](50) NULL,
	[Time] [time](7) NULL,
 CONSTRAINT [PK_Vet] PRIMARY KEY CLUSTERED 
(
	[ID_veterinarian] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Pets]  WITH CHECK ADD  CONSTRAINT [FK_Pets_Master] FOREIGN KEY([ID_Master])
REFERENCES [dbo].[Master] ([ID_Master])
GO
ALTER TABLE [dbo].[Pets] CHECK CONSTRAINT [FK_Pets_Master]
GO
ALTER TABLE [dbo].[Pets]  WITH CHECK ADD  CONSTRAINT [FK_Pets_Services] FOREIGN KEY([Name_service])
REFERENCES [dbo].[Services] ([Name])
GO
ALTER TABLE [dbo].[Pets] CHECK CONSTRAINT [FK_Pets_Services]
GO
ALTER TABLE [dbo].[Reception]  WITH CHECK ADD  CONSTRAINT [FK_Reception_Pets] FOREIGN KEY([ID_Pet])
REFERENCES [dbo].[Pets] ([ID_Pet])
GO
ALTER TABLE [dbo].[Reception] CHECK CONSTRAINT [FK_Reception_Pets]
GO
ALTER TABLE [dbo].[Reception]  WITH CHECK ADD  CONSTRAINT [FK_Reception_Vet] FOREIGN KEY([ID_veterinarian])
REFERENCES [dbo].[Vet] ([ID_veterinarian])
GO
ALTER TABLE [dbo].[Reception] CHECK CONSTRAINT [FK_Reception_Vet]
GO
