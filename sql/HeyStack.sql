USE [master]
GO
/****** Object:  Database [HeyStack]    Script Date: 05/27/2014 16:30:49 ******/
CREATE DATABASE [HeyStack] ON  PRIMARY 
( NAME = N'HeyStack', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\HeyStack.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'HeyStack_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\HeyStack_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [HeyStack] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HeyStack].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HeyStack] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [HeyStack] SET ANSI_NULLS OFF
GO
ALTER DATABASE [HeyStack] SET ANSI_PADDING OFF
GO
ALTER DATABASE [HeyStack] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [HeyStack] SET ARITHABORT OFF
GO
ALTER DATABASE [HeyStack] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [HeyStack] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [HeyStack] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [HeyStack] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [HeyStack] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [HeyStack] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [HeyStack] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [HeyStack] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [HeyStack] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [HeyStack] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [HeyStack] SET  DISABLE_BROKER
GO
ALTER DATABASE [HeyStack] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [HeyStack] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [HeyStack] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [HeyStack] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [HeyStack] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [HeyStack] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [HeyStack] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [HeyStack] SET  READ_WRITE
GO
ALTER DATABASE [HeyStack] SET RECOVERY FULL
GO
ALTER DATABASE [HeyStack] SET  MULTI_USER
GO
ALTER DATABASE [HeyStack] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [HeyStack] SET DB_CHAINING OFF
GO
USE [HeyStack]
GO
/****** Object:  Table [dbo].[Actor]    Script Date: 05/27/2014 16:30:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Actor](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](128) NULL,
 CONSTRAINT [PK_Actor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Row identifier' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Actor', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The actor''s full name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Actor', @level2type=N'COLUMN',@level2name=N'Name'
GO
SET IDENTITY_INSERT [dbo].[Actor] ON
INSERT [dbo].[Actor] ([Id], [Name]) VALUES (1, N'Mark Hamill')
INSERT [dbo].[Actor] ([Id], [Name]) VALUES (2, N'Harrison Ford')
INSERT [dbo].[Actor] ([Id], [Name]) VALUES (3, N'Carrie Fisher')
INSERT [dbo].[Actor] ([Id], [Name]) VALUES (4, N'Tom Hanks')
INSERT [dbo].[Actor] ([Id], [Name]) VALUES (5, N'Bill Paxton')
INSERT [dbo].[Actor] ([Id], [Name]) VALUES (6, N'Kevin Bacon')
INSERT [dbo].[Actor] ([Id], [Name]) VALUES (7, N'Dan Ackroyd')
INSERT [dbo].[Actor] ([Id], [Name]) VALUES (8, N'Harold Ramis')
INSERT [dbo].[Actor] ([Id], [Name]) VALUES (9, N'Bill Murray')
INSERT [dbo].[Actor] ([Id], [Name]) VALUES (10, N'Ernie Hudson')
INSERT [dbo].[Actor] ([Id], [Name]) VALUES (11, N'Susan Sarandon')
INSERT [dbo].[Actor] ([Id], [Name]) VALUES (12, N'Geena Davis')
INSERT [dbo].[Actor] ([Id], [Name]) VALUES (13, N'John Travolta')
INSERT [dbo].[Actor] ([Id], [Name]) VALUES (14, N'Uma Thurman')
SET IDENTITY_INSERT [dbo].[Actor] OFF
/****** Object:  Table [dbo].[Movie]    Script Date: 05/27/2014 16:30:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movie](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](128) NOT NULL,
	[Year] [int] NOT NULL,
 CONSTRAINT [PK_Movie_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Row identifier' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movie', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Title of the movie, e.g. "Star Wars"' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movie', @level2type=N'COLUMN',@level2name=N'Title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Year the film was first released' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Movie', @level2type=N'COLUMN',@level2name=N'Year'
GO
SET IDENTITY_INSERT [dbo].[Movie] ON
INSERT [dbo].[Movie] ([Id], [Title], [Year]) VALUES (1, N'Star Wars', 1977)
INSERT [dbo].[Movie] ([Id], [Title], [Year]) VALUES (2, N'The Empire Strikes Back', 1980)
INSERT [dbo].[Movie] ([Id], [Title], [Year]) VALUES (3, N'Return of the Jedi', 1983)
INSERT [dbo].[Movie] ([Id], [Title], [Year]) VALUES (5, N'Raiders of the Lost Ark', 1981)
INSERT [dbo].[Movie] ([Id], [Title], [Year]) VALUES (6, N'Apollo 13', 1995)
INSERT [dbo].[Movie] ([Id], [Title], [Year]) VALUES (7, N'Big', 1988)
INSERT [dbo].[Movie] ([Id], [Title], [Year]) VALUES (8, N'Dragnet', 1987)
INSERT [dbo].[Movie] ([Id], [Title], [Year]) VALUES (9, N'Ghostbusters', 1984)
INSERT [dbo].[Movie] ([Id], [Title], [Year]) VALUES (11, N'Thelma & Louise', 1991)
INSERT [dbo].[Movie] ([Id], [Title], [Year]) VALUES (12, N'Pulp Fiction', 1994)
SET IDENTITY_INSERT [dbo].[Movie] OFF
/****** Object:  Table [dbo].[Credit]    Script Date: 05/27/2014 16:30:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Credit](
	[ActorId] [int] NOT NULL,
	[MovieId] [int] NOT NULL,
	[Character] [nvarchar](256) NOT NULL,
	[Billing] [int] NULL,
 CONSTRAINT [PK_Performance] PRIMARY KEY CLUSTERED 
(
	[ActorId] ASC,
	[MovieId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The actor who performed this credit' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Credit', @level2type=N'COLUMN',@level2name=N'ActorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The movie in which this performance featured' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Credit', @level2type=N'COLUMN',@level2name=N'MovieId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The character portrayed in this performance' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Credit', @level2type=N'COLUMN',@level2name=N'Character'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'If present, indicates the actor''s billing. 1 = top billing, 2 = second billing, etc.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Credit', @level2type=N'COLUMN',@level2name=N'Billing'
GO
INSERT [dbo].[Credit] ([ActorId], [MovieId], [Character], [Billing]) VALUES (1, 1, N'Luke Skywalker', 1)
INSERT [dbo].[Credit] ([ActorId], [MovieId], [Character], [Billing]) VALUES (1, 2, N'Luke Skywalker', 1)
INSERT [dbo].[Credit] ([ActorId], [MovieId], [Character], [Billing]) VALUES (1, 3, N'Luke Skywalker', 1)
INSERT [dbo].[Credit] ([ActorId], [MovieId], [Character], [Billing]) VALUES (2, 1, N'Han Solo', 2)
INSERT [dbo].[Credit] ([ActorId], [MovieId], [Character], [Billing]) VALUES (2, 2, N'Han Solo', 2)
INSERT [dbo].[Credit] ([ActorId], [MovieId], [Character], [Billing]) VALUES (2, 3, N'Han Solo', 2)
INSERT [dbo].[Credit] ([ActorId], [MovieId], [Character], [Billing]) VALUES (2, 5, N'Indiana Jones', NULL)
INSERT [dbo].[Credit] ([ActorId], [MovieId], [Character], [Billing]) VALUES (3, 1, N'Princess Leia', 3)
INSERT [dbo].[Credit] ([ActorId], [MovieId], [Character], [Billing]) VALUES (3, 2, N'Princess Leia', 3)
INSERT [dbo].[Credit] ([ActorId], [MovieId], [Character], [Billing]) VALUES (3, 3, N'Princess Leia', 3)
INSERT [dbo].[Credit] ([ActorId], [MovieId], [Character], [Billing]) VALUES (4, 6, N'Jim Lovell', 1)
INSERT [dbo].[Credit] ([ActorId], [MovieId], [Character], [Billing]) VALUES (4, 8, N'Pep Streebeck', NULL)
INSERT [dbo].[Credit] ([ActorId], [MovieId], [Character], [Billing]) VALUES (5, 6, N'Fred Haise', 2)
INSERT [dbo].[Credit] ([ActorId], [MovieId], [Character], [Billing]) VALUES (6, 6, N'Jack Swiegert', 3)
INSERT [dbo].[Credit] ([ActorId], [MovieId], [Character], [Billing]) VALUES (7, 8, N'Joe Friday', NULL)
INSERT [dbo].[Credit] ([ActorId], [MovieId], [Character], [Billing]) VALUES (11, 11, N'Louise Sawyer', NULL)
INSERT [dbo].[Credit] ([ActorId], [MovieId], [Character], [Billing]) VALUES (12, 11, N'Thelma Dickinson', NULL)
/****** Object:  ForeignKey [FK_Credit_Actor]    Script Date: 05/27/2014 16:30:50 ******/
ALTER TABLE [dbo].[Credit]  WITH CHECK ADD  CONSTRAINT [FK_Credit_Actor] FOREIGN KEY([ActorId])
REFERENCES [dbo].[Actor] ([Id])
GO
ALTER TABLE [dbo].[Credit] CHECK CONSTRAINT [FK_Credit_Actor]
GO
/****** Object:  ForeignKey [FK_Credit_Movie]    Script Date: 05/27/2014 16:30:50 ******/
ALTER TABLE [dbo].[Credit]  WITH CHECK ADD  CONSTRAINT [FK_Credit_Movie] FOREIGN KEY([MovieId])
REFERENCES [dbo].[Movie] ([Id])
GO
ALTER TABLE [dbo].[Credit] CHECK CONSTRAINT [FK_Credit_Movie]
GO
