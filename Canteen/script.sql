USE [master]
GO
/****** Object:  Database [canteen]    Script Date: 04/12/2016 12:15:11 ******/
CREATE DATABASE [canteen] ON  PRIMARY 
( NAME = N'canteen', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\canteen.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'canteen_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\canteen_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [canteen] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [canteen].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [canteen] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [canteen] SET ANSI_NULLS OFF
GO
ALTER DATABASE [canteen] SET ANSI_PADDING OFF
GO
ALTER DATABASE [canteen] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [canteen] SET ARITHABORT OFF
GO
ALTER DATABASE [canteen] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [canteen] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [canteen] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [canteen] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [canteen] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [canteen] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [canteen] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [canteen] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [canteen] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [canteen] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [canteen] SET  DISABLE_BROKER
GO
ALTER DATABASE [canteen] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [canteen] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [canteen] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [canteen] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [canteen] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [canteen] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [canteen] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [canteen] SET  READ_WRITE
GO
ALTER DATABASE [canteen] SET RECOVERY SIMPLE
GO
ALTER DATABASE [canteen] SET  MULTI_USER
GO
ALTER DATABASE [canteen] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [canteen] SET DB_CHAINING OFF
GO
USE [canteen]
GO
/****** Object:  Table [dbo].[transaction]    Script Date: 04/12/2016 12:15:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[transaction](
	[tid] [varchar](50) NULL,
	[foodno] [varchar](50) NULL,
	[foodname] [varchar](50) NULL,
	[quantity] [varchar](50) NULL,
	[amount] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[takeorder]    Script Date: 04/12/2016 12:15:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[takeorder](
	[category] [varchar](50) NULL,
	[foodno] [varchar](50) NULL,
	[foodname] [varchar](50) NULL,
	[quantity] [varchar](50) NULL,
	[total] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[takeorder] ([category], [foodno], [foodname], [quantity], [total]) VALUES (N'Beverages', N'1003', N'Pineapple Juice', N'1', N'60')
/****** Object:  Table [dbo].[AddOffers]    Script Date: 04/12/2016 12:15:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AddOffers](
	[id] [varchar](50) NULL,
	[foodid] [varchar](500) NULL,
	[amount] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AddFood]    Script Date: 04/12/2016 12:15:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AddFood](
	[foodno] [varchar](50) NULL,
	[category] [varchar](50) NULL,
	[foodname] [varchar](50) NULL,
	[amount] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[AddFood] ([foodno], [category], [foodname], [amount]) VALUES (N'1001', N'Lunch', N'Dal Rice', N'60')
INSERT [dbo].[AddFood] ([foodno], [category], [foodname], [amount]) VALUES (N'1002', N'Starter', N'Paneer Chilly', N'90')
INSERT [dbo].[AddFood] ([foodno], [category], [foodname], [amount]) VALUES (N'1003', N'Beverages', N'Pineapple Juice', N'60')
