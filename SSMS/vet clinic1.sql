USE [master]
GO

/****** Object:  Database [Vet clinic]    Script Date: 19.02.2024 10:06:03 ******/
DROP DATABASE [Vet clinic]
GO

/****** Object:  Database [Vet clinic]    Script Date: 19.02.2024 10:06:03 ******/
CREATE DATABASE [Vet clinic]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Vet clinic', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Vet clinic.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'Vet clinic_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Vet clinic_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Vet clinic].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [Vet clinic] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [Vet clinic] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [Vet clinic] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [Vet clinic] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [Vet clinic] SET ARITHABORT OFF 
GO

ALTER DATABASE [Vet clinic] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [Vet clinic] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [Vet clinic] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [Vet clinic] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [Vet clinic] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [Vet clinic] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [Vet clinic] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [Vet clinic] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [Vet clinic] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [Vet clinic] SET  DISABLE_BROKER 
GO

ALTER DATABASE [Vet clinic] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [Vet clinic] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [Vet clinic] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [Vet clinic] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [Vet clinic] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [Vet clinic] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [Vet clinic] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [Vet clinic] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [Vet clinic] SET  MULTI_USER 
GO

ALTER DATABASE [Vet clinic] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [Vet clinic] SET DB_CHAINING OFF 
GO

ALTER DATABASE [Vet clinic] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [Vet clinic] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO

ALTER DATABASE [Vet clinic] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [Vet clinic] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [Vet clinic] SET QUERY_STORE = OFF
GO

ALTER DATABASE [Vet clinic] SET  READ_WRITE 
GO

