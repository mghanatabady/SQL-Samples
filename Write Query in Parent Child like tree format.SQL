CREATE TABLE [dbo].[Customer](
	[Customer_Rid] [int] NOT NULL,
	[Customer_id] [nvarchar](50) NULL,
	[Customer_Name] [nvarchar](50) NULL,
	[Customer_Type] [nvarchar](50) NULL,
	[Adderss] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[Customer_Rid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Level]    Script Date: 09/29/2020 10:11:00 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Level](
	[Level_Rid] [int] NOT NULL,
	[Level_Id] [nvarchar](50) NULL,
	[Level_Description] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[Area] [nvarchar](50) NULL,
 CONSTRAINT [PK_Level] PRIMARY KEY CLUSTERED 
(
	[Level_Rid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Level_Detail]    Script Date: 09/29/2020 10:11:00 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Level_Detail](
	[LevelDetial_Rid] [int] IDENTITY(1,1) NOT NULL,
	[Level_Rid] [int] NULL,
	[Customer_Rid] [int] NULL,
 CONSTRAINT [PK_LevelDetail] PRIMARY KEY CLUSTERED 
(
	[LevelDetial_Rid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Customer] ([Customer_Rid], [Customer_id], [Customer_Name], [Customer_Type], [Adderss], [State], [City]) VALUES (1, N'C12', N'Raja', N'service', N'Address1', N'TN', N'CHN')
GO
INSERT [dbo].[Customer] ([Customer_Rid], [Customer_id], [Customer_Name], [Customer_Type], [Adderss], [State], [City]) VALUES (2, N'C13', N'Selva', N'service', N'Address2', N'TN', N'CHN')
GO
INSERT [dbo].[Level] ([Level_Rid], [Level_Id], [Level_Description], [State], [City], [Area]) VALUES (1, N'L1', N'Level1', N'TN', N'CHN', N'VL')
GO
INSERT [dbo].[Level] ([Level_Rid], [Level_Id], [Level_Description], [State], [City], [Area]) VALUES (2, N'L2', N'Level2', N'TN', N'CHN', N'RT')
GO
SET IDENTITY_INSERT [dbo].[Level_Detail] ON 

GO
INSERT [dbo].[Level_Detail] ([LevelDetial_Rid], [Level_Rid], [Customer_Rid]) VALUES (1, 1, 1)
GO
INSERT [dbo].[Level_Detail] ([LevelDetial_Rid], [Level_Rid], [Customer_Rid]) VALUES (2, 2, 1)
GO
INSERT [dbo].[Level_Detail] ([LevelDetial_Rid], [Level_Rid], [Customer_Rid]) VALUES (3, 1, 2)
GO
INSERT [dbo].[Level_Detail] ([LevelDetial_Rid], [Level_Rid], [Customer_Rid]) VALUES (4, 2, 2)
GO
SET IDENTITY_INSERT [dbo].[Level_Detail] OFF
GO
