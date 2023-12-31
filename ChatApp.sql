USE [ChatApp]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 11/30/2023 9:13:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 11/30/2023 9:13:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 11/30/2023 9:13:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 11/30/2023 9:13:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 11/30/2023 9:13:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 11/30/2023 9:13:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 11/30/2023 9:13:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 11/30/2023 9:13:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chats]    Script Date: 11/30/2023 9:13:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chats](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Type] [int] NULL,
 CONSTRAINT [PK_Chats] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChatUsers]    Script Date: 11/30/2023 9:13:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChatUsers](
	[UserId] [nvarchar](450) NOT NULL,
	[ChatId] [int] NOT NULL,
	[Role] [int] NULL,
 CONSTRAINT [PK_ChatUsers] PRIMARY KEY CLUSTERED 
(
	[ChatId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Messages]    Script Date: 11/30/2023 9:13:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Messages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Text] [nvarchar](max) NULL,
	[Timestamp] [datetime2](7) NULL,
	[ChatId] [int] NULL,
 CONSTRAINT [PK_Messages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231130123110_init', N'6.0.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231130132604_changeProper', N'6.0.25')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'25826e9e-afb5-4312-b92f-1837b6859ce1', N'kkk', N'KKK', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEC+25l49X9ZnE6OzR2GcOXp6nmJ3J/A2TC5y4gcBvxcVO5byRuqpY/R+ymMyXn5x6A==', N'WVYXUDMZ47DRKTWJ6KUVUFLCNWN4U635', N'1b723c73-1484-4558-9062-8d0dc5154cf5', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'5b311f61-167a-4537-92db-91476b58fbfb', N'Tai12345@', N'TAI12345@', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEKOLWx1tC6pn3t0MiZ6fn/HxG7GdO8DAqd3eM0zYg6jmqigN8XUwDdLwnROMDgOvMQ==', N'SHBH4UV5LSRTGPT5YKGF5C2R5FBT5XLH', N'4a0ee765-94a8-4862-8c12-7f6b9d76e835', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'd037ce8c-f017-4f1f-b9f5-c6fb3aa830ae', N'demo', N'DEMO', NULL, NULL, 0, N'AQAAAAEAACcQAAAAENP8yM40p+cVxEOmGjZDmLsc6d03auExPcTPp/gBsKReyW4n8tDzjiGDeuwOLvRl3w==', N'4O7L33UZIYFM5R5VPTD3V6L5BCEE7XU2', N'cdad4b11-0b22-4857-a006-40ad5e2d0d96', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Chats] ON 

INSERT [dbo].[Chats] ([Id], [Name], [Type]) VALUES (1, N'test', 0)
INSERT [dbo].[Chats] ([Id], [Name], [Type]) VALUES (5, N'hehe', 0)
INSERT [dbo].[Chats] ([Id], [Name], [Type]) VALUES (6, N'???', 0)
INSERT [dbo].[Chats] ([Id], [Name], [Type]) VALUES (8, NULL, 1)
INSERT [dbo].[Chats] ([Id], [Name], [Type]) VALUES (9, NULL, 1)
INSERT [dbo].[Chats] ([Id], [Name], [Type]) VALUES (10, N'sd', 0)
INSERT [dbo].[Chats] ([Id], [Name], [Type]) VALUES (11, NULL, 1)
INSERT [dbo].[Chats] ([Id], [Name], [Type]) VALUES (12, NULL, 1)
SET IDENTITY_INSERT [dbo].[Chats] OFF
GO
INSERT [dbo].[ChatUsers] ([UserId], [ChatId], [Role]) VALUES (N'25826e9e-afb5-4312-b92f-1837b6859ce1', 1, 1)
INSERT [dbo].[ChatUsers] ([UserId], [ChatId], [Role]) VALUES (N'5b311f61-167a-4537-92db-91476b58fbfb', 1, 0)
INSERT [dbo].[ChatUsers] ([UserId], [ChatId], [Role]) VALUES (N'd037ce8c-f017-4f1f-b9f5-c6fb3aa830ae', 1, 1)
INSERT [dbo].[ChatUsers] ([UserId], [ChatId], [Role]) VALUES (N'25826e9e-afb5-4312-b92f-1837b6859ce1', 5, 1)
INSERT [dbo].[ChatUsers] ([UserId], [ChatId], [Role]) VALUES (N'5b311f61-167a-4537-92db-91476b58fbfb', 5, 0)
INSERT [dbo].[ChatUsers] ([UserId], [ChatId], [Role]) VALUES (N'd037ce8c-f017-4f1f-b9f5-c6fb3aa830ae', 5, 1)
INSERT [dbo].[ChatUsers] ([UserId], [ChatId], [Role]) VALUES (N'25826e9e-afb5-4312-b92f-1837b6859ce1', 6, 1)
INSERT [dbo].[ChatUsers] ([UserId], [ChatId], [Role]) VALUES (N'5b311f61-167a-4537-92db-91476b58fbfb', 6, 1)
INSERT [dbo].[ChatUsers] ([UserId], [ChatId], [Role]) VALUES (N'd037ce8c-f017-4f1f-b9f5-c6fb3aa830ae', 6, 0)
INSERT [dbo].[ChatUsers] ([UserId], [ChatId], [Role]) VALUES (N'25826e9e-afb5-4312-b92f-1837b6859ce1', 8, NULL)
INSERT [dbo].[ChatUsers] ([UserId], [ChatId], [Role]) VALUES (N'5b311f61-167a-4537-92db-91476b58fbfb', 8, NULL)
INSERT [dbo].[ChatUsers] ([UserId], [ChatId], [Role]) VALUES (N'd037ce8c-f017-4f1f-b9f5-c6fb3aa830ae', 8, 1)
INSERT [dbo].[ChatUsers] ([UserId], [ChatId], [Role]) VALUES (N'5b311f61-167a-4537-92db-91476b58fbfb', 9, NULL)
INSERT [dbo].[ChatUsers] ([UserId], [ChatId], [Role]) VALUES (N'd037ce8c-f017-4f1f-b9f5-c6fb3aa830ae', 9, NULL)
INSERT [dbo].[ChatUsers] ([UserId], [ChatId], [Role]) VALUES (N'5b311f61-167a-4537-92db-91476b58fbfb', 10, 0)
INSERT [dbo].[ChatUsers] ([UserId], [ChatId], [Role]) VALUES (N'25826e9e-afb5-4312-b92f-1837b6859ce1', 11, NULL)
INSERT [dbo].[ChatUsers] ([UserId], [ChatId], [Role]) VALUES (N'5b311f61-167a-4537-92db-91476b58fbfb', 11, NULL)
INSERT [dbo].[ChatUsers] ([UserId], [ChatId], [Role]) VALUES (N'5b311f61-167a-4537-92db-91476b58fbfb', 12, NULL)
INSERT [dbo].[ChatUsers] ([UserId], [ChatId], [Role]) VALUES (N'd037ce8c-f017-4f1f-b9f5-c6fb3aa830ae', 12, NULL)
GO
SET IDENTITY_INSERT [dbo].[Messages] ON 

INSERT [dbo].[Messages] ([Id], [Name], [Text], [Timestamp], [ChatId]) VALUES (1, N'Tai12345@', N'qweqwe', CAST(N'2023-11-30T20:13:46.8889243' AS DateTime2), 1)
INSERT [dbo].[Messages] ([Id], [Name], [Text], [Timestamp], [ChatId]) VALUES (2, N'Tai12345@', N'dadsdasd', CAST(N'2023-11-30T20:13:52.4173945' AS DateTime2), 1)
INSERT [dbo].[Messages] ([Id], [Name], [Text], [Timestamp], [ChatId]) VALUES (3, N'demo', N'alooo', CAST(N'2023-11-30T20:14:24.3222539' AS DateTime2), 1)
INSERT [dbo].[Messages] ([Id], [Name], [Text], [Timestamp], [ChatId]) VALUES (4, N'demo', N'dinh vai l', CAST(N'2023-11-30T20:14:30.1428091' AS DateTime2), 1)
INSERT [dbo].[Messages] ([Id], [Name], [Text], [Timestamp], [ChatId]) VALUES (5, N'demo', N'hay z', CAST(N'2023-11-30T20:15:14.3253101' AS DateTime2), 1)
INSERT [dbo].[Messages] ([Id], [Name], [Text], [Timestamp], [ChatId]) VALUES (6, N'Tai12345@', N'dadasdasd', CAST(N'2023-11-30T20:16:27.8853906' AS DateTime2), 5)
INSERT [dbo].[Messages] ([Id], [Name], [Text], [Timestamp], [ChatId]) VALUES (7, N'demo', N'dasdasd', CAST(N'2023-11-30T20:16:32.7145548' AS DateTime2), 5)
INSERT [dbo].[Messages] ([Id], [Name], [Text], [Timestamp], [ChatId]) VALUES (8, N'demo', N'dasdasdasd', CAST(N'2023-11-30T20:16:34.4276387' AS DateTime2), 5)
INSERT [dbo].[Messages] ([Id], [Name], [Text], [Timestamp], [ChatId]) VALUES (9, N'demo', N'aaaa', CAST(N'2023-11-30T20:16:35.8835871' AS DateTime2), 5)
INSERT [dbo].[Messages] ([Id], [Name], [Text], [Timestamp], [ChatId]) VALUES (10, N'kkk', N'adsdasd', CAST(N'2023-11-30T20:17:21.0163944' AS DateTime2), 5)
INSERT [dbo].[Messages] ([Id], [Name], [Text], [Timestamp], [ChatId]) VALUES (11, N'Tai12345@', N'e', CAST(N'2023-11-30T20:29:20.8584644' AS DateTime2), 8)
INSERT [dbo].[Messages] ([Id], [Name], [Text], [Timestamp], [ChatId]) VALUES (12, N'Tai12345@', N'eeeee', CAST(N'2023-11-30T20:29:38.4242842' AS DateTime2), 9)
INSERT [dbo].[Messages] ([Id], [Name], [Text], [Timestamp], [ChatId]) VALUES (13, N'demo', N'hả', CAST(N'2023-11-30T20:30:22.0227305' AS DateTime2), 9)
INSERT [dbo].[Messages] ([Id], [Name], [Text], [Timestamp], [ChatId]) VALUES (14, N'demo', N'gì', CAST(N'2023-11-30T20:30:34.4470243' AS DateTime2), 9)
INSERT [dbo].[Messages] ([Id], [Name], [Text], [Timestamp], [ChatId]) VALUES (15, N'demo', N'hả', CAST(N'2023-11-30T20:30:52.6266359' AS DateTime2), 8)
INSERT [dbo].[Messages] ([Id], [Name], [Text], [Timestamp], [ChatId]) VALUES (16, N'demo', N'đasd', CAST(N'2023-11-30T20:31:00.2607103' AS DateTime2), 1)
INSERT [dbo].[Messages] ([Id], [Name], [Text], [Timestamp], [ChatId]) VALUES (17, N'demo', N'dasdsad', CAST(N'2023-11-30T20:31:13.1612346' AS DateTime2), 1)
INSERT [dbo].[Messages] ([Id], [Name], [Text], [Timestamp], [ChatId]) VALUES (18, N'Tai12345@', N'dasdasd', CAST(N'2023-11-30T20:31:20.6278469' AS DateTime2), 1)
INSERT [dbo].[Messages] ([Id], [Name], [Text], [Timestamp], [ChatId]) VALUES (19, N'demo', N'eeqewq', CAST(N'2023-11-30T20:31:43.1936546' AS DateTime2), 5)
INSERT [dbo].[Messages] ([Id], [Name], [Text], [Timestamp], [ChatId]) VALUES (20, N'Tai12345@', N'dasdsad', CAST(N'2023-11-30T20:31:59.4308257' AS DateTime2), 6)
INSERT [dbo].[Messages] ([Id], [Name], [Text], [Timestamp], [ChatId]) VALUES (21, N'demo', N'dasd', CAST(N'2023-11-30T20:32:03.1013817' AS DateTime2), 6)
INSERT [dbo].[Messages] ([Id], [Name], [Text], [Timestamp], [ChatId]) VALUES (22, N'demo', N'eeee', CAST(N'2023-11-30T20:38:12.4076707' AS DateTime2), 9)
INSERT [dbo].[Messages] ([Id], [Name], [Text], [Timestamp], [ChatId]) VALUES (23, N'demo', N'dasasd', CAST(N'2023-11-30T20:38:22.7753312' AS DateTime2), 1)
INSERT [dbo].[Messages] ([Id], [Name], [Text], [Timestamp], [ChatId]) VALUES (24, N'Tai12345@', N'dasdasdasd', CAST(N'2023-11-30T20:38:45.7781595' AS DateTime2), 1)
INSERT [dbo].[Messages] ([Id], [Name], [Text], [Timestamp], [ChatId]) VALUES (25, N'Tai12345@', N'ddddd', CAST(N'2023-11-30T20:39:27.8114892' AS DateTime2), 1)
INSERT [dbo].[Messages] ([Id], [Name], [Text], [Timestamp], [ChatId]) VALUES (26, N'Tai12345@', N'asa', CAST(N'2023-11-30T20:39:40.5913424' AS DateTime2), 10)
INSERT [dbo].[Messages] ([Id], [Name], [Text], [Timestamp], [ChatId]) VALUES (27, N'Tai12345@', N'zzzz', CAST(N'2023-11-30T20:39:54.8708738' AS DateTime2), 9)
INSERT [dbo].[Messages] ([Id], [Name], [Text], [Timestamp], [ChatId]) VALUES (28, N'demo', N'zzzz', CAST(N'2023-11-30T20:40:58.9705428' AS DateTime2), 1)
INSERT [dbo].[Messages] ([Id], [Name], [Text], [Timestamp], [ChatId]) VALUES (29, N'Tai12345@', N'dasdasd', CAST(N'2023-11-30T20:45:52.9719432' AS DateTime2), 1)
INSERT [dbo].[Messages] ([Id], [Name], [Text], [Timestamp], [ChatId]) VALUES (30, N'Tai12345@', N'dasdasd', CAST(N'2023-11-30T20:46:11.9859425' AS DateTime2), 10)
INSERT [dbo].[Messages] ([Id], [Name], [Text], [Timestamp], [ChatId]) VALUES (31, N'kkk', N'asdsad', CAST(N'2023-11-30T20:46:38.7848882' AS DateTime2), 1)
INSERT [dbo].[Messages] ([Id], [Name], [Text], [Timestamp], [ChatId]) VALUES (32, N'Tai12345@', N'dasd', CAST(N'2023-11-30T21:03:02.3015668' AS DateTime2), 1)
INSERT [dbo].[Messages] ([Id], [Name], [Text], [Timestamp], [ChatId]) VALUES (33, N'demo', N'dasdsad', CAST(N'2023-11-30T21:03:31.6089649' AS DateTime2), 9)
INSERT [dbo].[Messages] ([Id], [Name], [Text], [Timestamp], [ChatId]) VALUES (34, N'demo', N'adsdsd', CAST(N'2023-11-30T21:03:39.0137533' AS DateTime2), 9)
INSERT [dbo].[Messages] ([Id], [Name], [Text], [Timestamp], [ChatId]) VALUES (35, N'Tai12345@', N'dasdasdsad', CAST(N'2023-11-30T21:03:50.5315110' AS DateTime2), 9)
INSERT [dbo].[Messages] ([Id], [Name], [Text], [Timestamp], [ChatId]) VALUES (36, N'demo', N'sadsd', CAST(N'2023-11-30T21:03:59.6280967' AS DateTime2), 5)
INSERT [dbo].[Messages] ([Id], [Name], [Text], [Timestamp], [ChatId]) VALUES (37, N'Tai12345@', N'adsdsa', CAST(N'2023-11-30T21:04:01.3106015' AS DateTime2), 5)
INSERT [dbo].[Messages] ([Id], [Name], [Text], [Timestamp], [ChatId]) VALUES (38, N'Tai12345@', N'dasdas', CAST(N'2023-11-30T21:04:02.5243510' AS DateTime2), 5)
INSERT [dbo].[Messages] ([Id], [Name], [Text], [Timestamp], [ChatId]) VALUES (39, N'Tai12345@', N'sdasdas', CAST(N'2023-11-30T21:04:03.5167766' AS DateTime2), 5)
INSERT [dbo].[Messages] ([Id], [Name], [Text], [Timestamp], [ChatId]) VALUES (40, N'Tai12345@', N'sadsad', CAST(N'2023-11-30T21:06:43.5945758' AS DateTime2), 1)
INSERT [dbo].[Messages] ([Id], [Name], [Text], [Timestamp], [ChatId]) VALUES (41, N'Tai12345@', NULL, CAST(N'2023-11-30T21:06:44.0559222' AS DateTime2), 1)
INSERT [dbo].[Messages] ([Id], [Name], [Text], [Timestamp], [ChatId]) VALUES (42, N'Tai12345@', N'dasdsa', CAST(N'2023-11-30T21:06:47.5534812' AS DateTime2), 1)
INSERT [dbo].[Messages] ([Id], [Name], [Text], [Timestamp], [ChatId]) VALUES (43, N'Tai12345@', N'asdasd', CAST(N'2023-11-30T21:06:49.0699127' AS DateTime2), 1)
INSERT [dbo].[Messages] ([Id], [Name], [Text], [Timestamp], [ChatId]) VALUES (44, N'Tai12345@', N'dsad', CAST(N'2023-11-30T21:09:17.5545464' AS DateTime2), 1)
INSERT [dbo].[Messages] ([Id], [Name], [Text], [Timestamp], [ChatId]) VALUES (45, N'demo', N'đasa', CAST(N'2023-11-30T21:09:33.8802441' AS DateTime2), 1)
INSERT [dbo].[Messages] ([Id], [Name], [Text], [Timestamp], [ChatId]) VALUES (46, N'Tai12345@', N'dsad', CAST(N'2023-11-30T21:09:47.5023154' AS DateTime2), 1)
INSERT [dbo].[Messages] ([Id], [Name], [Text], [Timestamp], [ChatId]) VALUES (47, N'demo', N'đá', CAST(N'2023-11-30T21:09:48.8997420' AS DateTime2), 1)
INSERT [dbo].[Messages] ([Id], [Name], [Text], [Timestamp], [ChatId]) VALUES (48, N'Tai12345@', N'ádsdasd', CAST(N'2023-11-30T21:09:51.7364757' AS DateTime2), 1)
INSERT [dbo].[Messages] ([Id], [Name], [Text], [Timestamp], [ChatId]) VALUES (49, N'Tai12345@', N'đas', CAST(N'2023-11-30T21:10:00.8782643' AS DateTime2), 12)
INSERT [dbo].[Messages] ([Id], [Name], [Text], [Timestamp], [ChatId]) VALUES (50, N'demo', N'đasad', CAST(N'2023-11-30T21:10:10.3176831' AS DateTime2), 12)
INSERT [dbo].[Messages] ([Id], [Name], [Text], [Timestamp], [ChatId]) VALUES (51, N'demo', N'dasdas', CAST(N'2023-11-30T21:10:12.4295322' AS DateTime2), 12)
INSERT [dbo].[Messages] ([Id], [Name], [Text], [Timestamp], [ChatId]) VALUES (52, N'demo', N'dasdsad', CAST(N'2023-11-30T21:10:13.6604548' AS DateTime2), 12)
INSERT [dbo].[Messages] ([Id], [Name], [Text], [Timestamp], [ChatId]) VALUES (53, N'demo', N'dsadsa', CAST(N'2023-11-30T21:10:20.0043260' AS DateTime2), 1)
INSERT [dbo].[Messages] ([Id], [Name], [Text], [Timestamp], [ChatId]) VALUES (54, N'demo', N'dasd', CAST(N'2023-11-30T21:10:25.1572949' AS DateTime2), 5)
INSERT [dbo].[Messages] ([Id], [Name], [Text], [Timestamp], [ChatId]) VALUES (55, N'Tai12345@', N'dasd', CAST(N'2023-11-30T21:10:26.6478535' AS DateTime2), 5)
INSERT [dbo].[Messages] ([Id], [Name], [Text], [Timestamp], [ChatId]) VALUES (56, N'Tai12345@', NULL, CAST(N'2023-11-30T21:10:27.9403656' AS DateTime2), 5)
INSERT [dbo].[Messages] ([Id], [Name], [Text], [Timestamp], [ChatId]) VALUES (57, N'Tai12345@', NULL, CAST(N'2023-11-30T21:10:28.5239510' AS DateTime2), 5)
INSERT [dbo].[Messages] ([Id], [Name], [Text], [Timestamp], [ChatId]) VALUES (58, N'Tai12345@', NULL, CAST(N'2023-11-30T21:10:28.7077948' AS DateTime2), 5)
INSERT [dbo].[Messages] ([Id], [Name], [Text], [Timestamp], [ChatId]) VALUES (59, N'Tai12345@', N'dasd', CAST(N'2023-11-30T21:10:30.8284973' AS DateTime2), 5)
INSERT [dbo].[Messages] ([Id], [Name], [Text], [Timestamp], [ChatId]) VALUES (60, N'demo', N'dasd', CAST(N'2023-11-30T21:10:32.1523190' AS DateTime2), 5)
SET IDENTITY_INSERT [dbo].[Messages] OFF
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[ChatUsers]  WITH CHECK ADD  CONSTRAINT [FK_ChatUsers_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChatUsers] CHECK CONSTRAINT [FK_ChatUsers_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[ChatUsers]  WITH CHECK ADD  CONSTRAINT [FK_ChatUsers_Chats_ChatId] FOREIGN KEY([ChatId])
REFERENCES [dbo].[Chats] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChatUsers] CHECK CONSTRAINT [FK_ChatUsers_Chats_ChatId]
GO
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD  CONSTRAINT [FK_Messages_Chats_ChatId] FOREIGN KEY([ChatId])
REFERENCES [dbo].[Chats] ([Id])
GO
ALTER TABLE [dbo].[Messages] CHECK CONSTRAINT [FK_Messages_Chats_ChatId]
GO
