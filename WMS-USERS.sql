USE [master]
GO
/****** Object:  Database [WMS-USERS]    Script Date: 06/14/2024 09:05:24 ******/
CREATE DATABASE [WMS-USERS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WMS-USERS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\WMS-USERS' , SIZE = 1912064KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WMS-USERS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\WMS-USERS_LOGS' , SIZE = 2661504KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [WMS-USERS] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WMS-USERS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WMS-USERS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WMS-USERS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WMS-USERS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WMS-USERS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WMS-USERS] SET ARITHABORT OFF 
GO
ALTER DATABASE [WMS-USERS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WMS-USERS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WMS-USERS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WMS-USERS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WMS-USERS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WMS-USERS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WMS-USERS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WMS-USERS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WMS-USERS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WMS-USERS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WMS-USERS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WMS-USERS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WMS-USERS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WMS-USERS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WMS-USERS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WMS-USERS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WMS-USERS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WMS-USERS] SET RECOVERY FULL 
GO
ALTER DATABASE [WMS-USERS] SET  MULTI_USER 
GO
ALTER DATABASE [WMS-USERS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WMS-USERS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WMS-USERS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WMS-USERS] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [WMS-USERS] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [WMS-USERS] SET QUERY_STORE = OFF
GO
USE [WMS-USERS]
GO
/****** Object:  Schema [IT]    Script Date: 06/14/2024 09:05:24 ******/
CREATE SCHEMA [IT]
GO
/****** Object:  Table [dbo].[softwarebackup]    Script Date: 06/14/2024 09:05:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[softwarebackup](
	[SoftwareCode] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[Logo] [varchar](max) NULL,
	[Description] [varchar](max) NULL,
	[Site] [varchar](max) NULL,
	[ConnectionString] [varchar](max) NULL,
	[CompanyCode] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [IT].[Companies]    Script Date: 06/14/2024 09:05:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IT].[Companies](
	[CompanyCode] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[Logo] [varchar](max) NULL,
	[Address] [varchar](max) NULL,
	[Description] [varchar](max) NULL,
	[Motto] [varchar](max) NULL,
	[BackgroundImage] [varchar](max) NULL,
	[FullName] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [IT].[Sites]    Script Date: 06/14/2024 09:05:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IT].[Sites](
	[WarehouseCode] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[Logo] [varchar](max) NULL,
	[Description] [varchar](max) NULL,
	[Site] [varchar](max) NULL,
	[ConnectionString] [varchar](max) NULL,
	[CompanyCode] [varchar](50) NULL,
	[App] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [IT].[Software]    Script Date: 06/14/2024 09:05:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IT].[Software](
	[SoftwareCode] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[Logo] [varchar](max) NULL,
	[Description] [varchar](max) NULL,
	[Site] [varchar](max) NULL,
	[ConnectionString] [varchar](max) NULL,
	[CompanyCode] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [IT].[SystemSettings]    Script Date: 06/14/2024 09:05:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IT].[SystemSettings](
	[Code] [varchar](20) NOT NULL,
	[SequenceNumber] [numeric](2, 0) NOT NULL,
	[Description] [varchar](max) NULL,
	[Value] [varchar](max) NOT NULL,
	[Field1] [varchar](max) NULL,
	[Field2] [varchar](max) NULL,
	[Field3] [varchar](max) NULL,
	[Field4] [varchar](max) NULL,
	[Field5] [varchar](max) NULL,
	[Field6] [varchar](max) NULL,
	[Field7] [varchar](max) NULL,
	[Field8] [varchar](max) NULL,
	[Field9] [varchar](max) NULL,
	[ActivatedBy] [varchar](20) NULL,
	[ActivatedDate] [datetime] NULL,
	[DeActivatedBy] [varchar](20) NULL,
	[DeActivatedDate] [datetime] NULL,
	[IsUser] [bit] NULL,
	[AddedBy] [varchar](20) NULL,
	[AddedDate] [datetime] NULL,
	[LastEditedBy] [varchar](20) NULL,
	[LastEditedDate] [datetime] NULL,
 CONSTRAINT [PK_SystemSettings] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [IT].[Users]    Script Date: 06/14/2024 09:05:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IT].[Users](
	[UserID] [varchar](20) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Firstname] [varchar](max) NULL,
	[Middlename] [varchar](max) NULL,
	[Lastname] [varchar](max) NULL,
	[FullName] [varchar](max) NOT NULL,
	[Password] [varchar](max) NOT NULL,
	[EmailAddress] [varchar](max) NOT NULL,
	[BirthDate] [datetime] NULL,
	[SecurityQuestion] [varchar](max) NULL,
	[SecurityAnswer] [varchar](max) NULL,
	[AddedBy] [varchar](max) NULL,
	[AddedDate] [datetime] NULL,
	[LastEditedBy] [varchar](max) NULL,
	[LastEditedDate] [datetime] NULL,
	[IsInactive] [bit] NULL,
	[UserType] [varchar](30) NULL,
	[BizPartnerCode] [varchar](20) NULL,
	[OrgChartEntity] [varchar](50) NULL,
	[CompanyCode] [varchar](150) NULL,
	[IsUser] [bit] NULL,
	[Field1] [varchar](max) NULL,
	[Field2] [varchar](max) NULL,
	[Field3] [varchar](max) NULL,
	[Field4] [varchar](max) NULL,
	[Field5] [varchar](max) NULL,
	[Field6] [varchar](max) NULL,
	[Field7] [varchar](max) NULL,
	[Field8] [varchar](max) NULL,
	[Field9] [varchar](max) NULL,
	[RoleID] [varchar](100) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [IT].[UsersDetail]    Script Date: 06/14/2024 09:05:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IT].[UsersDetail](
	[RecordID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [varchar](20) NOT NULL,
	[UserSysID] [varchar](20) NULL,
	[CompanyCode] [varchar](200) NOT NULL,
	[SoftwareCode] [varchar](200) NOT NULL,
	[RoleID] [varchar](100) NULL,
 CONSTRAINT [PK_UsersDetail] PRIMARY KEY CLUSTERED 
(
	[RecordID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IT].[Warehouse]    Script Date: 06/14/2024 09:05:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IT].[Warehouse](
	[WarehouseCode] [varchar](20) NOT NULL,
	[Mnemonics] [varchar](20) NULL,
	[Description] [varchar](max) NULL,
	[Address] [varchar](max) NULL,
	[Supervisor] [varchar](max) NULL,
	[ContactNumber] [varchar](50) NULL,
	[CustomerNumber] [varchar](50) NULL,
	[LastCountDate] [date] NULL,
	[IsBizPartner] [bit] NULL,
	[IsInactive] [bit] NULL,
	[AddedBy] [varchar](20) NULL,
	[AddedDate] [datetime] NULL,
	[LastEditedBy] [varchar](20) NULL,
	[LastEditedDate] [datetime] NULL,
	[Field1] [varchar](max) NULL,
	[Field2] [varchar](max) NULL,
	[Field3] [varchar](max) NULL,
	[Field4] [varchar](max) NULL,
	[Field5] [varchar](max) NULL,
	[Field6] [varchar](max) NULL,
	[Field7] [varchar](max) NULL,
	[Field8] [varchar](max) NULL,
	[Field9] [varchar](max) NULL,
	[Latitude] [numeric](18, 6) NULL,
	[Longitude] [numeric](18, 6) NULL,
	[ActivatedBY] [varchar](20) NULL,
	[ActivatedDate] [datetime] NULL,
	[DeactivatedBy] [varchar](20) NULL,
	[DeactivatedDate] [datetime] NULL,
	[ApproverName] [varchar](100) NULL,
	[NotedByName] [varchar](100) NULL,
 CONSTRAINT [PK_WarehouseMaster] PRIMARY KEY CLUSTERED 
(
	[WarehouseCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [IT].[Users] ADD  CONSTRAINT [DF_Users_IsInactive]  DEFAULT ((0)) FOR [IsInactive]
GO
ALTER TABLE [IT].[UsersDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_UsersDetail_Users] FOREIGN KEY([UserID])
REFERENCES [IT].[Users] ([UserID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [IT].[UsersDetail] CHECK CONSTRAINT [FK_UsersDetail_Users]
GO
USE [master]
GO
ALTER DATABASE [WMS-USERS] SET  READ_WRITE 
GO
