USE [Student Grading Management Subsystem - THINHNDHE161890]
GO
/****** Object:  Table [dbo].[Assess]    Script Date: 08/07/2022 6:48:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assess](
	[AsID] [varchar](50) NOT NULL,
	[ClassID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Assess] PRIMARY KEY CLUSTERED 
(
	[AsID] ASC,
	[ClassID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Assessment System]    Script Date: 08/07/2022 6:48:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assessment System](
	[AsID] [varchar](50) NOT NULL,
	[CatID] [varchar](50) NOT NULL,
	[CouID] [varchar](50) NOT NULL,
	[Number of Questions] [int] NOT NULL,
	[Duration] [varchar](50) NOT NULL,
	[Weight] [float] NOT NULL,
 CONSTRAINT [PK_Assessment System] PRIMARY KEY CLUSTERED 
(
	[AsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Assignment]    Script Date: 08/07/2022 6:48:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assignment](
	[AsnID] [varchar](50) NOT NULL,
	[Major] [varchar](50) NOT NULL,
	[Lecturer] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Assignment] PRIMARY KEY CLUSTERED 
(
	[AsnID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 08/07/2022 6:48:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CatID] [varchar](50) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Type] [varchar](50) NOT NULL,
	[Completion Criteria] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Classes]    Script Date: 08/07/2022 6:48:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Classes](
	[ClassID] [varchar](50) NOT NULL,
	[AsnID] [varchar](50) NOT NULL,
	[Semester] [varchar](50) NOT NULL,
	[Start Date] [date] NOT NULL,
	[End Date] [date] NOT NULL,
 CONSTRAINT [PK_Classes] PRIMARY KEY CLUSTERED 
(
	[ClassID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 08/07/2022 6:48:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[CouID] [varchar](50) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Courses] PRIMARY KEY CLUSTERED 
(
	[CouID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enroll]    Script Date: 08/07/2022 6:48:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enroll](
	[ClassID] [varchar](50) NOT NULL,
	[GrID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Enroll] PRIMARY KEY CLUSTERED 
(
	[ClassID] ASC,
	[GrID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grade]    Script Date: 08/07/2022 6:48:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grade](
	[Mssv] [varchar](50) NOT NULL,
	[AsID] [varchar](50) NOT NULL,
	[Score] [float] NOT NULL,
	[Date] [date] NOT NULL,
 CONSTRAINT [PK_Grade] PRIMARY KEY CLUSTERED 
(
	[Mssv] ASC,
	[AsID] ASC,
	[Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Groups]    Script Date: 08/07/2022 6:48:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Groups](
	[GrID] [varchar](50) NOT NULL,
	[Major] [varchar](50) NOT NULL,
	[Number of Students] [int] NOT NULL,
 CONSTRAINT [PK_Groups] PRIMARY KEY CLUSTERED 
(
	[GrID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Join]    Script Date: 08/07/2022 6:48:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Join](
	[Mssv] [varchar](50) NOT NULL,
	[GrID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Join] PRIMARY KEY CLUSTERED 
(
	[Mssv] ASC,
	[GrID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lecturers]    Script Date: 08/07/2022 6:48:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lecturers](
	[LecID] [varchar](50) NOT NULL,
	[Email] [varchar](150) NOT NULL,
	[First Name] [nvarchar](50) NOT NULL,
	[Last Name] [nvarchar](150) NOT NULL,
	[Gender] [bit] NOT NULL,
	[Date of Birth] [date] NOT NULL,
	[Report] [varchar](50) NULL,
 CONSTRAINT [PK_Lecturers] PRIMARY KEY CLUSTERED 
(
	[LecID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 08/07/2022 6:48:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[Mssv] [varchar](50) NOT NULL,
	[Email] [varchar](150) NOT NULL,
	[First Name] [nvarchar](50) NOT NULL,
	[Last Name] [nvarchar](150) NOT NULL,
	[Gender] [bit] NOT NULL,
	[Date of Birth] [date] NOT NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[Mssv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[View]    Script Date: 08/07/2022 6:48:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[View](
	[Mssv] [varchar](50) NOT NULL,
	[ClassID] [varchar](50) NOT NULL,
	[Average] [float] NOT NULL,
	[Status] [varchar](50) NOT NULL,
 CONSTRAINT [PK_View] PRIMARY KEY CLUSTERED 
(
	[Mssv] ASC,
	[ClassID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CEAAS1', N'FA21KCEA')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CEAAS1', N'SP22HCEA')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CEAAS1', N'SP22JCEA')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CEAAS1', N'SU21JCEA')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CEAAS2', N'FA21KCEA')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CEAAS2', N'SP22HCEA')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CEAAS2', N'SP22JCEA')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CEAAS2', N'SU21JCEA')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CEAFE', N'FA21KCEA')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CEAFE', N'SP22HCEA')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CEAFE', N'SP22JCEA')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CEAFE', N'SU21JCEA')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CEAPT1', N'FA21KCEA')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CEAPT1', N'SP22HCEA')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CEAPT1', N'SP22JCEA')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CEAPT1', N'SU21JCEA')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CEAPT2', N'FA21KCEA')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CEAPT2', N'SP22HCEA')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CEAPT2', N'SP22JCEA')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CEAPT2', N'SU21JCEA')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CSDAS', N'FA21ECSD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CSDAS', N'SP22ACSD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CSDAS', N'SP22BCSD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CSDAS', N'SP22ECSD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CSDAS', N'SU21ACSD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CSDFE', N'FA21ECSD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CSDFE', N'SP22ACSD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CSDFE', N'SP22BCSD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CSDFE', N'SP22ECSD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CSDFE', N'SU21ACSD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CSDLAB1', N'FA21ECSD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CSDLAB1', N'SP22ACSD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CSDLAB1', N'SP22BCSD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CSDLAB1', N'SP22ECSD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CSDLAB1', N'SU21ACSD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CSDLAB2', N'FA21ECSD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CSDLAB2', N'SP22ACSD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CSDLAB2', N'SP22BCSD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CSDLAB2', N'SP22ECSD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CSDLAB2', N'SU21ACSD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CSDPE', N'FA21ECSD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CSDPE', N'SP22ACSD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CSDPE', N'SP22BCSD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CSDPE', N'SP22ECSD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CSDPE', N'SU21ACSD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CSDPT', N'FA21ECSD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CSDPT', N'SP22ACSD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CSDPT', N'SP22BCSD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CSDPT', N'SP22ECSD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CSDPT', N'SU21ACSD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CSIAS1', N'FA21ICSI')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CSIAS1', N'SP22KCSI')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CSIAS1', N'SU21KCSI')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CSIAS2', N'FA21ICSI')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CSIAS2', N'SP22KCSI')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CSIAS2', N'SU21KCSI')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CSIFE', N'FA21ICSI')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CSIFE', N'SP22KCSI')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CSIFE', N'SU21KCSI')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CSILAB1', N'FA21ICSI')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CSILAB1', N'SP22KCSI')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CSILAB1', N'SU21KCSI')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CSILAB2', N'FA21ICSI')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CSILAB2', N'SP22KCSI')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CSILAB2', N'SU21KCSI')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CSIPT1', N'FA21ICSI')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CSIPT1', N'SP22KCSI')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CSIPT1', N'SU21KCSI')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CSIPT2', N'FA21ICSI')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CSIPT2', N'SP22KCSI')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'CSIPT2', N'SU21KCSI')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'DBIAS', N'FA21DDBI')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'DBIAS', N'SP22ADBI')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'DBIAS', N'SP22DDBI')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'DBIAS', N'SU21ADBI')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'DBIFE', N'FA21DDBI')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'DBIFE', N'SP22ADBI')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'DBIFE', N'SP22DDBI')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'DBIFE', N'SU21ADBI')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'DBILAB1', N'FA21DDBI')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'DBILAB1', N'SP22ADBI')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'DBILAB1', N'SP22DDBI')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'DBILAB1', N'SU21ADBI')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'DBILAB2', N'FA21DDBI')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'DBILAB2', N'SP22ADBI')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'DBILAB2', N'SP22DDBI')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'DBILAB2', N'SU21ADBI')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'DBIPT', N'FA21DDBI')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'DBIPT', N'SP22ADBI')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'DBIPT', N'SP22DDBI')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'DBIPT', N'SU21ADBI')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'IAOAS', N'FA21BIAO')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'IAOAS', N'SP22BIAO')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'IAOAS', N'SU21BIAO')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'IAOFE', N'FA21BIAO')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'IAOFE', N'SP22BIAO')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'IAOFE', N'SU21BIAO')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'IAOLAB1', N'FA21BIAO')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'IAOLAB1', N'SP22BIAO')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'IAOLAB1', N'SU21BIAO')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'IAOLAB2', N'FA21BIAO')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'IAOLAB2', N'SP22BIAO')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'IAOLAB2', N'SU21BIAO')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'IAOPT1', N'FA21BIAO')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'IAOPT1', N'SP22BIAO')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'IAOPT1', N'SU21BIAO')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'IAOPT2', N'FA21BIAO')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'IAOPT2', N'SP22BIAO')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'IAOPT2', N'SU21BIAO')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'JPDAS1', N'FA21FJPD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'JPDAS1', N'SP22FJPD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'JPDAS1', N'SP22GJPD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'JPDAS1', N'SU21FJPD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'JPDAS2', N'FA21FJPD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'JPDAS2', N'SP22FJPD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'JPDAS2', N'SP22GJPD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'JPDAS2', N'SU21FJPD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'JPDFE', N'FA21FJPD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'JPDFE', N'SP22FJPD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'JPDFE', N'SP22GJPD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'JPDFE', N'SU21FJPD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'JPDLAB1', N'FA21FJPD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'JPDLAB1', N'SP22FJPD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'JPDLAB1', N'SP22GJPD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'JPDLAB1', N'SU21FJPD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'JPDLAB2', N'FA21FJPD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'JPDLAB2', N'SP22FJPD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'JPDLAB2', N'SP22GJPD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'JPDLAB2', N'SU21FJPD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'JPDPT1', N'FA21FJPD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'JPDPT1', N'SP22FJPD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'JPDPT1', N'SP22GJPD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'JPDPT1', N'SU21FJPD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'JPDPT2', N'FA21FJPD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'JPDPT2', N'SP22FJPD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'JPDPT2', N'SP22GJPD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'JPDPT2', N'SU21FJPD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'LABLOC', N'FA21CLAB')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'LABLOC', N'SP22CLAB')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'LABLOC', N'SP22DLAB')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'LABLOC', N'SU21CLAB')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'MADAS1', N'FA21JMAD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'MADAS1', N'SP22JMAD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'MADAS1', N'SU21JMAD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'MADAS2', N'FA21JMAD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'MADAS2', N'SP22JMAD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'MADAS2', N'SU21JMAD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'MADFE', N'FA21JMAD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'MADFE', N'SP22JMAD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'MADFE', N'SU21JMAD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'MADLAB1', N'FA21JMAD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'MADLAB1', N'SP22JMAD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'MADLAB1', N'SU21JMAD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'MADLAB2', N'FA21JMAD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'MADLAB2', N'SP22JMAD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'MADLAB2', N'SU21JMAD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'MADPT1', N'FA21JMAD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'MADPT1', N'SP22JMAD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'MADPT1', N'SU21JMAD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'MADPT2', N'FA21JMAD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'MADPT2', N'SP22JMAD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'MADPT2', N'SU21JMAD')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'MAEAS1', N'FA21IMAE')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'MAEAS1', N'SP22IMAE')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'MAEAS1', N'SU21IMAE')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'MAEAS2', N'FA21IMAE')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'MAEAS2', N'SP22IMAE')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'MAEAS2', N'SU21IMAE')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'MAEFE', N'FA21IMAE')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'MAEFE', N'SP22IMAE')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'MAEFE', N'SU21IMAE')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'MAELAB1', N'FA21IMAE')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'MAELAB1', N'SP22IMAE')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'MAELAB1', N'SU21IMAE')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'MAELAB2', N'FA21IMAE')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'MAELAB2', N'SP22IMAE')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'MAELAB2', N'SU21IMAE')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'MAEPT1', N'FA21IMAE')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'MAEPT1', N'SP22IMAE')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'MAEPT1', N'SU21IMAE')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'MAEPT2', N'FA21IMAE')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'MAEPT2', N'SP22IMAE')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'MAEPT2', N'SU21IMAE')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'NWCAS', N'FA21BNWC')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'NWCAS', N'SP22BNWC')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'NWCAS', N'SU21BNWC')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'NWCFE', N'FA21BNWC')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'NWCFE', N'SP22BNWC')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'NWCFE', N'SU21BNWC')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'NWCLAB1', N'FA21BNWC')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'NWCLAB1', N'SP22BNWC')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'NWCLAB1', N'SU21BNWC')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'NWCLAB2', N'FA21BNWC')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'NWCLAB2', N'SP22BNWC')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'NWCLAB2', N'SU21BNWC')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'NWCPT1', N'FA21BNWC')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'NWCPT1', N'SP22BNWC')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'NWCPT1', N'SU21BNWC')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'NWCPT2', N'FA21BNWC')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'NWCPT2', N'SP22BNWC')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'NWCPT2', N'SU21BNWC')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'OSGAS', N'FA21HOSG')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'OSGAS', N'SP22HOSG')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'OSGAS', N'SU21HOSG')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'OSGFE', N'FA21HOSG')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'OSGFE', N'SP22HOSG')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'OSGFE', N'SU21HOSG')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'OSGLAB1', N'FA21HOSG')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'OSGLAB1', N'SP22HOSG')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'OSGLAB1', N'SU21HOSG')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'OSGLAB2', N'FA21HOSG')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'OSGLAB2', N'SP22HOSG')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'OSGLAB2', N'SU21HOSG')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'OSGPE', N'FA21HOSG')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'OSGPE', N'SP22HOSG')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'OSGPE', N'SU21HOSG')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'OSGPT', N'FA21HOSG')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'OSGPT', N'SP22HOSG')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'OSGPT', N'SU21HOSG')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'PRFAS', N'FA21HPRF')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'PRFAS', N'SP22HPRF')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'PRFAS', N'SU21HPRF')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'PRFFE', N'FA21HPRF')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'PRFFE', N'SP22HPRF')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'PRFFE', N'SU21HPRF')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'PRFLAB1', N'FA21HPRF')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'PRFLAB1', N'SP22HPRF')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'PRFLAB1', N'SU21HPRF')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'PRFLAB2', N'FA21HPRF')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'PRFLAB2', N'SP22HPRF')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'PRFLAB2', N'SU21HPRF')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'PRFPE', N'FA21HPRF')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'PRFPE', N'SP22HPRF')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'PRFPE', N'SU21HPRF')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'PRFPT', N'FA21HPRF')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'PRFPT', N'SP22HPRF')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'PRFPT', N'SU21HPRF')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'PROAS', N'FA21APRO')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'PROAS', N'SP22APRO')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'PROAS', N'SU21APRO')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'PROFE', N'FA21APRO')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'PROFE', N'SP22APRO')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'PROFE', N'SU21APRO')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'PROLAB1', N'FA21APRO')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'PROLAB1', N'SP22APRO')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'PROLAB1', N'SU21APRO')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'PROLAB2', N'FA21APRO')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'PROLAB2', N'SP22APRO')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'PROLAB2', N'SU21APRO')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'PROPE', N'FA21APRO')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'PROPE', N'SP22APRO')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'PROPE', N'SU21APRO')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'PROPT', N'FA21APRO')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'PROPT', N'SP22APRO')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'PROPT', N'SU21APRO')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'SSGAS1', N'FA21GSSG')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'SSGAS1', N'SP22FSSG')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'SSGAS1', N'SP22GSSG')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'SSGAS1', N'SU21FSSG')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'SSGAS2', N'FA21GSSG')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'SSGAS2', N'SP22FSSG')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'SSGAS2', N'SP22GSSG')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'SSGAS2', N'SU21FSSG')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'SSGFE', N'FA21GSSG')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'SSGFE', N'SP22FSSG')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'SSGFE', N'SP22GSSG')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'SSGFE', N'SU21FSSG')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'SSGPT1', N'FA21GSSG')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'SSGPT1', N'SP22FSSG')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'SSGPT1', N'SP22GSSG')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'SSGPT1', N'SU21FSSG')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'SSGPT2', N'FA21GSSG')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'SSGPT2', N'SP22FSSG')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'SSGPT2', N'SP22GSSG')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'SSGPT2', N'SU21FSSG')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'SSLFE', N'FA21ISSL')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'SSLFE', N'SP22ISSL')
GO
INSERT [dbo].[Assess] ([AsID], [ClassID]) VALUES (N'SSLFE', N'SU21ISSL')
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'CEAAS1', N'AS1', N'CEA201', 20, N'30 mins', 0.1)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'CEAAS2', N'AS2', N'CEA201', 20, N'30 mins', 0.1)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'CEAFE', N'FE', N'CEA201', 50, N'90 mins', 0.4)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'CEAPT1', N'PT1', N'CEA201', 30, N'60 mins', 0.2)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'CEAPT2', N'PT2', N'CEA201', 30, N'60 mins', 0.2)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'CSDAS', N'AS', N'CSD201', 25, N'30 mins', 0.1)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'CSDFE', N'FE', N'CSD201', 50, N'90 mins', 0.4)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'CSDLAB1', N'LAB1', N'CSD201', 10, N'30 mins', 0.05)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'CSDLAB2', N'LAB2', N'CSD201', 10, N'30 mins', 0.05)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'CSDPE', N'PE', N'CSD201', 15, N'90 mins', 0.3)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'CSDPT', N'PT', N'CSD201', 35, N'60 mins', 0.1)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'CSIAS1', N'AS1', N'CSI104', 20, N'30 mins', 0.05)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'CSIAS2', N'AS2', N'CSI104', 20, N'30 mins', 0.05)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'CSIFE', N'FE', N'CSI104', 60, N'90 mins', 0.4)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'CSILAB1', N'LAB1', N'CSI104', 10, N'30 mins', 0.1)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'CSILAB2', N'LAB2', N'CSI104', 10, N'30 mins', 0.1)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'CSIPT1', N'PT1', N'CSI104', 30, N'60 mins', 0.15)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'CSIPT2', N'PT2', N'CSI104', 30, N'60 mins', 0.15)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'DBIAS', N'AS', N'DBI202', 10, N'28 Slots', 0.2)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'DBIFE', N'FE', N'DBI202', 60, N'90 mins', 0.4)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'DBILAB1', N'LAB1', N'DBI202', 20, N'30 mins', 0.05)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'DBILAB2', N'LAB2', N'DBI202', 20, N'30 mins', 0.05)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'DBIPT', N'PT', N'DBI202', 40, N'60 mins', 0.3)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'IAOAS', N'AS', N'IAO202', 30, N'45 mins', 0.1)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'IAOFE', N'FE', N'IAO202', 60, N'90 mins', 0.4)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'IAOLAB1', N'LAB1', N'IAO202', 15, N'30 mins', 0.05)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'IAOLAB2', N'LAB2', N'IAO202', 15, N'30 mins', 0.05)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'IAOPT1', N'PT1', N'IAO202', 40, N'60 mins', 0.2)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'IAOPT2', N'PT2', N'IAO202', 40, N'60 mins', 0.2)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'JPDAS1', N'AS1', N'JPD113', 10, N'30 mins', 0.05)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'JPDAS2', N'AS2', N'JPD113', 10, N'30 mins', 0.05)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'JPDFE', N'FE', N'JPD113', 10, N'30 mins', 0.4)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'JPDLAB1', N'LAB1', N'JPD113', 15, N'30 mins', 0.05)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'JPDLAB2', N'LAB2', N'JPD113', 15, N'30 mins', 0.05)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'JPDPT1', N'PT1', N'JPD113', 30, N'60 mins', 0.2)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'JPDPT2', N'PT2', N'JPD113', 30, N'60 mins', 0.2)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'LABLOC', N'LOC', N'LAB211', 75, N'30 Slots', 1)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'MADAS1', N'AS1', N'MAD101', 10, N'30 mins', 0.05)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'MADAS2', N'AS2', N'MAD101', 10, N'30 mins', 0.05)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'MADFE', N'FE', N'MAD101', 10, N'30 mins', 0.4)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'MADLAB1', N'LAB1', N'MAD101', 15, N'30 mins', 0.05)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'MADLAB2', N'LAB2', N'MAD101', 15, N'30 mins', 0.05)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'MADPT1', N'PT1', N'MAD101', 30, N'60 mins', 0.2)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'MADPT2', N'PT2', N'MAD101', 30, N'60 mins', 0.2)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'MAEAS1', N'AS1', N'MAE101', 10, N'30 mins', 0.05)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'MAEAS2', N'AS2', N'MAE101', 10, N'30 mins', 0.05)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'MAEFE', N'FE', N'MAE101', 10, N'30 mins', 0.4)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'MAELAB1', N'LAB1', N'MAE101', 15, N'30 mins', 0.05)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'MAELAB2', N'LAB2', N'MAE101', 15, N'30 mins', 0.05)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'MAEPT1', N'PT1', N'MAE101', 30, N'60 mins', 0.2)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'MAEPT2', N'PT2', N'MAE101', 30, N'60 mins', 0.2)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'NWCAS', N'AS', N'NWC204', 30, N'45 mins', 0.1)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'NWCFE', N'FE', N'NWC204', 60, N'90 mins', 0.4)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'NWCLAB1', N'LAB1', N'NWC204', 15, N'30 mins', 0.05)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'NWCLAB2', N'LAB2', N'NWC204', 15, N'30 mins', 0.05)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'NWCPT1', N'PT1', N'NWC204', 40, N'60 mins', 0.2)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'NWCPT2', N'PT2', N'NWC204', 40, N'60 mins', 0.2)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'OSGAS', N'AS', N'OSG202', 25, N'30 mins', 0.1)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'OSGFE', N'FE', N'OSG202', 50, N'90 mins', 0.4)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'OSGLAB1', N'LAB1', N'OSG202', 10, N'30 mins', 0.05)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'OSGLAB2', N'LAB2', N'OSG202', 10, N'30 mins', 0.05)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'OSGPE', N'PE', N'OSG202', 15, N'90 mins', 0.3)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'OSGPT', N'PT', N'OSG202', 35, N'60 mins', 0.1)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'PRFAS', N'AS', N'PRF192', 25, N'30 mins', 0.1)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'PRFFE', N'FE', N'PRF192', 50, N'90 mins', 0.4)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'PRFLAB1', N'LAB1', N'PRF192', 10, N'30 mins', 0.05)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'PRFLAB2', N'LAB2', N'PRF192', 10, N'30 mins', 0.05)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'PRFPE', N'PE', N'PRF192', 15, N'90 mins', 0.3)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'PRFPT', N'PT', N'PRF192', 35, N'60 mins', 0.1)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'PROAS', N'AS', N'PRO192', 25, N'30 mins', 0.1)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'PROFE', N'FE', N'PRO192', 50, N'90 mins', 0.4)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'PROLAB1', N'LAB1', N'PRO192', 10, N'30 mins', 0.05)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'PROLAB2', N'LAB2', N'PRO192', 10, N'30 mins', 0.05)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'PROPE', N'PE', N'PRO192', 15, N'90 mins', 0.3)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'PROPT', N'PT', N'PRO192', 35, N'60 mins', 0.1)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'SSGAS1', N'AS1', N'SSG104', 20, N'30 mins', 0.1)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'SSGAS2', N'AS2', N'SSG104', 20, N'30 mins', 0.1)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'SSGFE', N'FE', N'SSG104', 50, N'90 mins', 0.4)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'SSGPT1', N'PT1', N'SSG104', 30, N'60 mins', 0.2)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'SSGPT2', N'PT2', N'SSG104', 30, N'60 mins', 0.2)
GO
INSERT [dbo].[Assessment System] ([AsID], [CatID], [CouID], [Number of Questions], [Duration], [Weight]) VALUES (N'SSLFE', N'FE', N'SSL101c', 50, N'90 mins', 0.4)
GO
INSERT [dbo].[Assignment] ([AsnID], [Major], [Lecturer]) VALUES (N'ACSD', N'CSD201', N'GVA')
GO
INSERT [dbo].[Assignment] ([AsnID], [Major], [Lecturer]) VALUES (N'ADBI', N'DBI202', N'GVA')
GO
INSERT [dbo].[Assignment] ([AsnID], [Major], [Lecturer]) VALUES (N'APRO', N'PRO192', N'GVA')
GO
INSERT [dbo].[Assignment] ([AsnID], [Major], [Lecturer]) VALUES (N'BCSD', N'CSD201', N'GVB')
GO
INSERT [dbo].[Assignment] ([AsnID], [Major], [Lecturer]) VALUES (N'BIAO', N'IAO202', N'GVB')
GO
INSERT [dbo].[Assignment] ([AsnID], [Major], [Lecturer]) VALUES (N'BNWC', N'NWC204', N'GVB')
GO
INSERT [dbo].[Assignment] ([AsnID], [Major], [Lecturer]) VALUES (N'CLAB', N'LAB211', N'GVC')
GO
INSERT [dbo].[Assignment] ([AsnID], [Major], [Lecturer]) VALUES (N'DDBI', N'DBI202', N'GVD')
GO
INSERT [dbo].[Assignment] ([AsnID], [Major], [Lecturer]) VALUES (N'DLAB', N'LAB211', N'GVD')
GO
INSERT [dbo].[Assignment] ([AsnID], [Major], [Lecturer]) VALUES (N'ECSD', N'CSD201', N'GVE')
GO
INSERT [dbo].[Assignment] ([AsnID], [Major], [Lecturer]) VALUES (N'EDBI', N'DBI202', N'GVE')
GO
INSERT [dbo].[Assignment] ([AsnID], [Major], [Lecturer]) VALUES (N'FJPD', N'JPD113', N'GVF')
GO
INSERT [dbo].[Assignment] ([AsnID], [Major], [Lecturer]) VALUES (N'FSSG', N'SSG104', N'GVF')
GO
INSERT [dbo].[Assignment] ([AsnID], [Major], [Lecturer]) VALUES (N'GJPD', N'JPD113', N'GVG')
GO
INSERT [dbo].[Assignment] ([AsnID], [Major], [Lecturer]) VALUES (N'GSSG', N'SSG104', N'GVG')
GO
INSERT [dbo].[Assignment] ([AsnID], [Major], [Lecturer]) VALUES (N'HCEA', N'CEA201', N'GVH')
GO
INSERT [dbo].[Assignment] ([AsnID], [Major], [Lecturer]) VALUES (N'HOSG', N'OSG202', N'GVH')
GO
INSERT [dbo].[Assignment] ([AsnID], [Major], [Lecturer]) VALUES (N'HPRF', N'PRF192', N'GVH')
GO
INSERT [dbo].[Assignment] ([AsnID], [Major], [Lecturer]) VALUES (N'ICSI', N'CSI104', N'GVI')
GO
INSERT [dbo].[Assignment] ([AsnID], [Major], [Lecturer]) VALUES (N'IMAE', N'MAE101', N'GVI')
GO
INSERT [dbo].[Assignment] ([AsnID], [Major], [Lecturer]) VALUES (N'ISSL', N'SSL101c', N'GVI')
GO
INSERT [dbo].[Assignment] ([AsnID], [Major], [Lecturer]) VALUES (N'JCEA', N'CEA201', N'GVJ')
GO
INSERT [dbo].[Assignment] ([AsnID], [Major], [Lecturer]) VALUES (N'JMAD', N'MAD101', N'GVJ')
GO
INSERT [dbo].[Assignment] ([AsnID], [Major], [Lecturer]) VALUES (N'JMAE', N'MAE101', N'GVJ')
GO
INSERT [dbo].[Assignment] ([AsnID], [Major], [Lecturer]) VALUES (N'KCEA', N'CEA201', N'GVK')
GO
INSERT [dbo].[Assignment] ([AsnID], [Major], [Lecturer]) VALUES (N'KCSI', N'CSI104', N'GVK')
GO
INSERT [dbo].[Categories] ([CatID], [Name], [Type], [Completion Criteria]) VALUES (N'AS', N'Assignment ', N'On-Going', N'>0')
GO
INSERT [dbo].[Categories] ([CatID], [Name], [Type], [Completion Criteria]) VALUES (N'AS1', N'Assignment 1', N'On-Going', N'>0')
GO
INSERT [dbo].[Categories] ([CatID], [Name], [Type], [Completion Criteria]) VALUES (N'AS2', N'Assignment 2', N'On-Going', N'>0')
GO
INSERT [dbo].[Categories] ([CatID], [Name], [Type], [Completion Criteria]) VALUES (N'FE', N'Final Exam', N'Final Exam', N'>4')
GO
INSERT [dbo].[Categories] ([CatID], [Name], [Type], [Completion Criteria]) VALUES (N'FER', N'Final Exam Retake', N'Final Exam', N'>4')
GO
INSERT [dbo].[Categories] ([CatID], [Name], [Type], [Completion Criteria]) VALUES (N'LAB', N'Lab', N'On-Going', N'>0')
GO
INSERT [dbo].[Categories] ([CatID], [Name], [Type], [Completion Criteria]) VALUES (N'LAB1', N'Lab 1', N'On-Going', N'>0')
GO
INSERT [dbo].[Categories] ([CatID], [Name], [Type], [Completion Criteria]) VALUES (N'LAB2', N'Lab 2', N'On-Going', N'>0')
GO
INSERT [dbo].[Categories] ([CatID], [Name], [Type], [Completion Criteria]) VALUES (N'LOC', N'Line of Code', N'On-Going', N'>=750')
GO
INSERT [dbo].[Categories] ([CatID], [Name], [Type], [Completion Criteria]) VALUES (N'PE', N'Practical Exam', N'On-Going', N'>0')
GO
INSERT [dbo].[Categories] ([CatID], [Name], [Type], [Completion Criteria]) VALUES (N'PT', N'Progress Test', N'On-Going', N'>0')
GO
INSERT [dbo].[Categories] ([CatID], [Name], [Type], [Completion Criteria]) VALUES (N'PT1', N'Progress Test 1', N'On-Going', N'>0')
GO
INSERT [dbo].[Categories] ([CatID], [Name], [Type], [Completion Criteria]) VALUES (N'PT2', N'Progress Test 2', N'On-Going', N'>0')
GO
INSERT [dbo].[Classes] ([ClassID], [AsnID], [Semester], [Start Date], [End Date]) VALUES (N'FA21APRO', N'APRO', N'FALL 2021', CAST(N'2021-09-01' AS Date), CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Classes] ([ClassID], [AsnID], [Semester], [Start Date], [End Date]) VALUES (N'FA21BIAO', N'BIAO', N'FALL 2021', CAST(N'2021-09-01' AS Date), CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Classes] ([ClassID], [AsnID], [Semester], [Start Date], [End Date]) VALUES (N'FA21BNWC', N'BNWC', N'FALL 2021', CAST(N'2021-09-01' AS Date), CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Classes] ([ClassID], [AsnID], [Semester], [Start Date], [End Date]) VALUES (N'FA21CLAB', N'CLAB', N'FALL 2021', CAST(N'2021-09-01' AS Date), CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Classes] ([ClassID], [AsnID], [Semester], [Start Date], [End Date]) VALUES (N'FA21DDBI', N'DDBI', N'FALL 2021', CAST(N'2021-09-01' AS Date), CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Classes] ([ClassID], [AsnID], [Semester], [Start Date], [End Date]) VALUES (N'FA21ECSD', N'ECSD', N'FALL 2021', CAST(N'2021-09-01' AS Date), CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Classes] ([ClassID], [AsnID], [Semester], [Start Date], [End Date]) VALUES (N'FA21FJPD', N'FJPD', N'FALL 2021', CAST(N'2021-09-01' AS Date), CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Classes] ([ClassID], [AsnID], [Semester], [Start Date], [End Date]) VALUES (N'FA21GSSG', N'GSSG', N'FALL 2021', CAST(N'2021-09-01' AS Date), CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Classes] ([ClassID], [AsnID], [Semester], [Start Date], [End Date]) VALUES (N'FA21HOSG', N'HOSG', N'FALL 2021', CAST(N'2021-09-01' AS Date), CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Classes] ([ClassID], [AsnID], [Semester], [Start Date], [End Date]) VALUES (N'FA21HPRF', N'HPRF', N'FALL 2021', CAST(N'2021-09-01' AS Date), CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Classes] ([ClassID], [AsnID], [Semester], [Start Date], [End Date]) VALUES (N'FA21ICSI', N'ICSI', N'FALL 2021', CAST(N'2021-09-01' AS Date), CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Classes] ([ClassID], [AsnID], [Semester], [Start Date], [End Date]) VALUES (N'FA21IMAE', N'IMAE', N'FALL 2021', CAST(N'2021-09-01' AS Date), CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Classes] ([ClassID], [AsnID], [Semester], [Start Date], [End Date]) VALUES (N'FA21ISSL', N'ISSL', N'FALL 2021', CAST(N'2021-09-01' AS Date), CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Classes] ([ClassID], [AsnID], [Semester], [Start Date], [End Date]) VALUES (N'FA21JMAD', N'JMAD', N'FALL 2021', CAST(N'2021-09-01' AS Date), CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Classes] ([ClassID], [AsnID], [Semester], [Start Date], [End Date]) VALUES (N'FA21KCEA', N'KCEA', N'FALL 2021', CAST(N'2021-09-01' AS Date), CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Classes] ([ClassID], [AsnID], [Semester], [Start Date], [End Date]) VALUES (N'SP22ACSD', N'ACSD', N'SPRING 2022', CAST(N'2022-01-01' AS Date), CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Classes] ([ClassID], [AsnID], [Semester], [Start Date], [End Date]) VALUES (N'SP22ADBI', N'ADBI', N'SPRING 2022', CAST(N'2022-01-01' AS Date), CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Classes] ([ClassID], [AsnID], [Semester], [Start Date], [End Date]) VALUES (N'SP22APRO', N'APRO', N'SPRING 2022', CAST(N'2022-01-01' AS Date), CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Classes] ([ClassID], [AsnID], [Semester], [Start Date], [End Date]) VALUES (N'SP22BCSD', N'BCSD', N'SPRING 2022', CAST(N'2022-01-01' AS Date), CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Classes] ([ClassID], [AsnID], [Semester], [Start Date], [End Date]) VALUES (N'SP22BIAO', N'BIAO', N'SPRING 2022', CAST(N'2022-01-01' AS Date), CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Classes] ([ClassID], [AsnID], [Semester], [Start Date], [End Date]) VALUES (N'SP22BNWC', N'BNWC', N'SPRING 2022', CAST(N'2022-01-01' AS Date), CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Classes] ([ClassID], [AsnID], [Semester], [Start Date], [End Date]) VALUES (N'SP22CLAB', N'CLAB', N'SPRING 2022', CAST(N'2022-01-01' AS Date), CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Classes] ([ClassID], [AsnID], [Semester], [Start Date], [End Date]) VALUES (N'SP22DDBI', N'DDBI', N'SPRING 2022', CAST(N'2022-01-01' AS Date), CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Classes] ([ClassID], [AsnID], [Semester], [Start Date], [End Date]) VALUES (N'SP22DLAB', N'DLAB', N'SPRING 2022', CAST(N'2022-01-01' AS Date), CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Classes] ([ClassID], [AsnID], [Semester], [Start Date], [End Date]) VALUES (N'SP22ECSD', N'ECSD', N'SPRING 2022', CAST(N'2022-01-01' AS Date), CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Classes] ([ClassID], [AsnID], [Semester], [Start Date], [End Date]) VALUES (N'SP22FJPD', N'FJPD', N'SPRING 2022', CAST(N'2022-01-01' AS Date), CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Classes] ([ClassID], [AsnID], [Semester], [Start Date], [End Date]) VALUES (N'SP22FSSG', N'FSSG', N'SPRING 2022', CAST(N'2022-01-01' AS Date), CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Classes] ([ClassID], [AsnID], [Semester], [Start Date], [End Date]) VALUES (N'SP22GJPD', N'GJPD', N'SPRING 2022', CAST(N'2022-01-01' AS Date), CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Classes] ([ClassID], [AsnID], [Semester], [Start Date], [End Date]) VALUES (N'SP22GSSG', N'GSSG', N'SPRING 2022', CAST(N'2022-01-01' AS Date), CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Classes] ([ClassID], [AsnID], [Semester], [Start Date], [End Date]) VALUES (N'SP22HCEA', N'HCEA', N'SPRING 2022', CAST(N'2022-01-01' AS Date), CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Classes] ([ClassID], [AsnID], [Semester], [Start Date], [End Date]) VALUES (N'SP22HOSG', N'HOSG', N'SPRING 2022', CAST(N'2022-01-01' AS Date), CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Classes] ([ClassID], [AsnID], [Semester], [Start Date], [End Date]) VALUES (N'SP22HPRF', N'HPRF', N'SPRING 2022', CAST(N'2022-01-01' AS Date), CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Classes] ([ClassID], [AsnID], [Semester], [Start Date], [End Date]) VALUES (N'SP22IMAE', N'IMAE', N'SPRING 2022', CAST(N'2022-01-01' AS Date), CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Classes] ([ClassID], [AsnID], [Semester], [Start Date], [End Date]) VALUES (N'SP22ISSL', N'ISSL', N'SPRING 2022', CAST(N'2022-01-01' AS Date), CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Classes] ([ClassID], [AsnID], [Semester], [Start Date], [End Date]) VALUES (N'SP22JCEA', N'JCEA', N'SPRING 2022', CAST(N'2022-01-01' AS Date), CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Classes] ([ClassID], [AsnID], [Semester], [Start Date], [End Date]) VALUES (N'SP22JMAD', N'JMAD', N'SPRING 2022', CAST(N'2022-01-01' AS Date), CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Classes] ([ClassID], [AsnID], [Semester], [Start Date], [End Date]) VALUES (N'SP22KCSI', N'KCSI', N'SPRING 2022', CAST(N'2022-01-01' AS Date), CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Classes] ([ClassID], [AsnID], [Semester], [Start Date], [End Date]) VALUES (N'SU21ACSD', N'ACSD', N'SUMMER 2021', CAST(N'2021-05-01' AS Date), CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Classes] ([ClassID], [AsnID], [Semester], [Start Date], [End Date]) VALUES (N'SU21ADBI', N'ADBI', N'SUMMER 2021', CAST(N'2021-05-01' AS Date), CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Classes] ([ClassID], [AsnID], [Semester], [Start Date], [End Date]) VALUES (N'SU21APRO', N'APRO', N'SUMMER 2021', CAST(N'2021-05-01' AS Date), CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Classes] ([ClassID], [AsnID], [Semester], [Start Date], [End Date]) VALUES (N'SU21BIAO', N'BIAO', N'SUMMER 2021', CAST(N'2021-05-01' AS Date), CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Classes] ([ClassID], [AsnID], [Semester], [Start Date], [End Date]) VALUES (N'SU21BNWC', N'BNWC', N'SUMMER 2021', CAST(N'2021-05-01' AS Date), CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Classes] ([ClassID], [AsnID], [Semester], [Start Date], [End Date]) VALUES (N'SU21CLAB', N'CLAB', N'SUMMER 2021', CAST(N'2021-05-01' AS Date), CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Classes] ([ClassID], [AsnID], [Semester], [Start Date], [End Date]) VALUES (N'SU21FJPD', N'FJPD', N'SUMMER 2021', CAST(N'2021-05-01' AS Date), CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Classes] ([ClassID], [AsnID], [Semester], [Start Date], [End Date]) VALUES (N'SU21FSSG', N'FSSG', N'SUMMER 2021', CAST(N'2021-05-01' AS Date), CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Classes] ([ClassID], [AsnID], [Semester], [Start Date], [End Date]) VALUES (N'SU21HOSG', N'HOSG', N'SUMMER 2021', CAST(N'2021-05-01' AS Date), CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Classes] ([ClassID], [AsnID], [Semester], [Start Date], [End Date]) VALUES (N'SU21HPRF', N'HPRF', N'SUMMER 2021', CAST(N'2021-05-01' AS Date), CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Classes] ([ClassID], [AsnID], [Semester], [Start Date], [End Date]) VALUES (N'SU21IMAE', N'IMAE', N'SUMMER 2021', CAST(N'2021-05-01' AS Date), CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Classes] ([ClassID], [AsnID], [Semester], [Start Date], [End Date]) VALUES (N'SU21ISSL', N'ISSL', N'SUMMER 2021', CAST(N'2021-05-01' AS Date), CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Classes] ([ClassID], [AsnID], [Semester], [Start Date], [End Date]) VALUES (N'SU21JCEA', N'JCEA', N'SUMMER 2021', CAST(N'2021-05-01' AS Date), CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Classes] ([ClassID], [AsnID], [Semester], [Start Date], [End Date]) VALUES (N'SU21JMAD', N'JMAD', N'SUMMER 2021', CAST(N'2021-05-01' AS Date), CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Classes] ([ClassID], [AsnID], [Semester], [Start Date], [End Date]) VALUES (N'SU21KCSI', N'KCSI', N'SUMMER 2021', CAST(N'2021-05-01' AS Date), CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Courses] ([CouID], [Name]) VALUES (N'CEA201', N'Computer Organization and Architecture')
GO
INSERT [dbo].[Courses] ([CouID], [Name]) VALUES (N'CSD201', N'Data Structures and Algorithms')
GO
INSERT [dbo].[Courses] ([CouID], [Name]) VALUES (N'CSI104', N'Introduction to Computer Science')
GO
INSERT [dbo].[Courses] ([CouID], [Name]) VALUES (N'DBI202', N'Introduction to Databases')
GO
INSERT [dbo].[Courses] ([CouID], [Name]) VALUES (N'IAO202', N'Introduction to Information Assurance')
GO
INSERT [dbo].[Courses] ([CouID], [Name]) VALUES (N'JPD113', N'Elementary Japanese 1')
GO
INSERT [dbo].[Courses] ([CouID], [Name]) VALUES (N'LAB211', N'OOP with Java Lab')
GO
INSERT [dbo].[Courses] ([CouID], [Name]) VALUES (N'MAD101', N'Discrete mathematics')
GO
INSERT [dbo].[Courses] ([CouID], [Name]) VALUES (N'MAE101', N'Mathematics for Engineering')
GO
INSERT [dbo].[Courses] ([CouID], [Name]) VALUES (N'NWC204', N'Computer Networking')
GO
INSERT [dbo].[Courses] ([CouID], [Name]) VALUES (N'OSG202', N'Operating Systems')
GO
INSERT [dbo].[Courses] ([CouID], [Name]) VALUES (N'PRF192', N'Programming Fundamentals')
GO
INSERT [dbo].[Courses] ([CouID], [Name]) VALUES (N'PRO192', N'Object-Oriented Programming')
GO
INSERT [dbo].[Courses] ([CouID], [Name]) VALUES (N'SSG104', N'Communication and In-Group Working Skills')
GO
INSERT [dbo].[Courses] ([CouID], [Name]) VALUES (N'SSL101c', N'Academic Skills for University Success')
GO
INSERT [dbo].[Enroll] ([ClassID], [GrID]) VALUES (N'FA21APRO', N'IA1604')
GO
INSERT [dbo].[Enroll] ([ClassID], [GrID]) VALUES (N'FA21BIAO', N'IOT1607')
GO
INSERT [dbo].[Enroll] ([ClassID], [GrID]) VALUES (N'FA21BNWC', N'IA1604')
GO
INSERT [dbo].[Enroll] ([ClassID], [GrID]) VALUES (N'FA21CLAB', N'IOT1607')
GO
INSERT [dbo].[Enroll] ([ClassID], [GrID]) VALUES (N'FA21DDBI', N'IOT1607')
GO
INSERT [dbo].[Enroll] ([ClassID], [GrID]) VALUES (N'FA21ECSD', N'IOT1607')
GO
INSERT [dbo].[Enroll] ([ClassID], [GrID]) VALUES (N'FA21FJPD', N'IOT1607')
GO
INSERT [dbo].[Enroll] ([ClassID], [GrID]) VALUES (N'FA21HOSG', N'IA1604')
GO
INSERT [dbo].[Enroll] ([ClassID], [GrID]) VALUES (N'FA21HPRF', N'IA1608')
GO
INSERT [dbo].[Enroll] ([ClassID], [GrID]) VALUES (N'FA21ICSI', N'IA1608')
GO
INSERT [dbo].[Enroll] ([ClassID], [GrID]) VALUES (N'FA21IMAE', N'IA1608')
GO
INSERT [dbo].[Enroll] ([ClassID], [GrID]) VALUES (N'FA21ISSL', N'IA1608')
GO
INSERT [dbo].[Enroll] ([ClassID], [GrID]) VALUES (N'FA21JMAD', N'IA1604')
GO
INSERT [dbo].[Enroll] ([ClassID], [GrID]) VALUES (N'FA21KCEA', N'IA1608')
GO
INSERT [dbo].[Enroll] ([ClassID], [GrID]) VALUES (N'SP22ADBI', N'IA1604')
GO
INSERT [dbo].[Enroll] ([ClassID], [GrID]) VALUES (N'SP22APRO', N'IA1608')
GO
INSERT [dbo].[Enroll] ([ClassID], [GrID]) VALUES (N'SP22BCSD', N'IA1604')
GO
INSERT [dbo].[Enroll] ([ClassID], [GrID]) VALUES (N'SP22BIAO', N'IA1604')
GO
INSERT [dbo].[Enroll] ([ClassID], [GrID]) VALUES (N'SP22BNWC', N'IA1608')
GO
INSERT [dbo].[Enroll] ([ClassID], [GrID]) VALUES (N'SP22CLAB', N'IA1604')
GO
INSERT [dbo].[Enroll] ([ClassID], [GrID]) VALUES (N'SP22FJPD', N'IA1604')
GO
INSERT [dbo].[Enroll] ([ClassID], [GrID]) VALUES (N'SP22GSSG', N'IA1608')
GO
INSERT [dbo].[Enroll] ([ClassID], [GrID]) VALUES (N'SP22HOSG', N'IA1608')
GO
INSERT [dbo].[Enroll] ([ClassID], [GrID]) VALUES (N'SP22HPRF', N'AI1605')
GO
INSERT [dbo].[Enroll] ([ClassID], [GrID]) VALUES (N'SP22IMAE', N'AI1605')
GO
INSERT [dbo].[Enroll] ([ClassID], [GrID]) VALUES (N'SP22ISSL', N'AI1605')
GO
INSERT [dbo].[Enroll] ([ClassID], [GrID]) VALUES (N'SP22JCEA', N'AI1605')
GO
INSERT [dbo].[Enroll] ([ClassID], [GrID]) VALUES (N'SP22JMAD', N'IA1608')
GO
INSERT [dbo].[Enroll] ([ClassID], [GrID]) VALUES (N'SP22KCSI', N'AI1605')
GO
INSERT [dbo].[Enroll] ([ClassID], [GrID]) VALUES (N'SU21HPRF', N'IA1604')
GO
INSERT [dbo].[Enroll] ([ClassID], [GrID]) VALUES (N'SU21IMAE', N'IA1604')
GO
INSERT [dbo].[Enroll] ([ClassID], [GrID]) VALUES (N'SU21ISSL', N'IA1604')
GO
INSERT [dbo].[Enroll] ([ClassID], [GrID]) VALUES (N'SU21JCEA', N'IA1604')
GO
INSERT [dbo].[Enroll] ([ClassID], [GrID]) VALUES (N'SU21KCSI', N'IA1604')
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'CEAAS1', 6, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'CEAAS2', 5, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'CEAFE', 7, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'CEAPT1', 8.6, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'CEAPT2', 1.2, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'CSDAS', 9.4, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'CSDFE', 8, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'CSDLAB1', 7.5, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'CSDLAB2', 6, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'CSDPE', 8, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'CSDPT', 8.5, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'CSIAS1', 7, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'CSIAS2', 9, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'CSIFE', 10, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'CSILAB1', 10, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'CSILAB2', 0.5, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'CSIPT1', 8, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'CSIPT2', 9, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'DBIAS', 9.5, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'DBIFE', 10, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'DBILAB1', 9.6, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'DBILAB2', 7.5, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'DBIPT', 8.8, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'IAOAS', 9.6, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'IAOFE', 5.8, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'IAOLAB1', 8, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'IAOLAB2', 9, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'IAOPT1', 7, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'IAOPT2', 6.6, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'JPDAS1', 8, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'JPDAS2', 9, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'JPDFE', 10, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'JPDLAB1', 8.9, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'JPDLAB2', 9.7, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'JPDPT1', 9.5, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'JPDPT2', 8, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'LABLOC', 750, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'MADAS1', 7.8, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'MADAS2', 8.5, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'MADFE', 9, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'MADLAB1', 9.7, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'MADLAB2', 5.6, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'MADPT1', 7.8, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'MADPT2', 9.8, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'MAEAS1', 10, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'MAEAS2', 6.4, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'MAEFE', 2.5, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'MAELAB1', 7.4, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'MAELAB2', 7.8, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'MAEPT1', 9.2, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'MAEPT2', 5.7, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'NWCAS', 10, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'NWCFE', 9, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'NWCLAB1', 8.5, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'NWCLAB2', 7.6, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'NWCPT1', 8.6, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'NWCPT2', 7.8, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'OSGAS', 9.4, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'OSGFE', 7.8, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'OSGLAB1', 8.2, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'OSGLAB2', 6.8, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'OSGPE', 7.2, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'OSGPT', 8.2, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'PRFAS', 3.3, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'PRFFE', 8.6, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'PRFLAB1', 4.5, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'PRFLAB2', 7.5, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'PRFPE', 8.6, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'PRFPT', 8.7, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'PROAS', 10, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'PROFE', 9, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'PROLAB1', 9.4, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'PROLAB2', 7.5, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'PROPE', 8.5, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'PROPT', 6.5, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00001', N'SSLFE', 8.9, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'CEAAS1', 6.5, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'CEAAS2', 7.2, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'CEAFE', 8.7, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'CEAPT1', 9.6, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'CEAPT2', 6.3, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'CSDAS', 3.7, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'CSDFE', 4.5, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'CSDLAB1', 3.3, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'CSDLAB2', 2.6, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'CSDPE', 3.3, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'CSDPT', 4.4, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'CSIAS1', 7.5, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'CSIAS2', 6.3, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'CSIFE', 7.5, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'CSILAB1', 5.7, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'CSILAB2', 8.3, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'CSIPT1', 9.4, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'CSIPT2', 7.7, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'DBIAS', 5.8, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'DBIFE', 2.7, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'DBILAB1', 5.6, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'DBILAB2', 2.5, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'DBIPT', 4.4, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'IAOAS', 1.3, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'IAOFE', 3.2, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'IAOLAB1', 4.1, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'IAOLAB2', 8.8, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'IAOPT1', 2.9, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'IAOPT2', 1.8, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'JPDAS1', 2.8, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'JPDAS2', 4.6, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'JPDFE', 5.2, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'JPDLAB1', 3.2, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'JPDLAB2', 5.3, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'JPDPT1', 2.3, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'JPDPT2', 5.6, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'LABLOC', 120, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'MADAS1', 6.6, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'MADAS2', 7.2, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'MADFE', 6.6, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'MADLAB1', 8.4, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'MADLAB2', 7.8, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'MADPT1', 6.6, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'MADPT2', 7.4, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'MAEAS1', 5.9, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'MAEAS2', 6.8, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'MAEFE', 7.6, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'MAELAB1', 6.5, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'MAELAB2', 7.6, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'MAEPT1', 6.8, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'MAEPT2', 9.2, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'NWCAS', 8.4, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'NWCFE', 6.8, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'NWCLAB1', 7.5, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'NWCLAB2', 9.7, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'NWCPT1', 8.4, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'NWCPT2', 6.3, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'OSGAS', 7.6, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'OSGFE', 8.3, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'OSGLAB1', 6.7, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'OSGLAB2', 7.9, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'OSGPE', 6.8, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'OSGPT', 9.5, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'PRFAS', 9.4, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'PRFFE', 6.6, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'PRFLAB1', 5.2, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'PRFLAB2', 8.2, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'PRFPE', 7.7, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'PRFPT', 5.3, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'PROAS', 8.6, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'PROFE', 8.8, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'PROLAB1', 6.7, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'PROLAB2', 8.6, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'PROPE', 7.9, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'PROPT', 8.5, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00002', N'SSLFE', 9.6, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'CEAAS1', 9.2, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'CEAAS2', 8.3, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'CEAFE', 7.4, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'CEAPT1', 7.5, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'CEAPT2', 8, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'CSDAS', 8.7, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'CSDFE', 7.5, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'CSDLAB1', 7.3, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'CSDLAB2', 8.6, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'CSDPE', 9.3, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'CSDPT', 9.4, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'CSIAS1', 8.6, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'CSIAS2', 9.7, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'CSIFE', 8.8, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'CSILAB1', 7.6, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'CSILAB2', 8.3, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'CSIPT1', 9.3, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'CSIPT2', 7, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'DBIAS', 8.8, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'DBIFE', 8.7, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'DBILAB1', 8.6, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'DBILAB2', 9.5, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'DBIPT', 8.4, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'IAOAS', 8.3, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'IAOFE', 9.2, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'IAOLAB1', 9.1, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'IAOLAB2', 8.8, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'IAOPT1', 9.9, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'IAOPT2', 9.8, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'JPDAS1', 8.8, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'JPDAS2', 8.6, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'JPDFE', 7.2, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'JPDLAB1', 7.2, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'JPDLAB2', 9.3, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'JPDPT1', 8.3, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'JPDPT2', 7.6, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'LABLOC', 900, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'MADAS1', 5.1, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'MADAS2', 7.2, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'MADFE', 7.3, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'MADLAB1', 6.2, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'MADLAB2', 5.5, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'MADPT1', 3.2, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'MADPT2', 3.4, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'MAEAS1', 9.4, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'MAEAS2', 9.3, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'MAEFE', 9.2, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'MAELAB1', 9.1, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'MAELAB2', 8, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'MAEPT1', 8.9, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'MAEPT2', 9.8, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'NWCAS', 2.2, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'NWCFE', 3.5, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'NWCLAB1', 3.8, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'NWCLAB2', 5.3, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'NWCPT1', 3.3, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'NWCPT2', 5.1, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'OSGAS', 4.2, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'OSGFE', 3.3, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'OSGLAB1', 3.1, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'OSGLAB2', 6.5, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'OSGPE', 5.6, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'OSGPT', 4.1, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'PRFAS', 9.7, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'PRFFE', 8.6, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'PRFLAB1', 9.5, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'PRFLAB2', 7.4, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'PRFPE', 9.3, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'PRFPT', 9.2, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'PROAS', 6.7, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'PROFE', 5.3, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'PROLAB1', 4.8, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'PROLAB2', 6.1, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'PROPE', 5.2, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'PROPT', 4.1, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00003', N'SSLFE', 9.1, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'CEAAS1', 4.3, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'CEAAS2', 2.4, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'CEAFE', 3.6, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'CEAPT1', 4.5, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'CEAPT2', 5.4, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'CSDAS', 6.7, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'CSDFE', 6.5, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'CSDLAB1', 5.3, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'CSDLAB2', 5.6, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'CSDPE', 7.3, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'CSDPT', 6.4, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'CSIAS1', 6.6, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'CSIAS2', 3.4, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'CSIFE', 4.8, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'CSILAB1', 2.7, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'CSILAB2', 7.6, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'CSIPT1', 5.4, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'CSIPT2', 4.6, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'DBIAS', 6.8, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'DBIFE', 5.7, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'DBILAB1', 5.6, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'DBILAB2', 6.5, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'DBIPT', 7.4, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'IAOAS', 6.3, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'IAOFE', 7.2, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'IAOLAB1', 7.1, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'IAOLAB2', 7.8, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'IAOPT1', 6.9, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'IAOPT2', 5.8, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'JPDAS1', 4.8, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'JPDAS2', 5.6, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'JPDFE', 7.2, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'JPDLAB1', 7.2, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'JPDLAB2', 7.3, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'JPDPT1', 6.3, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'JPDPT2', 5.6, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'LABLOC', 800, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'MADAS1', 7.6, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'MADAS2', 5.2, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'MADFE', 8.3, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'MADLAB1', 9.2, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'MADLAB2', 6.5, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'MADPT1', 8.2, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'MADPT2', 4.4, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'MAEAS1', 6.6, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'MAEAS2', 4.5, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'MAEFE', 6.4, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'MAELAB1', 7.3, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'MAELAB2', 4.3, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'MAEPT1', 5.4, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'MAEPT2', 6.5, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'NWCAS', 7.2, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'NWCFE', 8.5, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'NWCLAB1', 9.8, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'NWCLAB2', 7.3, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'NWCPT1', 6.3, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'NWCPT2', 6.1, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'OSGAS', 7.2, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'OSGFE', 8.3, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'OSGLAB1', 9.1, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'OSGLAB2', 6.5, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'OSGPE', 6.6, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'OSGPT', 8.1, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'PRFAS', 3.6, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'PRFFE', 6.4, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'PRFLAB1', 2.6, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'PRFLAB2', 6.5, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'PRFPE', 7.4, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'PRFPT', 6.6, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'PROAS', 7.7, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'PROFE', 9.3, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'PROLAB1', 6.8, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'PROLAB2', 7.1, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'PROPE', 8.2, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'PROPT', 7.1, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00004', N'SSLFE', 7.5, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'CEAAS1', 4.3, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'CEAAS2', 7.4, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'CEAFE', 3.6, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'CEAPT1', 7.5, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'CEAPT2', 6.4, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'CSDAS', 6.7, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'CSDFE', 9.5, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'CSDLAB1', 8.3, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'CSDLAB2', 8.6, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'CSDPE', 6.3, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'CSDPT', 5.4, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'CSIAS1', 6.6, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'CSIAS2', 8.4, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'CSIFE', 7.8, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'CSILAB1', 6.7, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'CSILAB2', 8.6, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'CSIPT1', 6.4, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'CSIPT2', 4.6, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'DBIAS', 5.8, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'DBIFE', 4.7, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'DBILAB1', 8.6, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'DBILAB2', 6.5, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'DBIPT', 7.4, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'IAOAS', 6.3, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'IAOFE', 6.2, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'IAOLAB1', 5.1, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'IAOLAB2', 6.8, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'IAOPT1', 8.9, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'IAOPT2', 7.8, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'JPDAS1', 8.8, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'JPDAS2', 7.6, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'JPDFE', 8.9, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'JPDLAB1', 8.2, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'JPDLAB2', 8.3, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'JPDPT1', 7.3, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'JPDPT2', 6.6, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'LABLOC', 850, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'MADAS1', 7.6, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'MADAS2', 5.2, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'MADFE', 6.3, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'MADLAB1', 6.2, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'MADLAB2', 6.5, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'MADPT1', 8.2, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'MADPT2', 8.4, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'MAEAS1', 7.6, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'MAEAS2', 6.5, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'MAEFE', 6.4, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'MAELAB1', 7.3, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'MAELAB2', 4.3, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'MAEPT1', 5.4, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'MAEPT2', 6.5, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'NWCAS', 7.2, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'NWCFE', 5.5, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'NWCLAB1', 9.8, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'NWCLAB2', 7.3, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'NWCPT1', 5.3, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'NWCPT2', 5.1, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'OSGAS', 7.2, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'OSGFE', 8.3, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'OSGLAB1', 5.1, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'OSGLAB2', 3.5, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'OSGPE', 4.6, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'OSGPT', 6.1, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'PRFAS', 3.6, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'PRFFE', 6.4, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'PRFLAB1', 2.6, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'PRFLAB2', 6.5, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'PRFPE', 7.4, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'PRFPT', 6.6, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'PROAS', 5.7, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'PROFE', 7.3, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'PROLAB1', 5.8, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'PROLAB2', 6.1, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'PROPE', 8.2, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'PROPT', 7.1, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00005', N'SSLFE', 7.5, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'CEAAS1', 7.3, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'CEAAS2', 7.4, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'CEAFE', 8.6, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'CEAPT1', 7.5, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'CEAPT2', 6.4, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'CSDAS', 6.7, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'CSDFE', 6.5, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'CSDLAB1', 5.3, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'CSDLAB2', 4.6, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'CSDPE', 6.3, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'CSDPT', 5.4, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'CSIAS1', 6.6, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'CSIAS2', 8.4, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'CSIFE', 7.8, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'CSILAB1', 6.7, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'CSILAB2', 8.6, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'CSIPT1', 6.4, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'CSIPT2', 8.6, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'DBIAS', 5.8, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'DBIFE', 4.7, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'DBILAB1', 7.6, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'DBILAB2', 6.5, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'DBIPT', 7.4, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'IAOAS', 6.3, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'IAOFE', 6.2, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'IAOLAB1', 5.1, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'IAOLAB2', 6.8, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'IAOPT1', 5.9, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'IAOPT2', 6.8, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'JPDAS1', 6.8, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'JPDAS2', 5.6, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'JPDFE', 4.9, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'JPDLAB1', 6.2, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'JPDLAB2', 5.3, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'JPDPT1', 6.3, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'JPDPT2', 6.6, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'LABLOC', 450, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'MADAS1', 7.6, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'MADAS2', 7.2, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'MADFE', 7.3, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'MADLAB1', 8.2, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'MADLAB2', 8.5, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'MADPT1', 8.2, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'MADPT2', 6.4, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'MAEAS1', 7.6, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'MAEAS2', 6.5, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'MAEFE', 6.4, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'MAELAB1', 7.3, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'MAELAB2', 8.3, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'MAEPT1', 8.4, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'MAEPT2', 6.5, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'NWCAS', 7.2, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'NWCFE', 7.5, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'NWCLAB1', 8.8, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'NWCLAB2', 7.3, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'NWCPT1', 7.3, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'NWCPT2', 7.1, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'OSGAS', 7.2, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'OSGFE', 8.3, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'OSGLAB1', 8.1, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'OSGLAB2', 8.5, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'OSGPE', 7.6, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'OSGPT', 7.1, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'PRFAS', 7.6, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'PRFFE', 7.4, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'PRFLAB1', 8.6, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'PRFLAB2', 8.5, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'PRFPE', 7.4, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'PRFPT', 7.6, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'PROAS', 7.7, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'PROFE', 7.3, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'PROLAB1', 7.8, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'PROLAB2', 7.1, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'PROPE', 8.2, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'PROPT', 8.1, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00006', N'SSLFE', 7.5, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'CEAAS1', 7.2405028115691259, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'CEAAS2', 7.4, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'CEAFE', 8.6, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'CEAPT1', 7.5, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'CEAPT2', 6.4, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'CSDAS', 6.7, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'CSDFE', 6.5, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'CSDLAB1', 5.3, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'CSDLAB2', 4.6, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'CSDPE', 6.3, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'CSDPT', 5.4, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'CSIAS1', 6.6, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'CSIAS2', 8.4, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'CSIFE', 7.8, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'CSILAB1', 6.7, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'CSILAB2', 8.6, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'CSIPT1', 6.4, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'CSIPT2', 8.6, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'DBIAS', 5.8, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'DBIFE', 4.7, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'DBILAB1', 7.6, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'DBILAB2', 6.5, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'DBIPT', 7.4, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'IAOAS', 6.3, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'IAOFE', 6.2, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'IAOLAB1', 5.1, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'IAOLAB2', 6.8, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'IAOPT1', 5.9, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'IAOPT2', 6.8, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'JPDAS1', 6.8, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'JPDAS2', 5.6, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'JPDFE', 4.9, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'JPDLAB1', 6.2, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'JPDLAB2', 5.3, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'JPDPT1', 6.3, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'JPDPT2', 6.6, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'LABLOC', 450, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'MADAS1', 7.6, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'MADAS2', 7.2, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'MADFE', 7.3, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'MADLAB1', 8.2, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'MADLAB2', 8.5, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'MADPT1', 8.2, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'MADPT2', 6.4, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'MAEAS1', 7.6, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'MAEAS2', 6.5, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'MAEFE', 6.4, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'MAELAB1', 7.3, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'MAELAB2', 8.3, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'MAEPT1', 8.4, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'MAEPT2', 6.5, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'NWCAS', 7.2, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'NWCFE', 7.5, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'NWCLAB1', 8.8, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'NWCLAB2', 7.3, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'NWCPT1', 7.3, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'NWCPT2', 7.1, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'OSGAS', 7.2, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'OSGFE', 8.3, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'OSGLAB1', 8.1, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'OSGLAB2', 8.5, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'OSGPE', 7.6, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'OSGPT', 7.1, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'PRFAS', 7.6, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'PRFFE', 7.4, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'PRFLAB1', 8.6, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'PRFLAB2', 8.5, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'PRFPE', 7.4, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'PRFPT', 7.6, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'PROAS', 7.7, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'PROFE', 7.3, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'PROLAB1', 7.8, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'PROLAB2', 7.1, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'PROPE', 8.2, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'PROPT', 8.1, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00007', N'SSLFE', 7.5, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'CEAAS1', 8.92, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'CEAAS2', 8.18, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'CEAFE', 9.86, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'CEAPT1', 8.43, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'CEAPT2', 5.45, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'CSDAS', 9.77, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'CSDFE', 6.92, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'CSDLAB1', 5.3, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'CSDLAB2', 7.87, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'CSDPE', 9.36, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'CSDPT', 9.12, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'CSIAS1', 6.09, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'CSIAS2', 6.99, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'CSIFE', 7.01, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'CSILAB1', 9.88, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'CSILAB2', 8.29, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'CSIPT1', 8.13, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'CSIPT2', 7.1, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'DBIAS', 5.9, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'DBIFE', 9.95, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'DBILAB1', 7.55, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'DBILAB2', 9.07, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'DBIPT', 8.52, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'IAOAS', 5.63, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'IAOFE', 5.12, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'IAOLAB1', 7.46, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'IAOLAB2', 7.76, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'IAOPT1', 8.05, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'IAOPT2', 6.3, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'JPDAS1', 7.99, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'JPDAS2', 6.46, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'JPDFE', 8.42, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'JPDLAB1', 5.95, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'JPDLAB2', 9.66, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'JPDPT1', 6.82, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'JPDPT2', 9.96, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'LABLOC', 750, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'MADAS1', 9.22, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'MADAS2', 9.27, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'MADFE', 7.72, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'MADLAB1', 8.6, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'MADLAB2', 6.39, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'MADPT1', 9.18, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'MADPT2', 5.48, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'MAEAS1', 5.77, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'MAEAS2', 5.61, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'MAEFE', 6.16, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'MAELAB1', 7.29, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'MAELAB2', 7.5, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'MAEPT1', 7.97, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'MAEPT2', 5, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'NWCAS', 6.77, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'NWCFE', 8.2, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'NWCLAB1', 7.42, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'NWCLAB2', 7.9, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'NWCPT1', 9.75, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'NWCPT2', 8.25, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'OSGAS', 5.85, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'OSGFE', 8.77, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'OSGLAB1', 8.34, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'OSGLAB2', 6.12, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'OSGPE', 7.55, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'OSGPT', 5.62, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'PRFAS', 9.55, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'PRFFE', 9.13, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'PRFLAB1', 7.08, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'PRFLAB2', 6.68, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'PRFPE', 7.62, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'PRFPT', 9.51, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'PROAS', 9.38, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'PROFE', 8.64, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'PROLAB1', 6.72, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'PROLAB2', 7.3, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'PROPE', 5.9, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'PROPT', 8.5, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00008', N'SSLFE', 9.98, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'CEAAS1', 7.87, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'CEAAS2', 7.94, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'CEAFE', 5.48, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'CEAPT1', 9.2, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'CEAPT2', 9.13, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'CSDAS', 9.81, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'CSDFE', 9.14, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'CSDLAB1', 7.77, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'CSDLAB2', 8.54, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'CSDPE', 9.06, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'CSDPT', 8.66, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'CSIAS1', 8.87, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'CSIAS2', 8.07, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'CSIFE', 8.15, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'CSILAB1', 6.52, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'CSILAB2', 6.3, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'CSIPT1', 6.03, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'CSIPT2', 6.63, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'DBIAS', 5.17, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'DBIFE', 8.05, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'DBILAB1', 9.09, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'DBILAB2', 6.25, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'DBIPT', 8.85, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'IAOAS', 6.86, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'IAOFE', 7.76, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'IAOLAB1', 9.1, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'IAOLAB2', 9.43, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'IAOPT1', 9.98, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'IAOPT2', 5.69, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'JPDAS1', 5.95, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'JPDAS2', 6.1, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'JPDFE', 6.57, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'JPDLAB1', 6.26, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'JPDLAB2', 5.26, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'JPDPT1', 6.3, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'JPDPT2', 8.46, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'LABLOC', 750, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'MADAS1', 6.85, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'MADAS2', 8.28, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'MADFE', 9.23, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'MADLAB1', 5.53, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'MADLAB2', 9.76, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'MADPT1', 6.17, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'MADPT2', 9.68, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'MAEAS1', 8.87, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'MAEAS2', 5.43, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'MAEFE', 5.31, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'MAELAB1', 6.95, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'MAELAB2', 7.92, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'MAEPT1', 9.13, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'MAEPT2', 9.31, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'NWCAS', 6.58, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'NWCFE', 6.02, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'NWCLAB1', 9.2, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'NWCLAB2', 7.65, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'NWCPT1', 9.39, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'NWCPT2', 6.15, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'OSGAS', 9.36, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'OSGFE', 9.47, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'OSGLAB1', 6.36, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'OSGLAB2', 6.09, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'OSGPE', 7.24, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'OSGPT', 8.28, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'PRFAS', 6.61, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'PRFFE', 5.14, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'PRFLAB1', 6.85, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'PRFLAB2', 6.45, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'PRFPE', 8.7, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'PRFPT', 9.78, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'PROAS', 6.95, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'PROFE', 5.81, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'PROLAB1', 5.07, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'PROLAB2', 7.23, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'PROPE', 6.27, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'PROPT', 8.98, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00009', N'SSLFE', 6.7, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'CEAAS1', 5.83, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'CEAAS2', 9.24, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'CEAFE', 6.05, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'CEAPT1', 8.94, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'CEAPT2', 7.21, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'CSDAS', 5.24, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'CSDFE', 9.52, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'CSDLAB1', 6.07, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'CSDLAB2', 6.87, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'CSDPE', 6.02, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'CSDPT', 8.59, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'CSIAS1', 5.03, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'CSIAS2', 8.59, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'CSIFE', 9.18, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'CSILAB1', 6.57, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'CSILAB2', 8.74, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'CSIPT1', 6.39, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'CSIPT2', 5.79, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'DBIAS', 9.26, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'DBIFE', 9.9, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'DBILAB1', 8.06, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'DBILAB2', 9.08, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'DBIPT', 6.48, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'IAOAS', 6.68, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'IAOFE', 5.7, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'IAOLAB1', 5.37, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'IAOLAB2', 7.94, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'IAOPT1', 6.88, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'IAOPT2', 6.11, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'JPDAS1', 7.96, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'JPDAS2', 9, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'JPDFE', 7.3, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'JPDLAB1', 7.92, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'JPDLAB2', 5.48, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'JPDPT1', 8.04, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'JPDPT2', 5.65, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'LABLOC', 750, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'MADAS1', 7.37, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'MADAS2', 6.82, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'MADFE', 8.04, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'MADLAB1', 7.9, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'MADLAB2', 8, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'MADPT1', 8.47, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'MADPT2', 6.32, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'MAEAS1', 5.88, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'MAEAS2', 7.77, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'MAEFE', 9.67, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'MAELAB1', 7.11, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'MAELAB2', 9.94, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'MAEPT1', 5.47, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'MAEPT2', 5.87, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'NWCAS', 9.48, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'NWCFE', 7.46, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'NWCLAB1', 6.34, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'NWCLAB2', 7.23, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'NWCPT1', 9.49, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'NWCPT2', 7.34, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'OSGAS', 7.58, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'OSGFE', 8.94, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'OSGLAB1', 7.03, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'OSGLAB2', 7.1, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'OSGPE', 9.46, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'OSGPT', 6.27, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'PRFAS', 8.1, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'PRFFE', 6.19, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'PRFLAB1', 6.69, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'PRFLAB2', 7.14, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'PRFPE', 5.31, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'PRFPT', 6.81, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'PROAS', 6.82, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'PROFE', 6.97, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'PROLAB1', 8.59, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'PROLAB2', 7.59, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'PROPE', 8.92, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'PROPT', 6.03, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00010', N'SSLFE', 8.36, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'CEAAS1', 7.13, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'CEAAS2', 5.34, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'CEAFE', 5.39, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'CEAPT1', 5.79, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'CEAPT2', 9.92, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'CSDAS', 6.98, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'CSDFE', 7.44, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'CSDLAB1', 6.78, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'CSDLAB2', 6.49, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'CSDPE', 9.51, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'CSDPT', 5.37, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'CSIAS1', 8.42, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'CSIAS2', 7.29, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'CSIFE', 5.79, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'CSILAB1', 8.54, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'CSILAB2', 6.62, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'CSIPT1', 5.19, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'CSIPT2', 9.54, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'DBIAS', 8.71, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'DBIFE', 8.44, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'DBILAB1', 7.13, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'DBILAB2', 8.44, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'DBIPT', 8.48, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'IAOAS', 9.97, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'IAOFE', 5.92, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'IAOLAB1', 9.84, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'IAOLAB2', 9.01, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'IAOPT1', 9.27, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'IAOPT2', 5.84, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'JPDAS1', 9.43, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'JPDAS2', 6.01, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'JPDFE', 9.1, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'JPDLAB1', 9.26, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'JPDLAB2', 6.23, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'JPDPT1', 5.2, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'JPDPT2', 7.22, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'LABLOC', 950, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'MADAS1', 7.79, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'MADAS2', 6.77, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'MADFE', 7.46, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'MADLAB1', 7, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'MADLAB2', 7.38, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'MADPT1', 5.23, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'MADPT2', 7.52, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'MAEAS1', 7.33, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'MAEAS2', 5.92, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'MAEFE', 6.4, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'MAELAB1', 6.03, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'MAELAB2', 9.12, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'MAEPT1', 8.06, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'MAEPT2', 5.27, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'NWCAS', 8.36, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'NWCFE', 9.23, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'NWCLAB1', 5.42, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'NWCLAB2', 9.32, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'NWCPT1', 6.56, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'NWCPT2', 8.06, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'OSGAS', 7.17, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'OSGFE', 6.79, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'OSGLAB1', 7.05, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'OSGLAB2', 7.81, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'OSGPE', 9.74, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'OSGPT', 7.78, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'PRFAS', 6.11, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'PRFFE', 5.43, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'PRFLAB1', 8.09, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'PRFLAB2', 6.19, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'PRFPE', 7.26, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'PRFPT', 7.55, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'PROAS', 7.42, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'PROFE', 9.82, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'PROLAB1', 6.28, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'PROLAB2', 9.42, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'PROPE', 8.48, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'PROPT', 7.88, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00011', N'SSLFE', 9.06, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'CEAAS1', 8.31, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'CEAAS2', 6.64, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'CEAFE', 7.61, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'CEAPT1', 6.89, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'CEAPT2', 7.44, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'CSDAS', 5.8, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'CSDFE', 8.18, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'CSDLAB1', 7.77, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'CSDLAB2', 8.58, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'CSDPE', 6.99, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'CSDPT', 9.03, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'CSIAS1', 9.7, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'CSIAS2', 9.62, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'CSIFE', 5.71, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'CSILAB1', 7.05, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'CSILAB2', 8.61, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'CSIPT1', 8.54, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'CSIPT2', 6.36, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'DBIAS', 9.22, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'DBIFE', 6.21, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'DBILAB1', 5.21, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'DBILAB2', 7.64, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'DBIPT', 6.36, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'IAOAS', 6.59, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'IAOFE', 6.82, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'IAOLAB1', 5.6, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'IAOLAB2', 5.1, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'IAOPT1', 9.29, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'IAOPT2', 6.28, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'JPDAS1', 5.62, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'JPDAS2', 8.72, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'JPDFE', 7.31, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'JPDLAB1', 6.75, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'JPDLAB2', 5.9, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'JPDPT1', 7.62, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'JPDPT2', 9.72, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'LABLOC', 550, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'MADAS1', 9.26, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'MADAS2', 5.98, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'MADFE', 7.87, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'MADLAB1', 6.65, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'MADLAB2', 8.67, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'MADPT1', 8.48, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'MADPT2', 6.2, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'MAEAS1', 7.13, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'MAEAS2', 9.4, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'MAEFE', 9.05, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'MAELAB1', 9.99, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'MAELAB2', 5.13, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'MAEPT1', 9.64, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'MAEPT2', 6.48, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'NWCAS', 5.58, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'NWCFE', 7.9, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'NWCLAB1', 7.91, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'NWCLAB2', 8.4, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'NWCPT1', 6.22, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'NWCPT2', 9.75, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'OSGAS', 5.48, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'OSGFE', 9.7, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'OSGLAB1', 6.29, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'OSGLAB2', 5.82, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'OSGPE', 9.93, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'OSGPT', 6.05, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'PRFAS', 8.53, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'PRFFE', 6.4, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'PRFLAB1', 9.99, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'PRFLAB2', 9.04, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'PRFPE', 8.76, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'PRFPT', 7.3, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'PROAS', 9.46, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'PROFE', 5.24, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'PROLAB1', 5.57, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'PROLAB2', 5.37, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'PROPE', 6.2, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'PROPT', 7.33, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00012', N'SSLFE', 9.18, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'CEAAS1', 5.08, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'CEAAS2', 7.54, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'CEAFE', 8.04, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'CEAPT1', 7.51, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'CEAPT2', 7.13, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'CSDAS', 6.84, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'CSDFE', 9.09, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'CSDLAB1', 6.29, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'CSDLAB2', 9.31, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'CSDPE', 9.32, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'CSDPT', 5.54, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'CSIAS1', 5.48, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'CSIAS2', 7.3, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'CSIFE', 7.96, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'CSILAB1', 5.33, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'CSILAB2', 9.58, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'CSIPT1', 7.7, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'CSIPT2', 6.5, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'DBIAS', 5.84, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'DBIFE', 8.12, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'DBILAB1', 5.42, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'DBILAB2', 7.19, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'DBIPT', 9.25, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'IAOAS', 6.45, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'IAOFE', 5.05, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'IAOLAB1', 7.5, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'IAOLAB2', 6.92, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'IAOPT1', 7.54, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'IAOPT2', 6.06, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'JPDAS1', 8.27, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'JPDAS2', 8.78, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'JPDFE', 5.62, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'JPDLAB1', 6.6, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'JPDLAB2', 6.39, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'JPDPT1', 9.77, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'JPDPT2', 6.33, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'LABLOC', 1000, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'MADAS1', 7.4, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'MADAS2', 7.29, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'MADFE', 9.77, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'MADLAB1', 7.66, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'MADLAB2', 7.12, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'MADPT1', 8.96, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'MADPT2', 5.15, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'MAEAS1', 5.45, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'MAEAS2', 7.44, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'MAEFE', 8.65, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'MAELAB1', 8.13, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'MAELAB2', 7.15, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'MAEPT1', 8.16, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'MAEPT2', 7.52, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'NWCAS', 6.43, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'NWCFE', 6.27, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'NWCLAB1', 9.28, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'NWCLAB2', 6.93, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'NWCPT1', 8.64, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'NWCPT2', 9.76, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'OSGAS', 8.62, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'OSGFE', 8.01, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'OSGLAB1', 7.23, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'OSGLAB2', 8.05, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'OSGPE', 9.11, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'OSGPT', 6.57, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'PRFAS', 6.58, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'PRFFE', 5.69, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'PRFLAB1', 6.04, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'PRFLAB2', 5.28, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'PRFPE', 5.57, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'PRFPT', 6.12, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'PROAS', 5.66, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'PROFE', 6.56, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'PROLAB1', 5.28, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'PROLAB2', 9.57, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'PROPE', 7.13, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'PROPT', 8.88, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00013', N'SSLFE', 7.48, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'CEAAS1', 5.37, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'CEAAS2', 9.15, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'CEAFE', 5.02, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'CEAPT1', 7.17, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'CEAPT2', 5.16, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'CSDAS', 9.66, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'CSDFE', 7.2, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'CSDLAB1', 9.5, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'CSDLAB2', 6.6, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'CSDPE', 5.17, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'CSDPT', 7.43, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'CSIAS1', 7.34, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'CSIAS2', 5.98, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'CSIFE', 5.86, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'CSILAB1', 6.54, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'CSILAB2', 9.68, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'CSIPT1', 7.57, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'CSIPT2', 6.68, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'DBIAS', 6.58, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'DBIFE', 9.51, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'DBILAB1', 9.79, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'DBILAB2', 5.42, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'DBIPT', 9.77, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'IAOAS', 5.01, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'IAOFE', 5.82, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'IAOLAB1', 8.82, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'IAOLAB2', 5.93, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'IAOPT1', 7.88, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'IAOPT2', 5.4, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'JPDAS1', 5.36, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'JPDAS2', 5.86, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'JPDFE', 8.2, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'JPDLAB1', 9.47, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'JPDLAB2', 7.79, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'JPDPT1', 7.42, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'JPDPT2', 6.38, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'LABLOC', 800, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'MADAS1', 9.4, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'MADAS2', 9.24, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'MADFE', 5.57, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'MADLAB1', 6.37, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'MADLAB2', 6.93, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'MADPT1', 5.09, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'MADPT2', 9.47, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'MAEAS1', 8.98, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'MAEAS2', 7.77, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'MAEFE', 6.05, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'MAELAB1', 9, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'MAELAB2', 5.93, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'MAEPT1', 5.86, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'MAEPT2', 5.08, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'NWCAS', 9.97, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'NWCFE', 5.92, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'NWCLAB1', 7.74, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'NWCLAB2', 7.12, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'NWCPT1', 7.99, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'NWCPT2', 9.93, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'OSGAS', 7.82, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'OSGFE', 9.81, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'OSGLAB1', 5.25, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'OSGLAB2', 6.74, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'OSGPE', 8.78, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'OSGPT', 8.02, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'PRFAS', 5.57, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'PRFFE', 9.64, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'PRFLAB1', 5.25, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'PRFLAB2', 6.58, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'PRFPE', 6.75, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'PRFPT', 8.75, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'PROAS', 7.69, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'PROFE', 5.75, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'PROLAB1', 6.4, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'PROLAB2', 7.42, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'PROPE', 7.71, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'PROPT', 5.21, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00014', N'SSLFE', 8.35, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'CEAAS1', 9.28, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'CEAAS2', 6.02, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'CEAFE', 8.84, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'CEAPT1', 8.39, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'CEAPT2', 9.75, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'CSDAS', 7.73, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'CSDFE', 7.9, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'CSDLAB1', 8.33, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'CSDLAB2', 5.69, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'CSDPE', 7.12, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'CSDPT', 9.67, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'CSIAS1', 6.97, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'CSIAS2', 8.21, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'CSIFE', 6.3, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'CSILAB1', 9.98, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'CSILAB2', 7.07, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'CSIPT1', 5.51, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'CSIPT2', 9.05, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'DBIAS', 9.98, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'DBIFE', 8.89, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'DBILAB1', 6.94, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'DBILAB2', 7.7, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'DBIPT', 8.77, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'IAOAS', 9.85, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'IAOFE', 7.98, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'IAOLAB1', 9.59, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'IAOLAB2', 7.59, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'IAOPT1', 7.29, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'IAOPT2', 5.24, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'JPDAS1', 7.52, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'JPDAS2', 7, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'JPDFE', 8.56, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'JPDLAB1', 6.12, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'JPDLAB2', 9.74, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'JPDPT1', 6.67, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'JPDPT2', 9.16, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'LABLOC', 800, CAST(N'2022-04-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'MADAS1', 9.45, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'MADAS2', 6.6, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'MADFE', 9.7, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'MADLAB1', 6.24, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'MADLAB2', 7.4, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'MADPT1', 5.55, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'MADPT2', 7.37, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'MAEAS1', 5.48, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'MAEAS2', 9.78, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'MAEFE', 6.38, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'MAELAB1', 7.11, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'MAELAB2', 8.22, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'MAEPT1', 9.44, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'MAEPT2', 8.72, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'NWCAS', 9.03, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'NWCFE', 6.65, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'NWCLAB1', 5.23, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'NWCLAB2', 8.71, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'NWCPT1', 5.89, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'NWCPT2', 7.88, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'OSGAS', 9.71, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'OSGFE', 5.22, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'OSGLAB1', 9.48, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'OSGLAB2', 6.01, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'OSGPE', 8.58, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'OSGPT', 9.65, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'PRFAS', 9.33, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'PRFFE', 6.57, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'PRFLAB1', 5.65, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'PRFLAB2', 9.01, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'PRFPE', 6.95, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'PRFPT', 5.9, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'PROAS', 8.6, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'PROFE', 9.56, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'PROLAB1', 8.62, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'PROLAB2', 7.63, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'PROPE', 9.94, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'PROPT', 7.23, CAST(N'2021-12-01' AS Date))
GO
INSERT [dbo].[Grade] ([Mssv], [AsID], [Score], [Date]) VALUES (N'HE00015', N'SSLFE', 9.06, CAST(N'2021-08-01' AS Date))
GO
INSERT [dbo].[Groups] ([GrID], [Major], [Number of Students]) VALUES (N'AI1605', N'Artificial Intelligence', 15)
GO
INSERT [dbo].[Groups] ([GrID], [Major], [Number of Students]) VALUES (N'IA1604', N'Information Assurance', 15)
GO
INSERT [dbo].[Groups] ([GrID], [Major], [Number of Students]) VALUES (N'IA1608', N'Information Assurance', 10)
GO
INSERT [dbo].[Groups] ([GrID], [Major], [Number of Students]) VALUES (N'IOT1607', N'Internet of Things', 15)
GO
INSERT [dbo].[Groups] ([GrID], [Major], [Number of Students]) VALUES (N'SE1606', N'Software Engineering', 20)
GO
INSERT [dbo].[Groups] ([GrID], [Major], [Number of Students]) VALUES (N'SE1609', N'Software Engineering', 20)
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00001', N'IA1604')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00001', N'IOT1607')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00001', N'SE1609')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00002', N'IA1604')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00002', N'IOT1607')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00003', N'IA1604')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00003', N'IOT1607')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00004', N'IA1604')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00004', N'IOT1607')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00005', N'IA1604')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00005', N'IOT1607')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00006', N'IA1604')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00006', N'IA1608')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00007', N'IA1604')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00007', N'IA1608')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00008', N'IA1604')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00008', N'IA1608')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00009', N'IA1604')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00009', N'IA1608')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00010', N'IA1604')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00010', N'IA1608')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00010', N'SE1609')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00011', N'IA1604')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00011', N'IOT1607')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00011', N'SE1609')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00012', N'IA1604')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00012', N'IOT1607')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00012', N'SE1609')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00013', N'IA1604')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00013', N'IOT1607')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00014', N'IA1604')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00014', N'IOT1607')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00015', N'IA1604')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00015', N'IOT1607')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00016', N'AI1605')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00016', N'IA1608')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00017', N'AI1605')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00017', N'IA1608')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00018', N'AI1605')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00018', N'IA1608')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00019', N'AI1605')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00019', N'IA1608')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00020', N'AI1605')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00020', N'IA1608')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00021', N'AI1605')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00021', N'IOT1607')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00022', N'AI1605')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00022', N'IOT1607')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00022', N'SE1609')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00023', N'AI1605')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00023', N'IOT1607')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00023', N'SE1609')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00024', N'AI1605')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00024', N'IOT1607')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00025', N'AI1605')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00025', N'IOT1607')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00026', N'AI1605')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00027', N'AI1605')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00028', N'AI1605')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00029', N'AI1605')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00030', N'AI1605')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00031', N'SE1606')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00032', N'SE1606')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00033', N'SE1606')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00033', N'SE1609')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00034', N'SE1606')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00034', N'SE1609')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00035', N'SE1606')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00036', N'SE1606')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00036', N'SE1609')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00037', N'SE1606')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00037', N'SE1609')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00038', N'SE1606')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00038', N'SE1609')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00039', N'SE1606')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00039', N'SE1609')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00040', N'SE1606')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00040', N'SE1609')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00041', N'SE1606')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00042', N'SE1606')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00043', N'SE1606')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00044', N'SE1606')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00044', N'SE1609')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00045', N'SE1606')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00045', N'SE1609')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00046', N'SE1606')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00046', N'SE1609')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00047', N'SE1606')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00047', N'SE1609')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00048', N'SE1606')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00048', N'SE1609')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00049', N'SE1606')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00049', N'SE1609')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00050', N'SE1606')
GO
INSERT [dbo].[Join] ([Mssv], [GrID]) VALUES (N'HE00050', N'SE1609')
GO
INSERT [dbo].[Lecturers] ([LecID], [Email], [First Name], [Last Name], [Gender], [Date of Birth], [Report]) VALUES (N'GVA', N'gva@fe.edu.vn', N'A', N'Giảng Viên', 1, CAST(N'1985-01-01' AS Date), NULL)
GO
INSERT [dbo].[Lecturers] ([LecID], [Email], [First Name], [Last Name], [Gender], [Date of Birth], [Report]) VALUES (N'GVB', N'gvb@fe.edu.vn', N'B', N'Giảng Viên', 0, CAST(N'1985-01-02' AS Date), N'GVA')
GO
INSERT [dbo].[Lecturers] ([LecID], [Email], [First Name], [Last Name], [Gender], [Date of Birth], [Report]) VALUES (N'GVC', N'gvc@fe.edu.vn', N'C', N'Giảng Viên', 1, CAST(N'1985-01-03' AS Date), N'GVA')
GO
INSERT [dbo].[Lecturers] ([LecID], [Email], [First Name], [Last Name], [Gender], [Date of Birth], [Report]) VALUES (N'GVD', N'gvd@fe.edu.vn', N'D', N'Giảng Viên', 0, CAST(N'1985-01-04' AS Date), N'GVA')
GO
INSERT [dbo].[Lecturers] ([LecID], [Email], [First Name], [Last Name], [Gender], [Date of Birth], [Report]) VALUES (N'GVE', N'gve@fe.edu.vn', N'E', N'Giảng Viên', 1, CAST(N'1985-01-05' AS Date), N'GVA')
GO
INSERT [dbo].[Lecturers] ([LecID], [Email], [First Name], [Last Name], [Gender], [Date of Birth], [Report]) VALUES (N'GVF', N'gvf@fe.edu.vn', N'F', N'Giảng Viên', 0, CAST(N'1985-01-06' AS Date), NULL)
GO
INSERT [dbo].[Lecturers] ([LecID], [Email], [First Name], [Last Name], [Gender], [Date of Birth], [Report]) VALUES (N'GVG', N'gvg@fe.edu.vn', N'G', N'Giảng Viên', 1, CAST(N'1985-01-07' AS Date), N'GVF')
GO
INSERT [dbo].[Lecturers] ([LecID], [Email], [First Name], [Last Name], [Gender], [Date of Birth], [Report]) VALUES (N'GVH', N'gvh@fe.edu.vn', N'H', N'Giảng Viên', 0, CAST(N'1985-01-08' AS Date), NULL)
GO
INSERT [dbo].[Lecturers] ([LecID], [Email], [First Name], [Last Name], [Gender], [Date of Birth], [Report]) VALUES (N'GVI', N'gvi@fe.edu.vn', N'I', N'Giảng Viên', 1, CAST(N'1985-01-09' AS Date), N'GVH')
GO
INSERT [dbo].[Lecturers] ([LecID], [Email], [First Name], [Last Name], [Gender], [Date of Birth], [Report]) VALUES (N'GVJ', N'gvj@fe.edu.vn', N'J', N'Giảng Viên', 0, CAST(N'1985-01-10' AS Date), N'GVH')
GO
INSERT [dbo].[Lecturers] ([LecID], [Email], [First Name], [Last Name], [Gender], [Date of Birth], [Report]) VALUES (N'GVK', N'gvk@fe.edu.vn', N'K', N'Giảng Viên', 1, CAST(N'1985-01-11' AS Date), N'GVH')
GO
INSERT [dbo].[Students] ([Mssv], [Email], [First Name], [Last Name], [Gender], [Date of Birth]) VALUES (N'HE00001', N'anv@fpt.edu.vn', N'A', N'Nguyễn Văn', 1, CAST(N'2002-01-01' AS Date))
GO
INSERT [dbo].[Students] ([Mssv], [Email], [First Name], [Last Name], [Gender], [Date of Birth]) VALUES (N'HE00002', N'bnv@fpt.edu.vn', N'B', N'Nguyễn Văn', 1, CAST(N'2002-01-02' AS Date))
GO
INSERT [dbo].[Students] ([Mssv], [Email], [First Name], [Last Name], [Gender], [Date of Birth]) VALUES (N'HE00003', N'cnv@fpt.edu.vn', N'C', N'Nguyễn Văn', 1, CAST(N'2002-01-13' AS Date))
GO
INSERT [dbo].[Students] ([Mssv], [Email], [First Name], [Last Name], [Gender], [Date of Birth]) VALUES (N'HE00004', N'dnv@fpt.edu.vn', N'D', N'Nguyễn Văn', 1, CAST(N'2002-01-04' AS Date))
GO
INSERT [dbo].[Students] ([Mssv], [Email], [First Name], [Last Name], [Gender], [Date of Birth]) VALUES (N'HE00005', N'env@fpt.edu.vn', N'E', N'Nguyễn Văn', 1, CAST(N'2002-01-05' AS Date))
GO
INSERT [dbo].[Students] ([Mssv], [Email], [First Name], [Last Name], [Gender], [Date of Birth]) VALUES (N'HE00006', N'fnv@fpt.edu.vn', N'F', N'Nguyễn Văn', 1, CAST(N'2002-01-06' AS Date))
GO
INSERT [dbo].[Students] ([Mssv], [Email], [First Name], [Last Name], [Gender], [Date of Birth]) VALUES (N'HE00007', N'gnv@fpt.edu.vn', N'G', N'Nguyễn Văn', 1, CAST(N'2002-01-07' AS Date))
GO
INSERT [dbo].[Students] ([Mssv], [Email], [First Name], [Last Name], [Gender], [Date of Birth]) VALUES (N'HE00008', N'hnv@fpt.edu.vn', N'H', N'Nguyễn Văn', 1, CAST(N'2002-01-08' AS Date))
GO
INSERT [dbo].[Students] ([Mssv], [Email], [First Name], [Last Name], [Gender], [Date of Birth]) VALUES (N'HE00009', N'inv@fpt.edu.vn', N'I', N'Nguyễn Văn', 1, CAST(N'2002-01-09' AS Date))
GO
INSERT [dbo].[Students] ([Mssv], [Email], [First Name], [Last Name], [Gender], [Date of Birth]) VALUES (N'HE00010', N'jnv@fpt.edu.vn', N'J', N'Nguyễn Văn', 1, CAST(N'2002-01-10' AS Date))
GO
INSERT [dbo].[Students] ([Mssv], [Email], [First Name], [Last Name], [Gender], [Date of Birth]) VALUES (N'HE00011', N'knv@fpt.edu.vn', N'K', N'Nguyễn Văn', 1, CAST(N'2002-01-11' AS Date))
GO
INSERT [dbo].[Students] ([Mssv], [Email], [First Name], [Last Name], [Gender], [Date of Birth]) VALUES (N'HE00012', N'lnv@fpt.edu.vn', N'L', N'Nguyễn Văn', 1, CAST(N'2002-01-12' AS Date))
GO
INSERT [dbo].[Students] ([Mssv], [Email], [First Name], [Last Name], [Gender], [Date of Birth]) VALUES (N'HE00013', N'mnv@fpt.edu.vn', N'M', N'Nguyễn Văn', 1, CAST(N'2002-01-13' AS Date))
GO
INSERT [dbo].[Students] ([Mssv], [Email], [First Name], [Last Name], [Gender], [Date of Birth]) VALUES (N'HE00014', N'nnv@fpt.edu.vn', N'N', N'Nguyễn Văn', 1, CAST(N'2002-01-14' AS Date))
GO
INSERT [dbo].[Students] ([Mssv], [Email], [First Name], [Last Name], [Gender], [Date of Birth]) VALUES (N'HE00015', N'mnv@fpt.edu.vn', N'O', N'Nguyễn Văn', 1, CAST(N'2002-01-15' AS Date))
GO
INSERT [dbo].[Students] ([Mssv], [Email], [First Name], [Last Name], [Gender], [Date of Birth]) VALUES (N'HE00016', N'pnv@fpt.edu.vn', N'P', N'Nguyễn Văn', 1, CAST(N'2002-01-16' AS Date))
GO
INSERT [dbo].[Students] ([Mssv], [Email], [First Name], [Last Name], [Gender], [Date of Birth]) VALUES (N'HE00017', N'qnv@fpt.edu.vn', N'Q', N'Nguyễn Văn', 1, CAST(N'2002-01-17' AS Date))
GO
INSERT [dbo].[Students] ([Mssv], [Email], [First Name], [Last Name], [Gender], [Date of Birth]) VALUES (N'HE00018', N'rnv@fpt.edu.vn', N'R', N'Nguyễn Văn', 1, CAST(N'2002-01-18' AS Date))
GO
INSERT [dbo].[Students] ([Mssv], [Email], [First Name], [Last Name], [Gender], [Date of Birth]) VALUES (N'HE00019', N'snv@fpt.edu.vn', N'S', N'Nguyễn Văn', 1, CAST(N'2002-01-19' AS Date))
GO
INSERT [dbo].[Students] ([Mssv], [Email], [First Name], [Last Name], [Gender], [Date of Birth]) VALUES (N'HE00020', N'tnv@fpt.edu.vn', N'T', N'Nguyễn Văn', 1, CAST(N'2002-01-20' AS Date))
GO
INSERT [dbo].[Students] ([Mssv], [Email], [First Name], [Last Name], [Gender], [Date of Birth]) VALUES (N'HE00021', N'unv@fpt.edu.vn', N'U', N'Nguyễn Văn', 1, CAST(N'2002-01-21' AS Date))
GO
INSERT [dbo].[Students] ([Mssv], [Email], [First Name], [Last Name], [Gender], [Date of Birth]) VALUES (N'HE00022', N'vnv@fpt.edu.vn', N'V', N'Nguyễn Văn', 1, CAST(N'2002-01-22' AS Date))
GO
INSERT [dbo].[Students] ([Mssv], [Email], [First Name], [Last Name], [Gender], [Date of Birth]) VALUES (N'HE00023', N'wnv@fpt.edu.vn', N'W', N'Nguyễn Văn', 1, CAST(N'2002-01-23' AS Date))
GO
INSERT [dbo].[Students] ([Mssv], [Email], [First Name], [Last Name], [Gender], [Date of Birth]) VALUES (N'HE00024', N'xnv@fpt.edu.vn', N'X', N'Nguyễn Văn', 1, CAST(N'2002-01-24' AS Date))
GO
INSERT [dbo].[Students] ([Mssv], [Email], [First Name], [Last Name], [Gender], [Date of Birth]) VALUES (N'HE00025', N'ynv@fpt.edu.vn', N'Y', N'Nguyễn Văn', 1, CAST(N'2002-01-25' AS Date))
GO
INSERT [dbo].[Students] ([Mssv], [Email], [First Name], [Last Name], [Gender], [Date of Birth]) VALUES (N'HE00026', N'znv@fpt.edu.vn', N'Z', N'Nguyễn Văn', 1, CAST(N'2002-01-26' AS Date))
GO
INSERT [dbo].[Students] ([Mssv], [Email], [First Name], [Last Name], [Gender], [Date of Birth]) VALUES (N'HE00027', N'anv@fpt.edu.vn', N'A', N'Nguyễn Thị', 0, CAST(N'2002-02-01' AS Date))
GO
INSERT [dbo].[Students] ([Mssv], [Email], [First Name], [Last Name], [Gender], [Date of Birth]) VALUES (N'HE00028', N'bnv@fpt.edu.vn', N'B', N'Nguyễn Thị', 0, CAST(N'2002-02-02' AS Date))
GO
INSERT [dbo].[Students] ([Mssv], [Email], [First Name], [Last Name], [Gender], [Date of Birth]) VALUES (N'HE00029', N'cnv@fpt.edu.vn', N'C', N'Nguyễn Thị', 0, CAST(N'2002-02-03' AS Date))
GO
INSERT [dbo].[Students] ([Mssv], [Email], [First Name], [Last Name], [Gender], [Date of Birth]) VALUES (N'HE00030', N'dnv@fpt.edu.vn', N'D', N'Nguyễn Thị', 0, CAST(N'2002-02-04' AS Date))
GO
INSERT [dbo].[Students] ([Mssv], [Email], [First Name], [Last Name], [Gender], [Date of Birth]) VALUES (N'HE00031', N'env@fpt.edu.vn', N'E', N'Nguyễn Thị', 0, CAST(N'2002-02-05' AS Date))
GO
INSERT [dbo].[Students] ([Mssv], [Email], [First Name], [Last Name], [Gender], [Date of Birth]) VALUES (N'HE00032', N'fnv@fpt.edu.vn', N'F', N'Nguyễn Thị', 0, CAST(N'2002-02-06' AS Date))
GO
INSERT [dbo].[Students] ([Mssv], [Email], [First Name], [Last Name], [Gender], [Date of Birth]) VALUES (N'HE00033', N'gnv@fpt.edu.vn', N'G', N'Nguyễn Thị', 0, CAST(N'2002-02-07' AS Date))
GO
INSERT [dbo].[Students] ([Mssv], [Email], [First Name], [Last Name], [Gender], [Date of Birth]) VALUES (N'HE00034', N'hnv@fpt.edu.vn', N'H', N'Nguyễn Thị', 0, CAST(N'2002-02-08' AS Date))
GO
INSERT [dbo].[Students] ([Mssv], [Email], [First Name], [Last Name], [Gender], [Date of Birth]) VALUES (N'HE00035', N'inv@fpt.edu.vn', N'I', N'Nguyễn Thị', 0, CAST(N'2002-02-09' AS Date))
GO
INSERT [dbo].[Students] ([Mssv], [Email], [First Name], [Last Name], [Gender], [Date of Birth]) VALUES (N'HE00036', N'knv@fpt.edu.vn', N'K', N'Nguyễn Thị', 0, CAST(N'2002-02-11' AS Date))
GO
INSERT [dbo].[Students] ([Mssv], [Email], [First Name], [Last Name], [Gender], [Date of Birth]) VALUES (N'HE00037', N'lnv@fpt.edu.vn', N'L', N'Nguyễn Thị', 0, CAST(N'2002-02-12' AS Date))
GO
INSERT [dbo].[Students] ([Mssv], [Email], [First Name], [Last Name], [Gender], [Date of Birth]) VALUES (N'HE00038', N'mnv@fpt.edu.vn', N'M', N'Nguyễn Thị', 0, CAST(N'2002-02-13' AS Date))
GO
INSERT [dbo].[Students] ([Mssv], [Email], [First Name], [Last Name], [Gender], [Date of Birth]) VALUES (N'HE00039', N'nnv@fpt.edu.vn', N'N', N'Nguyễn Thị', 0, CAST(N'2002-02-14' AS Date))
GO
INSERT [dbo].[Students] ([Mssv], [Email], [First Name], [Last Name], [Gender], [Date of Birth]) VALUES (N'HE00040', N'onv@fpt.edu.vn', N'O', N'Nguyễn Thị', 0, CAST(N'2002-02-15' AS Date))
GO
INSERT [dbo].[Students] ([Mssv], [Email], [First Name], [Last Name], [Gender], [Date of Birth]) VALUES (N'HE00041', N'pnv@fpt.edu.vn', N'P', N'Nguyễn Thị', 0, CAST(N'2002-02-16' AS Date))
GO
INSERT [dbo].[Students] ([Mssv], [Email], [First Name], [Last Name], [Gender], [Date of Birth]) VALUES (N'HE00042', N'qnv@fpt.edu.vn', N'Q', N'Nguyễn Thị', 0, CAST(N'2002-02-17' AS Date))
GO
INSERT [dbo].[Students] ([Mssv], [Email], [First Name], [Last Name], [Gender], [Date of Birth]) VALUES (N'HE00043', N'rnv@fpt.edu.vn', N'R', N'Nguyễn Thị', 0, CAST(N'2002-02-18' AS Date))
GO
INSERT [dbo].[Students] ([Mssv], [Email], [First Name], [Last Name], [Gender], [Date of Birth]) VALUES (N'HE00044', N'snv@fpt.edu.vn', N'S', N'Nguyễn Thị', 0, CAST(N'2002-02-19' AS Date))
GO
INSERT [dbo].[Students] ([Mssv], [Email], [First Name], [Last Name], [Gender], [Date of Birth]) VALUES (N'HE00045', N'tnv@fpt.edu.vn', N'T', N'Nguyễn Thị', 0, CAST(N'2002-02-20' AS Date))
GO
INSERT [dbo].[Students] ([Mssv], [Email], [First Name], [Last Name], [Gender], [Date of Birth]) VALUES (N'HE00046', N'unv@fpt.edu.vn', N'U', N'Nguyễn Thị', 0, CAST(N'2002-02-21' AS Date))
GO
INSERT [dbo].[Students] ([Mssv], [Email], [First Name], [Last Name], [Gender], [Date of Birth]) VALUES (N'HE00047', N'vnv@fpt.edu.vn', N'V', N'Nguyễn Thị', 0, CAST(N'2002-02-22' AS Date))
GO
INSERT [dbo].[Students] ([Mssv], [Email], [First Name], [Last Name], [Gender], [Date of Birth]) VALUES (N'HE00048', N'wnv@fpt.edu.vn', N'W', N'Nguyễn Thị', 0, CAST(N'2002-02-23' AS Date))
GO
INSERT [dbo].[Students] ([Mssv], [Email], [First Name], [Last Name], [Gender], [Date of Birth]) VALUES (N'HE00049', N'xnv@fpt.edu.vn', N'X', N'Nguyễn Thị', 0, CAST(N'2002-02-24' AS Date))
GO
INSERT [dbo].[Students] ([Mssv], [Email], [First Name], [Last Name], [Gender], [Date of Birth]) VALUES (N'HE00050', N'ynv@fpt.edu.vn', N'Y', N'Nguyễn Thị', 0, CAST(N'2002-02-25' AS Date))
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00001', N'FA21APRO', 8.645, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00001', N'FA21BNWC', 8.6849999999999987, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00001', N'FA21HOSG', 7.7900000000000009, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00001', N'FA21JMAD', 8.7000000000000011, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00001', N'SP22ADBI', 9.3950000000000014, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00001', N'SP22BCSD', 8.065, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00001', N'SP22BIAO', 6.8500000000000005, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00001', N'SP22CLAB', 750, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00001', N'SP22FJPD', 9.2800000000000011, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00001', N'SU21HPRF', 7.8199999999999994, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00001', N'SU21IMAE', 5.5600000000000005, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00001', N'SU21ISSL', 3.5600000000000005, N'NOT PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00001', N'SU21JCEA', 5.86, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00001', N'SU21KCSI', 8.4, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00002', N'FA21APRO', 8.365, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00002', N'FA21BNWC', 7.3600000000000012, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00002', N'FA21HOSG', 7.8000000000000007, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00002', N'FA21JMAD', 6.94, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00002', N'SP22ADBI', 3.965, N'NOT PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00002', N'SP22BCSD', 3.8949999999999996, N'NOT PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00002', N'SP22BIAO', 2.995, N'NOT PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00002', N'SP22CLAB', 120, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00002', N'SP22FJPD', 4.455, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00002', N'SU21HPRF', 7.0900000000000007, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00002', N'SU21IMAE', 7.58, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00002', N'SU21ISSL', 3.84, N'NOT PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00002', N'SU21JCEA', 8.03, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00002', N'SU21KCSI', 7.655, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00003', N'FA21APRO', 5.3050000000000006, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00003', N'FA21BNWC', 3.7550000000000003, N'NOT PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00003', N'FA21HOSG', 4.3100000000000005, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00003', N'FA21JMAD', 5.4399999999999995, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00003', N'SP22ADBI', 8.665, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00003', N'SP22BCSD', 8.395, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00003', N'SP22BIAO', 9.345, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00003', N'SP22CLAB', 900, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00003', N'SP22FJPD', 7.7550000000000008, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00003', N'SU21HPRF', 8.965, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00003', N'SU21IMAE', 9.21, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00003', N'SU21ISSL', 3.64, N'NOT PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00003', N'SU21JCEA', 7.8100000000000005, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00003', N'SU21KCSI', 8.47, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00004', N'FA21APRO', 8.355, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00004', N'FA21BNWC', 7.455, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00004', N'FA21HOSG', 7.6099999999999994, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00004', N'FA21JMAD', 7.265, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00004', N'SP22ADBI', 6.465, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00004', N'SP22BCSD', 6.645, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00004', N'SP22BIAO', 6.795, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00004', N'SP22CLAB', 800, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00004', N'SP22FJPD', 6.505, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00004', N'SU21HPRF', 6.2550000000000008, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00004', N'SU21IMAE', 6.075, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00004', N'SU21ISSL', 3, N'NOT PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00004', N'SU21JCEA', 4.09, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00004', N'SU21KCSI', 4.9499999999999993, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00005', N'FA21APRO', 7.255, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00005', N'FA21BNWC', 5.855, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00005', N'FA21HOSG', 6.46, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00005', N'FA21JMAD', 7.115, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00005', N'SP22ADBI', 6.0150000000000006, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00005', N'SP22BCSD', 7.745, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00005', N'SP22BIAO', 7.045, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00005', N'SP22CLAB', 850, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00005', N'SP22FJPD', 7.9850000000000012, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00005', N'SU21HPRF', 6.2550000000000008, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00005', N'SU21IMAE', 6.2250000000000005, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00005', N'SU21ISSL', 3, N'NOT PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00005', N'SU21JCEA', 5.3900000000000006, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00005', N'SU21KCSI', 7.0500000000000007, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00006', N'FA21APRO', 7.705, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00006', N'FA21BNWC', 7.405, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00006', N'FA21HOSG', 7.86, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00006', N'FA21JMAD', 7.415, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00006', N'SP22ADBI', 5.965, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00006', N'SP22BCSD', 6.195, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00006', N'SP22BIAO', 6.245, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00006', N'SP22CLAB', 450, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00006', N'SP22FJPD', 5.735, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00006', N'SU21HPRF', 7.555, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00006', N'SU21IMAE', 7.0250000000000012, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00006', N'SU21ISSL', 3, N'NOT PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00006', N'SU21JCEA', 7.69, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00006', N'SU21KCSI', 7.65, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00007', N'FA21APRO', 7.705, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00007', N'FA21BNWC', 7.405, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00007', N'FA21HOSG', 7.86, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00007', N'FA21JMAD', 7.415, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00007', N'SP22ADBI', 5.965, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00007', N'SP22BCSD', 6.195, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00007', N'SP22BIAO', 6.245, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00007', N'SP22CLAB', 450, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00007', N'SP22FJPD', 5.735, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00007', N'SU21HPRF', 7.555, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00007', N'SU21IMAE', 7.0250000000000012, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00007', N'SU21ISSL', 3, N'NOT PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00007', N'SU21JCEA', 7.6840502811569129, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00007', N'SU21KCSI', 7.65, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00008', N'FA21APRO', 7.715, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00008', N'FA21BNWC', 8.3229999999999986, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00008', N'FA21HOSG', 7.643, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00008', N'FA21JMAD', 7.694, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00008', N'SP22ADBI', 8.547, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00008', N'SP22BCSD', 8.1235, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00008', N'SP22BIAO', 6.242, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00008', N'SP22CLAB', 750, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00008', N'SP22FJPD', 8.227, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00008', N'SU21HPRF', 8.5320000000000018, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00008', N'SU21IMAE', 6.3665, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00008', N'SU21ISSL', 3.9920000000000004, N'NOT PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00008', N'SU21JCEA', 8.43, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00008', N'SU21KCSI', 7.5595, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00009', N'FA21APRO', 6.413, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00009', N'FA21BNWC', 7.0165000000000006, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00009', N'FA21HOSG', 8.3464999999999989, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00009', N'FA21JMAD', 8.3830000000000009, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00009', N'SP22ADBI', 7.676, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00009', N'SP22BCSD', 9.0365, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00009', N'SP22BIAO', 7.8505, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00009', N'SP22CLAB', 750, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00009', N'SP22FJPD', 6.7585000000000006, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00009', N'SU21HPRF', 6.9699999999999989, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00009', N'SU21IMAE', 7.2705000000000011, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00009', N'SU21ISSL', 2.68, N'NOT PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00009', N'SU21JCEA', 7.439, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00009', N'SU21KCSI', 7.288, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00010', N'FA21APRO', 7.558, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00010', N'FA21BNWC', 7.9765, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00010', N'FA21HOSG', 8.5055, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00010', N'FA21JMAD', 7.6785, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00010', N'SP22ADBI', 8.613, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00010', N'SP22BCSD', 7.6439999999999992, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00010', N'SP22BIAO', 6.2115000000000009, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00010', N'SP22CLAB', 750, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00010', N'SP22FJPD', 7.1759999999999993, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00010', N'SU21HPRF', 6.2515000000000009, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00010', N'SU21IMAE', 7.6710000000000012, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00010', N'SU21ISSL', 3.344, N'NOT PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00010', N'SU21JCEA', 7.157, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00010', N'SU21KCSI', 7.711, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00011', N'FA21APRO', 8.787, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00011', N'FA21BNWC', 8.189, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00011', N'FA21HOSG', 7.8760000000000012, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00011', N'FA21JMAD', 6.981, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00011', N'SP22ADBI', 8.4405, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00011', N'SP22BCSD', 7.7275, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00011', N'SP22BIAO', 7.3295, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00011', N'SP22CLAB', 950, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00011', N'SP22FJPD', 7.6705, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00011', N'SU21HPRF', 6.4300000000000006, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00011', N'SU21IMAE', 6.6460000000000008, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00011', N'SU21ISSL', 3.6240000000000006, N'NOT PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00011', N'SU21JCEA', 6.5450000000000008, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00011', N'SU21KCSI', 6.8270000000000008, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00012', N'FA21APRO', 6.182, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00012', N'FA21BNWC', 7.7275, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00012', N'FA21HOSG', 8.6175, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00012', N'FA21JMAD', 7.612, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00012', N'SP22ADBI', 6.8785000000000007, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00012', N'SP22BCSD', 7.6695000000000011, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00012', N'SP22BIAO', 7.0360000000000005, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00012', N'SP22CLAB', 550, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00012', N'SP22FJPD', 7.7415, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00012', N'SU21HPRF', 7.7225, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00012', N'SU21IMAE', 8.4265, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00012', N'SU21ISSL', 3.672, N'NOT PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00012', N'SU21JCEA', 7.4050000000000011, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00012', N'SU21KCSI', 7.0509999999999993, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00013', N'FA21APRO', 6.9595, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00013', N'FA21BNWC', 7.6415000000000006, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00013', N'FA21HOSG', 8.2199999999999989, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00013', N'FA21JMAD', 8.2035, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00013', N'SP22ADBI', 7.8214999999999986, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00013', N'SP22BCSD', 8.45, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00013', N'SP22BIAO', 6.106, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00013', N'SP22CLAB', 1000, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00013', N'SP22FJPD', 6.9700000000000006, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00013', N'SU21HPRF', 5.783, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00013', N'SU21IMAE', 8.0045, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00013', N'SU21ISSL', 2.9920000000000004, N'NOT PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00013', N'SU21JCEA', 7.406, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00013', N'SU21KCSI', 7.4440000000000008, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00014', N'FA21APRO', 6.594, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00014', N'FA21BNWC', 7.692, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00014', N'FA21HOSG', 8.7415, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00014', N'FA21JMAD', 6.737, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00014', N'SP22ADBI', 8.8114999999999988, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00014', N'SP22BCSD', 6.9450000000000012, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00014', N'SP22BIAO', 6.2225, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00014', N'SP22CLAB', 800, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00014', N'SP22FJPD', 7.4639999999999995, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00014', N'SU21HPRF', 7.9045000000000005, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00014', N'SU21IMAE', 6.192, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00014', N'SU21ISSL', 3.34, N'NOT PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00014', N'SU21JCEA', 5.926, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00014', N'SU21KCSI', 6.7695, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00015', N'FA21APRO', 9.2015000000000011, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00015', N'FA21BNWC', 7.0139999999999993, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00015', N'FA21HOSG', 7.3725000000000005, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00015', N'FA21JMAD', 7.948500000000001, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00015', N'SP22ADBI', 8.9150000000000009, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00015', N'SP22BCSD', 7.737, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00015', N'SP22BIAO', 7.5420000000000007, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00015', N'SP22CLAB', 800, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00015', N'SP22FJPD', 8.1090000000000018, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00015', N'SU21HPRF', 6.969, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00015', N'SU21IMAE', 7.7135, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00015', N'SU21ISSL', 3.6240000000000006, N'NOT PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00015', N'SU21JCEA', 8.6939999999999991, N'PASSED')
GO
INSERT [dbo].[View] ([Mssv], [ClassID], [Average], [Status]) VALUES (N'HE00015', N'SU21KCSI', 7.168, N'PASSED')
GO
ALTER TABLE [dbo].[Assess]  WITH CHECK ADD  CONSTRAINT [FK_Assess_Assessment System] FOREIGN KEY([AsID])
REFERENCES [dbo].[Assessment System] ([AsID])
GO
ALTER TABLE [dbo].[Assess] CHECK CONSTRAINT [FK_Assess_Assessment System]
GO
ALTER TABLE [dbo].[Assess]  WITH CHECK ADD  CONSTRAINT [FK_Assess_Classes] FOREIGN KEY([ClassID])
REFERENCES [dbo].[Classes] ([ClassID])
GO
ALTER TABLE [dbo].[Assess] CHECK CONSTRAINT [FK_Assess_Classes]
GO
ALTER TABLE [dbo].[Assessment System]  WITH CHECK ADD  CONSTRAINT [FK_Assessment System_Categories] FOREIGN KEY([CatID])
REFERENCES [dbo].[Categories] ([CatID])
GO
ALTER TABLE [dbo].[Assessment System] CHECK CONSTRAINT [FK_Assessment System_Categories]
GO
ALTER TABLE [dbo].[Assessment System]  WITH CHECK ADD  CONSTRAINT [FK_Assessment System_Courses] FOREIGN KEY([CouID])
REFERENCES [dbo].[Courses] ([CouID])
GO
ALTER TABLE [dbo].[Assessment System] CHECK CONSTRAINT [FK_Assessment System_Courses]
GO
ALTER TABLE [dbo].[Assignment]  WITH CHECK ADD  CONSTRAINT [FK_Assignment_Courses] FOREIGN KEY([Major])
REFERENCES [dbo].[Courses] ([CouID])
GO
ALTER TABLE [dbo].[Assignment] CHECK CONSTRAINT [FK_Assignment_Courses]
GO
ALTER TABLE [dbo].[Assignment]  WITH CHECK ADD  CONSTRAINT [FK_Assignment_Lecturers] FOREIGN KEY([Lecturer])
REFERENCES [dbo].[Lecturers] ([LecID])
GO
ALTER TABLE [dbo].[Assignment] CHECK CONSTRAINT [FK_Assignment_Lecturers]
GO
ALTER TABLE [dbo].[Classes]  WITH CHECK ADD  CONSTRAINT [FK_Classes_Assignment] FOREIGN KEY([AsnID])
REFERENCES [dbo].[Assignment] ([AsnID])
GO
ALTER TABLE [dbo].[Classes] CHECK CONSTRAINT [FK_Classes_Assignment]
GO
ALTER TABLE [dbo].[Enroll]  WITH CHECK ADD  CONSTRAINT [FK_Enroll_Classes] FOREIGN KEY([ClassID])
REFERENCES [dbo].[Classes] ([ClassID])
GO
ALTER TABLE [dbo].[Enroll] CHECK CONSTRAINT [FK_Enroll_Classes]
GO
ALTER TABLE [dbo].[Enroll]  WITH CHECK ADD  CONSTRAINT [FK_Enroll_Groups] FOREIGN KEY([GrID])
REFERENCES [dbo].[Groups] ([GrID])
GO
ALTER TABLE [dbo].[Enroll] CHECK CONSTRAINT [FK_Enroll_Groups]
GO
ALTER TABLE [dbo].[Grade]  WITH CHECK ADD  CONSTRAINT [FK_Grade_Assessment System] FOREIGN KEY([AsID])
REFERENCES [dbo].[Assessment System] ([AsID])
GO
ALTER TABLE [dbo].[Grade] CHECK CONSTRAINT [FK_Grade_Assessment System]
GO
ALTER TABLE [dbo].[Grade]  WITH CHECK ADD  CONSTRAINT [FK_Grade_Students] FOREIGN KEY([Mssv])
REFERENCES [dbo].[Students] ([Mssv])
GO
ALTER TABLE [dbo].[Grade] CHECK CONSTRAINT [FK_Grade_Students]
GO
ALTER TABLE [dbo].[Join]  WITH CHECK ADD  CONSTRAINT [FK_Join_Groups] FOREIGN KEY([GrID])
REFERENCES [dbo].[Groups] ([GrID])
GO
ALTER TABLE [dbo].[Join] CHECK CONSTRAINT [FK_Join_Groups]
GO
ALTER TABLE [dbo].[Join]  WITH CHECK ADD  CONSTRAINT [FK_Join_Students] FOREIGN KEY([Mssv])
REFERENCES [dbo].[Students] ([Mssv])
GO
ALTER TABLE [dbo].[Join] CHECK CONSTRAINT [FK_Join_Students]
GO
ALTER TABLE [dbo].[Lecturers]  WITH CHECK ADD  CONSTRAINT [FK_Lecturers_Lecturers] FOREIGN KEY([Report])
REFERENCES [dbo].[Lecturers] ([LecID])
GO
ALTER TABLE [dbo].[Lecturers] CHECK CONSTRAINT [FK_Lecturers_Lecturers]
GO
ALTER TABLE [dbo].[View]  WITH CHECK ADD  CONSTRAINT [FK_View_Classes] FOREIGN KEY([ClassID])
REFERENCES [dbo].[Classes] ([ClassID])
GO
ALTER TABLE [dbo].[View] CHECK CONSTRAINT [FK_View_Classes]
GO
ALTER TABLE [dbo].[View]  WITH CHECK ADD  CONSTRAINT [FK_View_Students] FOREIGN KEY([Mssv])
REFERENCES [dbo].[Students] ([Mssv])
GO
ALTER TABLE [dbo].[View] CHECK CONSTRAINT [FK_View_Students]
GO
