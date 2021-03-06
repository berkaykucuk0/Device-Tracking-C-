USE [master]
GO
/****** Object:  Database [deneme1]    Script Date: 23.03.2021 21:14:58 ******/
CREATE DATABASE [deneme1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'deneme1_Data', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\deneme1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'deneme1_Log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\deneme1.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [deneme1] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [deneme1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [deneme1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [deneme1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [deneme1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [deneme1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [deneme1] SET ARITHABORT OFF 
GO
ALTER DATABASE [deneme1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [deneme1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [deneme1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [deneme1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [deneme1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [deneme1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [deneme1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [deneme1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [deneme1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [deneme1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [deneme1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [deneme1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [deneme1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [deneme1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [deneme1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [deneme1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [deneme1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [deneme1] SET RECOVERY FULL 
GO
ALTER DATABASE [deneme1] SET  MULTI_USER 
GO
ALTER DATABASE [deneme1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [deneme1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [deneme1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [deneme1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [deneme1] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'deneme1', N'ON'
GO
ALTER DATABASE [deneme1] SET QUERY_STORE = OFF
GO
USE [deneme1]
GO
/****** Object:  Table [dbo].[Alarm]    Script Date: 23.03.2021 21:14:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alarm](
	[alarmId] [int] IDENTITY(1,1) NOT NULL,
	[status] [nvarchar](250) NOT NULL,
	[alarmDate] [nvarchar](250) NULL,
	[alarmDetail] [text] NULL,
	[urgency] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[alarmId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Asset]    Script Date: 23.03.2021 21:14:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asset](
	[AssetId] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](250) NOT NULL,
	[ipAddress] [nvarchar](250) NOT NULL,
	[protocolName] [nvarchar](250) NOT NULL,
	[username] [nvarchar](250) NULL,
	[password] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[AssetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Asset_Details]    Script Date: 23.03.2021 21:14:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asset_Details](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AssetId] [int] NOT NULL,
	[freeDiskRate] [nvarchar](4000) NOT NULL,
	[usageDiskRate] [nvarchar](4000) NOT NULL,
	[SystemUserName] [nvarchar](4000) NULL,
	[systemRunTime] [nvarchar](4000) NULL,
	[systemManufacturer] [nvarchar](4000) NULL,
	[systemOwnerContact] [nvarchar](4000) NULL,
	[processor] [nvarchar](4000) NULL,
	[processorCoreCount] [smallint] NULL,
	[cacheSize] [smallint] NULL,
	[systemDescription] [nvarchar](4000) NULL,
	[operatingSystemVersion] [nvarchar](4000) NULL,
	[totalVisibleMemorySize] [bigint] NULL,
	[freePhysicalMemorySize] [bigint] NULL,
	[totalVirtualMemorySize] [bigint] NULL,
	[freeVirtualMemorySize] [bigint] NULL,
	[biosDate] [nvarchar](4000) NULL,
	[biosDetails] [nvarchar](4000) NULL,
	[biosManufacturer] [nvarchar](4000) NULL,
	[MainBoardSerialNumber] [nvarchar](4000) NULL,
	[protocolName] [nvarchar](4000) NULL,
	[LocalHostname] [nvarchar](4000) NULL,
	[systemType] [nvarchar](4000) NULL,
	[lockPresent] [nvarchar](4000) NULL,
	[securityStatus] [nvarchar](4000) NULL,
	[screenName] [nvarchar](4000) NULL,
	[installedDisplayDrivers] [nvarchar](4000) NULL,
	[displayCardName] [nvarchar](4000) NULL,
	[adapterRam] [int] NULL,
 CONSTRAINT [PK__Asset_De__3214EC07DCA7FF2D] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Network_Details]    Script Date: 23.03.2021 21:14:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Network_Details](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AssetId] [int] NOT NULL,
	[ıpGateway] [nvarchar](4000) NULL,
	[errorIpHeader] [int] NULL,
	[successIpPacket] [int] NULL,
	[routingTable] [nvarchar](4000) NOT NULL,
	[clientName] [nvarchar](4000) NULL,
	[loginProfileName] [nvarchar](4000) NULL,
	[protocolName] [nvarchar](4000) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PortScan]    Script Date: 23.03.2021 21:14:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PortScan](
	[portId] [int] IDENTITY(1,1) NOT NULL,
	[AssetId] [int] NOT NULL,
	[portNumber] [nvarchar](2500) NULL,
	[portScanDate] [datetime] NULL,
	[portType] [nvarchar](2500) NULL,
PRIMARY KEY CLUSTERED 
(
	[portId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transaction]    Script Date: 23.03.2021 21:14:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transaction](
	[TransactionId] [int] IDENTITY(1,1) NOT NULL,
	[AssetId] [int] NOT NULL,
	[systemName] [nvarchar](250) NOT NULL,
	[diskSize] [bigint] NOT NULL,
	[systemModel] [nvarchar](250) NULL,
	[status] [nvarchar](250) NULL,
	[loginDate] [datetime] NULL,
	[ramSize] [int] NULL,
	[operatingSystem] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[TransactionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [FK]    Script Date: 23.03.2021 21:14:59 ******/
CREATE NONCLUSTERED INDEX [FK] ON [dbo].[Alarm]
(
	[status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [FK]    Script Date: 23.03.2021 21:14:59 ******/
CREATE NONCLUSTERED INDEX [FK] ON [dbo].[Asset_Details]
(
	[AssetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [FK]    Script Date: 23.03.2021 21:14:59 ******/
CREATE NONCLUSTERED INDEX [FK] ON [dbo].[Network_Details]
(
	[AssetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [FK]    Script Date: 23.03.2021 21:14:59 ******/
CREATE NONCLUSTERED INDEX [FK] ON [dbo].[PortScan]
(
	[AssetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [FK]    Script Date: 23.03.2021 21:14:59 ******/
CREATE NONCLUSTERED INDEX [FK] ON [dbo].[Transaction]
(
	[AssetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [deneme1] SET  READ_WRITE 
GO
