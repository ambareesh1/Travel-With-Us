USE [master]
GO
/****** Object:  Database [AirBus]    Script Date: 12/2/2016 6:13:08 PM ******/
CREATE DATABASE [AirBus]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AirBus', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\AirBus.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'AirBus_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\AirBus_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [AirBus] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AirBus].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AirBus] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AirBus] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AirBus] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AirBus] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AirBus] SET ARITHABORT OFF 
GO
ALTER DATABASE [AirBus] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AirBus] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AirBus] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AirBus] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AirBus] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AirBus] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AirBus] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AirBus] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AirBus] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AirBus] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AirBus] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AirBus] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AirBus] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AirBus] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AirBus] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AirBus] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AirBus] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AirBus] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AirBus] SET  MULTI_USER 
GO
ALTER DATABASE [AirBus] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AirBus] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AirBus] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AirBus] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [AirBus] SET DELAYED_DURABILITY = DISABLED 
GO
USE [AirBus]
GO
/****** Object:  User [NT AUTHORITY\SYSTEM]    Script Date: 12/2/2016 6:13:08 PM ******/
CREATE USER [NT AUTHORITY\SYSTEM] FOR LOGIN [NT AUTHORITY\SYSTEM] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Tbl_Airlines]    Script Date: 12/2/2016 6:13:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Airlines](
	[Id] [bigint] IDENTITY(100,1) NOT NULL,
	[Airline_Name] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Airports]    Script Date: 12/2/2016 6:13:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Airports](
	[id] [bigint] IDENTITY(1000,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[loc_id] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Area]    Script Date: 12/2/2016 6:13:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Area](
	[Area_id] [bigint] IDENTITY(1000,1) NOT NULL,
	[AName] [nvarchar](50) NULL,
	[Loc_Id] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Hotels]    Script Date: 12/2/2016 6:13:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Hotels](
	[HId] [bigint] IDENTITY(100,1) NOT NULL,
	[HName] [nvarchar](50) NULL,
	[HLocationId] [nvarchar](100) NULL,
	[HArea] [nvarchar](50) NULL,
	[Htype] [nvarchar](50) NULL,
	[HUserRating] [nvarchar](50) NULL,
	[HPrice] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_Location]    Script Date: 12/2/2016 6:13:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Location](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[loc_Name] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_PlaneDetails]    Script Date: 12/2/2016 6:13:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_PlaneDetails](
	[Travel_id] [bigint] IDENTITY(1000,1) NOT NULL,
	[Location_Id] [bigint] NULL,
	[Loc_name] [nvarchar](50) NULL,
	[Airline_Id] [bigint] NULL,
	[Airline_Name] [nvarchar](50) NULL,
	[Departure_time] [nvarchar](50) NULL,
	[Arrival_time] [nvarchar](50) NULL,
	[Duration] [nvarchar](50) NULL,
	[Airport_name] [nvarchar](50) NULL,
	[Price] [bigint] NULL,
	[To_Location] [nvarchar](50) NULL,
	[To_Airport] [nvarchar](50) NULL,
	[To_LocationId] [bigint] NULL
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Tbl_Airlines] ON 

INSERT [dbo].[Tbl_Airlines] ([Id], [Airline_Name]) VALUES (100, N'Indigo')
INSERT [dbo].[Tbl_Airlines] ([Id], [Airline_Name]) VALUES (101, N'AirAsia')
INSERT [dbo].[Tbl_Airlines] ([Id], [Airline_Name]) VALUES (102, N'AirIndia')
INSERT [dbo].[Tbl_Airlines] ([Id], [Airline_Name]) VALUES (103, N'Jet Airways')
SET IDENTITY_INSERT [dbo].[Tbl_Airlines] OFF
SET IDENTITY_INSERT [dbo].[tbl_Airports] ON 

INSERT [dbo].[tbl_Airports] ([id], [name], [loc_id]) VALUES (1000, N'Rajeev gandhi internaltional Airport', 1)
INSERT [dbo].[tbl_Airports] ([id], [name], [loc_id]) VALUES (1001, N'Kempengouda internaltional Airport', 2)
INSERT [dbo].[tbl_Airports] ([id], [name], [loc_id]) VALUES (1002, N'Chennai internaltional Airport', 3)
INSERT [dbo].[tbl_Airports] ([id], [name], [loc_id]) VALUES (1003, N'Chhatrapati Shivaji  internaltional Airport', 4)
INSERT [dbo].[tbl_Airports] ([id], [name], [loc_id]) VALUES (1004, N'Shatavahana  internaltional Airport', 5)
INSERT [dbo].[tbl_Airports] ([id], [name], [loc_id]) VALUES (1005, N'Tirupati   internaltional Airport', 6)
INSERT [dbo].[tbl_Airports] ([id], [name], [loc_id]) VALUES (1006, N'Delhi internaltional Airport', 7)
INSERT [dbo].[tbl_Airports] ([id], [name], [loc_id]) VALUES (1007, N'Jaipur internaltional Airport', 8)
SET IDENTITY_INSERT [dbo].[tbl_Airports] OFF
SET IDENTITY_INSERT [dbo].[tbl_Area] ON 

INSERT [dbo].[tbl_Area] ([Area_id], [AName], [Loc_Id]) VALUES (1000, N'Bellandur', N'2')
INSERT [dbo].[tbl_Area] ([Area_id], [AName], [Loc_Id]) VALUES (1001, N'Benargatta', N'2')
INSERT [dbo].[tbl_Area] ([Area_id], [AName], [Loc_Id]) VALUES (1002, N'BTM Layout 1', N'2')
INSERT [dbo].[tbl_Area] ([Area_id], [AName], [Loc_Id]) VALUES (1003, N'BTM Layout 2', N'2')
INSERT [dbo].[tbl_Area] ([Area_id], [AName], [Loc_Id]) VALUES (1004, N'Silk Board', N'2')
INSERT [dbo].[tbl_Area] ([Area_id], [AName], [Loc_Id]) VALUES (1005, N'Kukadpalli', N'1')
INSERT [dbo].[tbl_Area] ([Area_id], [AName], [Loc_Id]) VALUES (1006, N'Miyapur', N'1')
INSERT [dbo].[tbl_Area] ([Area_id], [AName], [Loc_Id]) VALUES (1007, N'Chandanagar', N'1')
SET IDENTITY_INSERT [dbo].[tbl_Area] OFF
SET IDENTITY_INSERT [dbo].[tbl_Hotels] ON 

INSERT [dbo].[tbl_Hotels] ([HId], [HName], [HLocationId], [HArea], [Htype], [HUserRating], [HPrice]) VALUES (100, N'Novotel', N'2', N'Bellandur', N'5', N'4.0', N'250')
INSERT [dbo].[tbl_Hotels] ([HId], [HName], [HLocationId], [HArea], [Htype], [HUserRating], [HPrice]) VALUES (101, N'IBIS', N'2', N'Bellandur', N'4', N'3.5', N'190')
INSERT [dbo].[tbl_Hotels] ([HId], [HName], [HLocationId], [HArea], [Htype], [HUserRating], [HPrice]) VALUES (102, N'IBIS', N'2', N'Silk Board', N'4', N'3.5', N'220')
INSERT [dbo].[tbl_Hotels] ([HId], [HName], [HLocationId], [HArea], [Htype], [HUserRating], [HPrice]) VALUES (103, N'IBIS', N'2', N'Benargatta', N'4', N'3.5', N'170')
SET IDENTITY_INSERT [dbo].[tbl_Hotels] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Location] ON 

INSERT [dbo].[Tbl_Location] ([Id], [loc_Name]) VALUES (1, N'Hyderabad')
INSERT [dbo].[Tbl_Location] ([Id], [loc_Name]) VALUES (2, N'Bengaluru')
INSERT [dbo].[Tbl_Location] ([Id], [loc_Name]) VALUES (3, N'Chennai')
INSERT [dbo].[Tbl_Location] ([Id], [loc_Name]) VALUES (4, N'Mumbai')
INSERT [dbo].[Tbl_Location] ([Id], [loc_Name]) VALUES (5, N'Amaravathi')
INSERT [dbo].[Tbl_Location] ([Id], [loc_Name]) VALUES (6, N'Tirupathi')
INSERT [dbo].[Tbl_Location] ([Id], [loc_Name]) VALUES (7, N'Delhi')
INSERT [dbo].[Tbl_Location] ([Id], [loc_Name]) VALUES (8, N'Jaipur')
SET IDENTITY_INSERT [dbo].[Tbl_Location] OFF
SET IDENTITY_INSERT [dbo].[Tbl_PlaneDetails] ON 

INSERT [dbo].[Tbl_PlaneDetails] ([Travel_id], [Location_Id], [Loc_name], [Airline_Id], [Airline_Name], [Departure_time], [Arrival_time], [Duration], [Airport_name], [Price], [To_Location], [To_Airport], [To_LocationId]) VALUES (1000, 1, N'Hyderabad', 100, N'Indigo', N'12:00', N'14:00', N'2 h', N'Rajeev Gandhi International Airport', 300, N'Bengaluru', N'Kempengauda International Airport', 2)
INSERT [dbo].[Tbl_PlaneDetails] ([Travel_id], [Location_Id], [Loc_name], [Airline_Id], [Airline_Name], [Departure_time], [Arrival_time], [Duration], [Airport_name], [Price], [To_Location], [To_Airport], [To_LocationId]) VALUES (1001, 2, N'Bengaluru', 100, N'Indigo', N'14:00', N'16:00', N'2 h', N'Kempengauda International Airport', 600, N'Bengaluru', N'Rajeev Gandhi International Airport', 1)
INSERT [dbo].[Tbl_PlaneDetails] ([Travel_id], [Location_Id], [Loc_name], [Airline_Id], [Airline_Name], [Departure_time], [Arrival_time], [Duration], [Airport_name], [Price], [To_Location], [To_Airport], [To_LocationId]) VALUES (1002, 2, N'Chennai', 100, N'Air Asia', N'07:00', N'10:00', N'3 h', N'Chennai International Airport', 500, N'Amaravathi', N'Shathavahana International Airport', 5)
INSERT [dbo].[Tbl_PlaneDetails] ([Travel_id], [Location_Id], [Loc_name], [Airline_Id], [Airline_Name], [Departure_time], [Arrival_time], [Duration], [Airport_name], [Price], [To_Location], [To_Airport], [To_LocationId]) VALUES (1003, 2, N'Bengaluru', 103, N'Jet Airways', N'18:00', N'02:00', N'7 h', N'Kempengauda International Airport', 700, N'Jaipur', N'Jaipur International Airport', 8)
INSERT [dbo].[Tbl_PlaneDetails] ([Travel_id], [Location_Id], [Loc_name], [Airline_Id], [Airline_Name], [Departure_time], [Arrival_time], [Duration], [Airport_name], [Price], [To_Location], [To_Airport], [To_LocationId]) VALUES (1004, 2, N'Bengaluru', 103, N'Indigo', N'11:00', N'13:00', N'7 h', N'Kempengauda International Airport', 400, N'Jaipur', N'Jaipur International Airport', 8)
INSERT [dbo].[Tbl_PlaneDetails] ([Travel_id], [Location_Id], [Loc_name], [Airline_Id], [Airline_Name], [Departure_time], [Arrival_time], [Duration], [Airport_name], [Price], [To_Location], [To_Airport], [To_LocationId]) VALUES (1005, 2, N'Bengaluru', 103, N'AirAsia', N'15:00', N'19:00', N'7 h', N'Kempengauda International Airport', 800, N'Jaipur', N'Jaipur International Airport', 8)
INSERT [dbo].[Tbl_PlaneDetails] ([Travel_id], [Location_Id], [Loc_name], [Airline_Id], [Airline_Name], [Departure_time], [Arrival_time], [Duration], [Airport_name], [Price], [To_Location], [To_Airport], [To_LocationId]) VALUES (1006, 2, N'Bengaluru', 103, N'AirIndia', N'21:00', N'24:00', N'7 h', N'Kempengauda International Airport', 400, N'Jaipur', N'Jaipur International Airport', 8)
INSERT [dbo].[Tbl_PlaneDetails] ([Travel_id], [Location_Id], [Loc_name], [Airline_Id], [Airline_Name], [Departure_time], [Arrival_time], [Duration], [Airport_name], [Price], [To_Location], [To_Airport], [To_LocationId]) VALUES (1007, 8, N'Jaipur', 103, N'Jet Airways', N'18:00', N'02:00', N'7 h', N'Jaipur International Airport', 650, N'Bengaluru', N'Bengaluru International Airport', 2)
SET IDENTITY_INSERT [dbo].[Tbl_PlaneDetails] OFF
USE [master]
GO
ALTER DATABASE [AirBus] SET  READ_WRITE 
GO
