USE [master]
GO
/****** Object:  Database [Student Grading Management Subsystem]    Script Date: 04/07/2022 4:21:46 PM ******/
CREATE DATABASE [Student Grading Management Subsystem]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Student Grading Management Subsystem', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Student Grading Management Subsystem.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Student Grading Management Subsystem_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Student Grading Management Subsystem_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Student Grading Management Subsystem] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Student Grading Management Subsystem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Student Grading Management Subsystem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Student Grading Management Subsystem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Student Grading Management Subsystem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Student Grading Management Subsystem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Student Grading Management Subsystem] SET ARITHABORT OFF 
GO
ALTER DATABASE [Student Grading Management Subsystem] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Student Grading Management Subsystem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Student Grading Management Subsystem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Student Grading Management Subsystem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Student Grading Management Subsystem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Student Grading Management Subsystem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Student Grading Management Subsystem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Student Grading Management Subsystem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Student Grading Management Subsystem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Student Grading Management Subsystem] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Student Grading Management Subsystem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Student Grading Management Subsystem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Student Grading Management Subsystem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Student Grading Management Subsystem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Student Grading Management Subsystem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Student Grading Management Subsystem] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Student Grading Management Subsystem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Student Grading Management Subsystem] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Student Grading Management Subsystem] SET  MULTI_USER 
GO
ALTER DATABASE [Student Grading Management Subsystem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Student Grading Management Subsystem] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Student Grading Management Subsystem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Student Grading Management Subsystem] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Student Grading Management Subsystem] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Student Grading Management Subsystem] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Student Grading Management Subsystem] SET QUERY_STORE = OFF
GO
USE [Student Grading Management Subsystem]
GO
/****** Object:  Table [dbo].[Assess]    Script Date: 04/07/2022 4:21:46 PM ******/
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
/****** Object:  Table [dbo].[Assessment System]    Script Date: 04/07/2022 4:21:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assessment System](
	[AsID] [varchar](50) NOT NULL,
	[CatID] [varchar](50) NOT NULL,
	[CouID] [varchar](50) NOT NULL,
	[Number of Question] [int] NOT NULL,
	[Duration] [time](7) NOT NULL,
	[Weight] [float] NOT NULL,
 CONSTRAINT [PK_Assessment System] PRIMARY KEY CLUSTERED 
(
	[AsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Assignment]    Script Date: 04/07/2022 4:21:46 PM ******/
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
/****** Object:  Table [dbo].[Categories]    Script Date: 04/07/2022 4:21:46 PM ******/
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
/****** Object:  Table [dbo].[Classes]    Script Date: 04/07/2022 4:21:46 PM ******/
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
/****** Object:  Table [dbo].[Courses]    Script Date: 04/07/2022 4:21:46 PM ******/
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
/****** Object:  Table [dbo].[Enroll]    Script Date: 04/07/2022 4:21:46 PM ******/
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
/****** Object:  Table [dbo].[Grade]    Script Date: 04/07/2022 4:21:46 PM ******/
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
	[AsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Groups]    Script Date: 04/07/2022 4:21:46 PM ******/
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
/****** Object:  Table [dbo].[Join]    Script Date: 04/07/2022 4:21:46 PM ******/
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
/****** Object:  Table [dbo].[Lecturers]    Script Date: 04/07/2022 4:21:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lecturers](
	[LecID] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[First Name] [nvarchar](50) NOT NULL,
	[Last Name] [nvarchar](150) NOT NULL,
	[Gender] [bit] NOT NULL,
	[Date of Birth] [date] NOT NULL,
	[Report] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Lecturers] PRIMARY KEY CLUSTERED 
(
	[LecID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 04/07/2022 4:21:46 PM ******/
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
/****** Object:  Table [dbo].[View]    Script Date: 04/07/2022 4:21:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[View](
	[Mssv] [varchar](50) NOT NULL,
	[ClassID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_View] PRIMARY KEY CLUSTERED 
(
	[Mssv] ASC,
	[ClassID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
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
USE [master]
GO
ALTER DATABASE [Student Grading Management Subsystem] SET  READ_WRITE 
GO
