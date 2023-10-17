/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 17/10/2023 3:44:08 pm ******/
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
/****** Object:  Table [dbo].[Agent]    Script Date: 17/10/2023 3:44:09 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agent](
                              [Id] [nvarchar](450) NOT NULL,
                              [Name] [nvarchar](max) NULL,
                              [Address] [nvarchar](max) NULL,
                              CONSTRAINT [PK_Agent] PRIMARY KEY CLUSTERED
                                  (
                                   [Id] ASC
                                      )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 17/10/2023 3:44:09 pm ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 17/10/2023 3:44:09 pm ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 17/10/2023 3:44:09 pm ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 17/10/2023 3:44:09 pm ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 17/10/2023 3:44:09 pm ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 17/10/2023 3:44:09 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
                                    [Id] [nvarchar](450) NOT NULL,
                                    [FirstName] [nvarchar](max) NULL,
                                    [LastName] [nvarchar](max) NULL,
                                    [Phone] [nvarchar](max) NULL,
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
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 17/10/2023 3:44:09 pm ******/
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
/****** Object:  Table [dbo].[Country]    Script Date: 17/10/2023 3:44:09 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
                                [Id] [nvarchar](450) NOT NULL,
                                [Name] [nvarchar](max) NULL,
                                CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED
                                    (
                                     [Id] ASC
                                        )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exchange]    Script Date: 17/10/2023 3:44:09 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exchange](
                                 [Id] [nvarchar](450) NOT NULL,
                                 [Rate] [float] NOT NULL,
                                 [AgentId] [nvarchar](450) NOT NULL,
                                 [SenderCountryId] [nvarchar](450) NOT NULL,
                                 [ReceiverCountryId] [nvarchar](450) NOT NULL,
                                 CONSTRAINT [PK_Exchange] PRIMARY KEY CLUSTERED
                                     (
                                      [Id] ASC
                                         )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 17/10/2023 3:44:09 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
                                [Id] [nvarchar](450) NOT NULL,
                                [Name] [nvarchar](max) NULL,
                                [Photo] [nvarchar](max) NULL,
                                [Stock] [int] NOT NULL,
                                [Price] [float] NOT NULL,
                                CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED
                                    (
                                     [Id] ASC
                                        )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductXTrolley]    Script Date: 17/10/2023 3:44:09 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductXTrolley](
                                        [ProductId] [nvarchar](450) NOT NULL,
                                        [TrolleyId] [nvarchar](450) NOT NULL,
                                        [Quantity] [int] NOT NULL,
                                        CONSTRAINT [PK_ProductXTrolley] PRIMARY KEY CLUSTERED
                                            (
                                             [ProductId] ASC,
                                             [TrolleyId] ASC
                                                )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transaction]    Script Date: 17/10/2023 3:44:09 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transaction](
                                    [Id] [nvarchar](450) NOT NULL,
                                    [Amount] [float] NOT NULL,
                                    [AmountConverted] [float] NOT NULL,
                                    [UserId] [nvarchar](450) NOT NULL,
                                    [ExchangeId] [nvarchar](450) NOT NULL,
                                    [TransactionDate] [datetime2](7) NOT NULL,
                                    CONSTRAINT [PK_Transaction] PRIMARY KEY CLUSTERED
                                        (
                                         [Id] ASC
                                            )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trolley]    Script Date: 17/10/2023 3:44:09 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trolley](
                                [Id] [nvarchar](450) NOT NULL,
                                [IsCurrent] [bit] NOT NULL,
                                [UserId] [nvarchar](450) NOT NULL,
                                [TransactionDate] [datetime2](7) NOT NULL,
                                [Total] [float] NOT NULL,
                                CONSTRAINT [PK_Trolley] PRIMARY KEY CLUSTERED
                                    (
                                     [Id] ASC
                                        )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231010013042_newinitial', N'7.0.11')
GO
INSERT [dbo].[Agent] ([Id], [Name], [Address]) VALUES (N'01C13528-D7E0-4518-A162-F38247EAD265', N'Pineaple', N'1/1A BURWOOD ROAD')
INSERT [dbo].[Agent] ([Id], [Name], [Address]) VALUES (N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'Apple', N'21 OPOIA ROAD')
INSERT [dbo].[Agent] ([Id], [Name], [Address]) VALUES (N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'Sea Cucumber', N'6 FATHER MELGAR')
INSERT [dbo].[Agent] ([Id], [Name], [Address]) VALUES (N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'Orange', N'28 LINWOOD AVE')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'4A7C9147-571F-46F1-92DB-8B74584E8478', N'client', N'CLIENT', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'8F8D7E0F-12F1-4C53-A1E3-9E5C53C96C00', N'admin', N'ADMINISTRAROR', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'F50A8B88-ACD3-496B-95A1-A82A6EB3E1F4', N'staff', N'STAFF', NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0a61655a-c1f8-4dad-b390-4f90730066f9', N'F50A8B88-ACD3-496B-95A1-A82A6EB3E1F4')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0bedfa6d-eb0d-40ac-9e80-a4e6b5f33a8f', N'F50A8B88-ACD3-496B-95A1-A82A6EB3E1F4')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'78aa9b86-3fd3-4dbd-a7c8-c276bbdd1892', N'F50A8B88-ACD3-496B-95A1-A82A6EB3E1F4')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'87f5b4e8-9ead-4eb9-924e-18d7a85cfdf8', N'F50A8B88-ACD3-496B-95A1-A82A6EB3E1F4')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [Phone], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'0a61655a-c1f8-4dad-b390-4f90730066f9', N'a new random name', N'a new random lastname', NULL, N'newuser@gmail.com', N'NEWUSER@GMAIL.COM', N'newuser@gmail.com', N'NEWUSER@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAELpCMIkbh73RgHwDoTGWocwG5DymzCD+EiglfpWALHXYT0CMfjUgvfzanhsnCyI6tg==', N'CFHYXPTFJEBBLYKCWK63SJZAVJX4V2BG', N'a95af1a0-5a39-4363-80fd-047b6a47d221', N'14351564', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [Phone], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'0bedfa6d-eb0d-40ac-9e80-a4e6b5f33a8f', N'admin', N'el admin', NULL, N'admin@gmail.com', N'ADMIN@GMAIL.COM', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEBvU/Svz4LDrvLF5v4BlUwTo6/0H8sTZGF2U31yPzIcCDHxRo2RP6MJSXG7jFV2QoA==', N'UZX6OCKJ5MYZYYWDFMVE6PNRBTNBJODG', N'47465761-a5d9-4768-98fe-79a85ec17b4c', N'123456789', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [Phone], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'78aa9b86-3fd3-4dbd-a7c8-c276bbdd1892', N'ana maria', N'mendoza', NULL, N'xilasd654jalsd315@dasd.com', N'XILASD654JALSD315@DASD.COM', N'xilasd654jalsd315@dasd.com', N'XILASD654JALSD315@DASD.COM', 1, N'AQAAAAIAAYagAAAAEG9RE+E5BFaJUfCtSLr8q7dVghlCHuR9Y8WXN7AnsSsI7NsuySNt7CDpi+FL3eKp7g==', N'667VLF63EMTHV5MYGYB3WOTQJN223JZQ', N'7066b6f3-f1c9-4440-8785-ad52945dfde6', N'758462016598', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [Phone], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'87f5b4e8-9ead-4eb9-924e-18d7a85cfdf8', N'temp v3 name', N'temp v3 name', NULL, N'tempv3@gmail.com', N'TEMPV3@GMAIL.COM', N'tempv3@gmail.com', N'TEMPV3@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEOm1lXAHy3PWykxvW/JCR6/TqP2aUiQfejbRVytte5136HTDGLU5VLjatPKF+ETLJQ==', N'6LNQLWGYXHHVUWZDW632A6CTEUVYH7F2', N'88b124dd-d737-4b45-9463-2b111196c8ee', N'446686464', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [Phone], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'88217ee2-d621-4800-894c-74ad42a4818c', N'a name', N'a alst anme', NULL, N'test13142@gmail.com', N'TEST13142@GMAIL.COM', N'test13142@gmail.com', N'TEST13142@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEGQxmAGBZoolq+FS0x0bj7dF6TbvXEhSJTNU0fpqLz3kDhOVOBX37uO68QgGO8r+Ag==', N'GASEHRDZ6SPYOXJFEVHAM5IPIUDUTHMH', N'728e8725-82f6-4859-b0fc-09cde57a9b97', N'1321315641', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [Phone], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'8fc03854-ef89-42ca-9136-4f493974bea9', N'Diego', N'Llanos', NULL, N'llanos1205@gmail.com', N'LLANOS1205@GMAIL.COM', N'llanos1205@gmail.com', N'LLANOS1205@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAED/Zji/zzz02NsJy1Wil0JTvTX1XxwoIrKkbxvSMHsN8mch8I/CDxU2Ejxkpol/+1Q==', N'S2UYVHRBKJA4KAF4GXMP7WV5BLHJW67W', N'cd328459-310e-4816-b290-882600ef9051', N'0210761877', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [Phone], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'cfa83baa-04cc-44df-99ac-8a66f368f9e2', N'a fake tester', N'sea cucumber', NULL, N'ggggfgfgfgfgfgfg@gmail.com', N'GGGGFGFGFGFGFGFG@GMAIL.COM', N'ggggfgfgfgfgfgfg@gmail.com', N'GGGGFGFGFGFGFGFG@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAECnqX2D56ipTsRPjKH6bTNk2GkB0VwJSXkUTO21YDFAIKMxeAdINpqkRY56sQdqGhQ==', N'5SGNCTQHAHVFEHINQZAN7ZJMYGURALAV', N'c6291e24-a099-492c-8f5e-ab1c3e30ff5f', N'46986764', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [Phone], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'fd406987-1fbe-42fc-b571-28499537346f', N'user 1314', N'user 1314', NULL, N'dssflkjsflsdlkfj@gmail.com', N'DSSFLKJSFLSDLKFJ@GMAIL.COM', N'dssflkjsflsdlkfj@gmail.com', N'DSSFLKJSFLSDLKFJ@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEBSQu2Vj6zUCKXpVR6C8PsFTVKE3kbdmOQGf0jF6McS3wG8Y7ENVr1H3lDTDWSIBDA==', N'YGHJV7J4ECFYQSPQ2TTQ2XU2E2TR3PCF', N'ff0af858-d198-4745-8c01-ce1f0cfbeca3', N'465465654', 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE', N'Cuba')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93', N'Brazil')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720', N'Costa Rica')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (N'8FD8D112-2730-4777-A327-B3641BF59689', N'Chile')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C', N'Ecuador')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF', N'Argentina')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B', N'Bolivia')
INSERT [dbo].[Country] ([Id], [Name]) VALUES (N'E90CB555-E79A-4B52-8057-D688B4AD619B', N'Colombia')
GO
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'0003A94A-F61D-40A8-8196-F31FE1653F2E', 27.623925, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720', N'E90CB555-E79A-4B52-8057-D688B4AD619B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'000C49FA-3453-4348-AA98-82441EC9CE0F', 87.867334, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'8FD8D112-2730-4777-A327-B3641BF59689', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'00B291C4-1938-4E23-BCB0-C97C7590B7FA', 0.027170186002746146, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B', N'E90CB555-E79A-4B52-8057-D688B4AD619B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'00D3C30E-A532-4D0E-A07C-5F177F53F728', 69.663276, N'01C13528-D7E0-4518-A162-F38247EAD265', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'0119CD74-11F7-4626-B6EE-DC4DBCF3D51A', 13.561647, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'8FD8D112-2730-4777-A327-B3641BF59689', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'0182E2A4-688E-422D-93BB-6C40C1ADE98C', 15.073121, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720', N'8FD8D112-2730-4777-A327-B3641BF59689')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'01B1BDD1-6F9A-4723-80FC-D53C15D9A8BB', 52.351185, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'01B7D274-2000-4E83-98E4-284C6E40F607', 0.023756370627129222, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C', N'E90CB555-E79A-4B52-8057-D688B4AD619B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'01C67E11-4E31-4EE3-B2DE-07BFBBF283EB', 0.018184291906764481, N'01C13528-D7E0-4518-A162-F38247EAD265', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'01DB31C5-F44A-4076-89CE-10B667978027', 0.03432925358762156, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'8FD8D112-2730-4777-A327-B3641BF59689', N'E90CB555-E79A-4B52-8057-D688B4AD619B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'0292B8D8-75AE-4106-B704-6227CC60F746', 0.022373691617278049, N'01C13528-D7E0-4518-A162-F38247EAD265', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B', N'8FD8D112-2730-4777-A327-B3641BF59689')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'02B0E93C-4127-4541-9968-595E8B1E4EDE', 57.847162, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'E90CB555-E79A-4B52-8057-D688B4AD619B', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'042075A4-8976-47C6-B980-104DB6331914', 0.011635476666092921, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'04268726-3C43-444A-A879-D5D216F0C0FF', 0.018664084901130463, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'E90CB555-E79A-4B52-8057-D688B4AD619B', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'0448C499-C537-43CE-9BDB-EA007269328F', 54.608106, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'04F87089-4974-4286-93A5-F3177F41D33C', 0.023364065100602977, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'052568FF-AC03-40B5-BB9B-1ED3C26C1D94', 31.83652, N'01C13528-D7E0-4518-A162-F38247EAD265', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'05C135D1-C2B3-4EFC-9BD3-DC7A9F92D3F2', 0.036832778815848261, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'06122906-09DE-44EE-AE47-B02CD284EDD2', 0.015586266666122187, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'06854076-5161-49B6-948F-A86445422D2C', 0.14453511292672908, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'06CF404D-A548-4BA8-BDDB-27255F6F58A4', 40.781415, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'8FD8D112-2730-4777-A327-B3641BF59689', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'0713F397-A088-4DAD-AC1D-C5B549A97F6A', 77.467757, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE', N'8FD8D112-2730-4777-A327-B3641BF59689')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'073F5145-7D25-4BF7-B65E-DD9C549E2060', 0.074656616890611635, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'8FD8D112-2730-4777-A327-B3641BF59689', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'0945A4D8-5C87-4727-8943-23973CAF5FFC', 0.023878815013804941, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE', N'E90CB555-E79A-4B52-8057-D688B4AD619B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'09E3844C-043A-45F9-8D38-7FCF31E97AAE', 35.319892, N'01C13528-D7E0-4518-A162-F38247EAD265', N'8FD8D112-2730-4777-A327-B3641BF59689', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'0A24EEC3-A73F-4ED0-AD71-648E9000F4FB', 0.027459325873549805, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'0AEBD83D-BF73-4EAD-8CBC-CC27A87061CE', 53.578839, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C', N'E90CB555-E79A-4B52-8057-D688B4AD619B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'0B2432D8-D6E7-4C16-BA6B-E9BCA92D8BA0', 0.010800098514178607, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'0CB9CF8C-1442-44D0-9689-982B7BE1E918', 0.014721181123936269, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'0CCA1BA2-B315-4904-8D0E-E01BB9B5E88F', 41.878125, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'E90CB555-E79A-4B52-8057-D688B4AD619B', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'0CE8DA8D-E60B-43B5-B8AD-E6C33C0086C0', 80.252201, N'01C13528-D7E0-4518-A162-F38247EAD265', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'0CF37A1B-BB72-45F8-B4D0-2C740901B558', 0.01007130270820049, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'8FD8D112-2730-4777-A327-B3641BF59689', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'0CF6DBFB-AE44-4A2F-9B15-85A5376DF8A5', 2.228948, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF', N'E90CB555-E79A-4B52-8057-D688B4AD619B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'0D46DA35-3D1D-429F-B0B7-8AC6030B6E6D', 10.127138, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'0D66219C-4743-4105-87E9-3DC18B1E6883', 0.094556245648048792, N'01C13528-D7E0-4518-A162-F38247EAD265', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'0DDD036E-6488-4243-9A6F-0BFFDB535DAB', 0.013906784409476701, N'01C13528-D7E0-4518-A162-F38247EAD265', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'1012B671-D42F-4FAE-821E-CCA7DFA89342', 0.12422391111530712, N'01C13528-D7E0-4518-A162-F38247EAD265', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'10B9BA0D-0DF4-44D3-B891-D6E9B75AED4C', 50.92771, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'E90CB555-E79A-4B52-8057-D688B4AD619B', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'1105D3EC-0B78-4EB7-9ED0-E9653CF2183A', 0.013391165491919979, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'11796EA2-4107-471C-ACA3-FD51786BC664', 0.016339019758809272, N'01C13528-D7E0-4518-A162-F38247EAD265', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'1252B64F-0FA9-4A27-B122-D0E0B11798C7', 26.959261, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'E90CB555-E79A-4B52-8057-D688B4AD619B', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'12624200-7735-4B67-96DD-6BA173631B6B', 0.02325144916982096, N'01C13528-D7E0-4518-A162-F38247EAD265', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'126F345B-CA9E-44B7-BB54-2558C98985E3', 0.050242396956235204, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'E90CB555-E79A-4B52-8057-D688B4AD619B', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'1293673D-19FF-484A-BE42-A7954AC3EE6D', 43.304235, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93', N'8FD8D112-2730-4777-A327-B3641BF59689')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'1318AEB1-08FE-405C-BE3F-187568EFD7DA', 61.662085, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'131C09F3-44BD-45C5-BDA2-F6520E05862B', 8.04998, N'01C13528-D7E0-4518-A162-F38247EAD265', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'13E39B3C-FE24-4914-9C46-3F30D3DFFFAC', 66.298841, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'E90CB555-E79A-4B52-8057-D688B4AD619B', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'141202CC-8130-4F73-A5CB-FC0248E6A46C', 10.575716, N'01C13528-D7E0-4518-A162-F38247EAD265', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'14A84026-F349-4441-9DBA-14583B770E47', 55.399919, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'16DF1A95-03B4-4F69-AE56-7FC93A4380BB', 0.010516112503643045, N'01C13528-D7E0-4518-A162-F38247EAD265', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'1799A5CE-AB8D-4A2D-9D02-C4D07B337C71', 0.024022834569079957, N'01C13528-D7E0-4518-A162-F38247EAD265', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'189312A9-D743-4746-A9BD-C5B01FFFF740', 0.036809291136241713, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93', N'E90CB555-E79A-4B52-8057-D688B4AD619B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'1916F3D6-2658-45C6-A3DC-18F77336987B', 25.77994, N'01C13528-D7E0-4518-A162-F38247EAD265', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'193B1789-CA98-44AF-9848-97505CCD80BC', 0.019635675745090442, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93', N'E90CB555-E79A-4B52-8057-D688B4AD619B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'1A7686B5-A88B-4418-AD79-15408B8C0784', 0.011558368605621528, N'01C13528-D7E0-4518-A162-F38247EAD265', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'1AEA968D-8C2C-4C9E-9D01-C59426BD3E5E', 0.011510633431078563, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'1B2DF8C3-6D43-4787-88B0-7389F28E931F', 0.32563139112660971, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'1BEC6F6E-2944-440C-91A9-C2AB53B5994A', 82.649592, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'1C0FDB19-792F-4A91-8ADC-F4851B5B5F68', 0.1993168216620711, N'01C13528-D7E0-4518-A162-F38247EAD265', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'1C330134-1B2C-4651-BD7A-DBB0238D754C', 0.021657774417646269, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'1D71476D-BB69-4896-882E-19DE9224057B', 26.274359, N'01C13528-D7E0-4518-A162-F38247EAD265', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C', N'8FD8D112-2730-4777-A327-B3641BF59689')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'1DD074BF-A990-45BA-A793-656B4008D407', 50.693951, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'1FE517B7-98F6-4B94-9F3B-64622796F156', 72.887737, N'01C13528-D7E0-4518-A162-F38247EAD265', N'E90CB555-E79A-4B52-8057-D688B4AD619B', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'2094418B-0999-4F6D-AF3A-7743F1C80E74', 0.014831497722905323, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF', N'E90CB555-E79A-4B52-8057-D688B4AD619B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'210A1659-ACA1-4A51-86CC-875B41106B1C', 0.028344083110293742, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'2132D503-2B13-4EFB-9503-23D51E7E78A4', 0.14022132253105657, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'229015F0-4B80-4A0B-87F5-8A03CE041131', 0.04208468330476204, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'2293F0EF-E3C7-4607-BC8B-6C4E9C8E61FC', 0.016105638558290235, N'01C13528-D7E0-4518-A162-F38247EAD265', N'8FD8D112-2730-4777-A327-B3641BF59689', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'24F0ECA5-A9D5-4277-8278-A166442EB1A2', 86.402147, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'25F91570-94EE-45E9-AD5D-3AD76F1886A7', 37.136203, N'01C13528-D7E0-4518-A162-F38247EAD265', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'261D70E5-FF63-4489-9CF7-E9F260438BFF', 0.01565729512836414, N'01C13528-D7E0-4518-A162-F38247EAD265', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'26FDE36B-C8BD-4F99-9794-A614E1BB9EAA', 2.587814, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'271A82D2-B1DF-442A-BF36-4FC2E152D91A', 56.578905, N'01C13528-D7E0-4518-A162-F38247EAD265', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'2970B2D0-EBD7-4D9C-A5A1-A3FFC25EF0D3', 0.011931610015899348, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'2AF2E2EC-185B-4861-A3A2-E82A7F31F495', 39.680889, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'2AF421F6-CA82-4B84-AFE9-8C7291C472E3', 1.248623, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'8FD8D112-2730-4777-A327-B3641BF59689', N'E90CB555-E79A-4B52-8057-D688B4AD619B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'2B48FDD7-B38E-4263-AFCA-353436045994', 0.023260393005274178, N'01C13528-D7E0-4518-A162-F38247EAD265', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF', N'8FD8D112-2730-4777-A327-B3641BF59689')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'2BA903E1-9494-44B0-97DE-D7753F10BB92', 93.341571, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'2C92992E-C924-4604-841A-B66D3ADB0AE4', 24.3507, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B', N'8FD8D112-2730-4777-A327-B3641BF59689')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'2D535ED8-138A-49B7-A039-1491BDA0A88F', 0.014768697096680912, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'2E9E50F8-D9F0-4BC1-8339-4D04B3ED0E38', 0.011692605562333824, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'2F76D975-E1F0-46BD-9F92-06938B3953C7', 0.016722894332997409, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'2FBD060E-25EF-4E08-8964-61F40B75732B', 96.277299, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE', N'8FD8D112-2730-4777-A327-B3641BF59689')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'2FE7F8A1-F378-4D48-930F-40FE9E643F78', 0.011107604440389281, N'01C13528-D7E0-4518-A162-F38247EAD265', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'31F7F6E5-A331-4764-BD0E-1CB278CF64E1', 0.012395354697041169, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'8FD8D112-2730-4777-A327-B3641BF59689', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'332A5619-5B67-4B31-A933-BCB165532E3D', 0.017342132615808376, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93', N'E90CB555-E79A-4B52-8057-D688B4AD619B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'336F0848-2505-4F1F-ADA6-AAF40DFD96BC', 0.012908596282192602, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'8FD8D112-2730-4777-A327-B3641BF59689', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'34A66AA9-4F1C-4624-9A1A-CA574377CD8A', 28.428249, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'8FD8D112-2730-4777-A327-B3641BF59689', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'34D66D19-B187-4050-AFB9-2025678B6BC5', 16.46057, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'8FD8D112-2730-4777-A327-B3641BF59689', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'3547B547-50E9-4EDA-81C1-4EF36E37A5FC', 0.020390741665309832, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE', N'E90CB555-E79A-4B52-8057-D688B4AD619B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'357ABCEE-3FF0-40F4-BBB4-23363100A5A9', 65.497206, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'358AC028-01AE-4012-B5C0-8A3BC2B655A6', 14.791554, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'35B7C8C1-12C9-4568-871F-CE36D21F2EEE', 59.379734, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF', N'8FD8D112-2730-4777-A327-B3641BF59689')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'35CC4AE9-643A-4FFD-803D-9D6B3F225A3A', 91.354778, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'369931B3-6CDC-4067-9041-E4509F133286', 13.681396, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'37A4B3C1-F4C7-4AA8-B3B6-72294F3A0164', 35.741751, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'3836D882-C0DF-4564-B12C-148A46D17372', 0.028312657354671412, N'01C13528-D7E0-4518-A162-F38247EAD265', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C', N'8FD8D112-2730-4777-A327-B3641BF59689')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'39C337D0-0067-44D9-B473-CB64ED48D571', 7.131583, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'3AEC66E0-2AFE-4758-BB23-4A3B438A1C59', 50.376521, N'01C13528-D7E0-4518-A162-F38247EAD265', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'3C1F98AE-4B64-4F93-AE51-901F3BF09848', 53.559906, N'01C13528-D7E0-4518-A162-F38247EAD265', N'E90CB555-E79A-4B52-8057-D688B4AD619B', N'8FD8D112-2730-4777-A327-B3641BF59689')
GO
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'3C4A0CA1-3891-4EB5-97F5-890AA7C512EE', 0.010483973338668698, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF', N'E90CB555-E79A-4B52-8057-D688B4AD619B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'3CC54E64-4646-4E0F-A11D-7DF2564DC3DC', 0.06032939366304875, N'01C13528-D7E0-4518-A162-F38247EAD265', N'E90CB555-E79A-4B52-8057-D688B4AD619B', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'3D1978B5-60C5-41D7-AA6B-7DAA0B23C9C8', 0.026927901056551205, N'01C13528-D7E0-4518-A162-F38247EAD265', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'3E96E225-7DD8-4086-8F4D-F0234B90B828', 90.021477, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C', N'E90CB555-E79A-4B52-8057-D688B4AD619B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'3EA5F79F-1A76-434D-A981-66E0ADBFD7CD', 0.025472689048873225, N'01C13528-D7E0-4518-A162-F38247EAD265', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'3F8D664C-3395-4C60-A48E-328959B91145', 67.456258, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'3F9F02D1-B5E4-47FC-AA7D-9CA4EB6381DA', 29.129675, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'E90CB555-E79A-4B52-8057-D688B4AD619B', N'8FD8D112-2730-4777-A327-B3641BF59689')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'405EAE40-F569-4B26-ACFF-AE318CC6FD23', 77.600788, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'E90CB555-E79A-4B52-8057-D688B4AD619B', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'4095D3C8-9C6E-452A-9B5B-C0ACBAD52E86', 32.855352, N'01C13528-D7E0-4518-A162-F38247EAD265', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'40FBE2B9-FD18-4D6C-9EEB-885E6716EB24', 0.01831229964284057, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'4149DD91-FE42-4EA3-A434-0678B72569CF', 77.641979, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'42076FCB-B281-44A4-8220-23A2294F7560', 0.014431701668786733, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF', N'8FD8D112-2730-4777-A327-B3641BF59689')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'421CB5DB-9C45-4EE8-B973-DBC9F4763EE9', 5.017138, N'01C13528-D7E0-4518-A162-F38247EAD265', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'43D41631-B05B-462D-8A6E-FCFA9F560395', 97.962386, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'4409EFA3-08E8-4CDB-B51D-C0D5A3DEDAB8', 53.173892, N'01C13528-D7E0-4518-A162-F38247EAD265', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'46783B6A-F049-437A-9599-27AEB85517A1', 0.027978483762589025, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'47F95D0F-4317-48E0-B904-124DABEFFDBE', 74.79616, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'8FD8D112-2730-4777-A327-B3641BF59689', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'4831B3A5-1544-4C8A-A083-369E7EE3F0CB', 99.153345, N'01C13528-D7E0-4518-A162-F38247EAD265', N'E90CB555-E79A-4B52-8057-D688B4AD619B', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'4877D6D4-D647-4E22-B575-722538BD5C12', 0.010445013672157321, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'48AEAD82-95B5-46F4-9C1A-985679901750', 0.033393702468656167, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'49133A15-B238-4001-BB61-DEAD5739B763', 20.737871, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'E90CB555-E79A-4B52-8057-D688B4AD619B', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'4956777A-B43F-45F1-827B-453DA13DC0A5', 60.999862, N'01C13528-D7E0-4518-A162-F38247EAD265', N'8FD8D112-2730-4777-A327-B3641BF59689', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'4A99C0BC-861C-4725-BB76-E1C1847C2F6B', 89.460374, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'4BE1EA34-DC53-44F3-B478-A12DF7928AB0', 79.331949, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'4C7C6191-12C8-4FCB-880A-879BF02BE7EF', 0.011559421169845326, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C', N'8FD8D112-2730-4777-A327-B3641BF59689')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'50E0FD02-3154-4E6B-BE6D-DB54C192202C', 67.557177, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720', N'E90CB555-E79A-4B52-8057-D688B4AD619B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'510E7467-5771-4BCA-81D6-7286A5D7C72B', 0.011294240315795994, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'51E83520-5128-4474-AA08-78465F3A9E11', 78.281166, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'54494671-2AB0-4F06-BBB7-5FB0679411E0', 0.0332724491876465, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE', N'8FD8D112-2730-4777-A327-B3641BF59689')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'546E5A49-46ED-4DCE-85A0-A4FC395D5A5B', 0.010085388445543617, N'01C13528-D7E0-4518-A162-F38247EAD265', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF', N'E90CB555-E79A-4B52-8057-D688B4AD619B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'54A12A04-DC1E-447F-9928-50F7B00E8C34', 0.14458045931476959, N'01C13528-D7E0-4518-A162-F38247EAD265', N'8FD8D112-2730-4777-A327-B3641BF59689', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'54AC445A-15C7-4678-862E-E23E93C1C292', 78.319082, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF', N'8FD8D112-2730-4777-A327-B3641BF59689')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'54B23BBB-89C2-4123-B847-0A7155E7D0C6', 35.280732, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'56C6F732-8110-4C19-A5C1-1F031DE2C209', 0.010377832600869368, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'E90CB555-E79A-4B52-8057-D688B4AD619B', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'56E70E7E-B140-4585-B577-983D28ED2ACB', 0.066343260961017961, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'8FD8D112-2730-4777-A327-B3641BF59689', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'571CAC31-CD48-48F5-92B3-18B72C62BC26', 63.15606, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE', N'E90CB555-E79A-4B52-8057-D688B4AD619B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'58420574-EB08-4E04-AE0F-439175374543', 28.906669, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'584F5834-B14D-48F8-90CE-D1E5292CBA70', 49.041865, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'E90CB555-E79A-4B52-8057-D688B4AD619B', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'58D5EE03-3B46-41A9-B231-14B410A1BA4F', 1.20067, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'59140EE2-77EB-4BE6-9C74-E1D1B53A886A', 62.020754, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B', N'E90CB555-E79A-4B52-8057-D688B4AD619B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'59A83544-6F1D-4D37-9C8F-61F7496BD5B1', 0.011806755015276347, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'5AD49694-7FCE-4A73-A760-D272D7F7CE46', 0.012605261973331828, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'5B069061-AF7E-4634-8BCA-8F3429D0CA41', 2.981191, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'5B2C7520-822E-462A-B498-673E7F1F2BB5', 0.01880622166983752, N'01C13528-D7E0-4518-A162-F38247EAD265', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'5BCB6143-EE5B-4983-824D-A7F530BCD668', 0.012549636006592374, N'01C13528-D7E0-4518-A162-F38247EAD265', N'E90CB555-E79A-4B52-8057-D688B4AD619B', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'5BE6BAFE-CE65-49F8-B283-39D77B8AEB7D', 41.627061, N'01C13528-D7E0-4518-A162-F38247EAD265', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'5C8F7B66-B968-46C7-AE14-758E68A204BC', 0.012979050592313251, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'5C94D2FD-1DB9-422E-84A3-AA1139704A9C', 0.015538119334092763, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'8FD8D112-2730-4777-A327-B3641BF59689', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'5CB265A9-D647-4A72-86A3-7E4605BC8177', 30.097885, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'5D39BE03-A5DD-4EE4-B3FC-E0158CD5FA11', 54.992518, N'01C13528-D7E0-4518-A162-F38247EAD265', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'5EDAA82F-594D-4570-8BDA-F1AFA5B0F62A', 67.71078, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'5F13330C-767E-4F78-BB0B-39A62FF4CCBD', 0.015833793305028845, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'E90CB555-E79A-4B52-8057-D688B4AD619B', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'5F55CC9C-A2AB-46A7-A668-1DF6589AE98C', 0.011131710093267367, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B', N'8FD8D112-2730-4777-A327-B3641BF59689')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'5FE054D3-770D-4C18-9FE7-0CC33E5B7ABE', 69.291898, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'8FD8D112-2730-4777-A327-B3641BF59689', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'60226DE7-19CF-47FC-B7C3-044CE536FFDB', 45.884106, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE', N'E90CB555-E79A-4B52-8057-D688B4AD619B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'604CB4FB-EF87-4197-8753-9CAB7358323C', 32.124059, N'01C13528-D7E0-4518-A162-F38247EAD265', N'8FD8D112-2730-4777-A327-B3641BF59689', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'607E2A03-DED0-4412-83B5-F4605301A41F', 0.011806391054495845, N'01C13528-D7E0-4518-A162-F38247EAD265', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'61666B79-F183-4F53-95FC-AA468F794040', 12.881317, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'8FD8D112-2730-4777-A327-B3641BF59689', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'616EECC3-414B-4855-9E47-CE930FC9187E', 0.012186251846003896, N'01C13528-D7E0-4518-A162-F38247EAD265', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'61C03409-F76B-4730-90E8-EF85A0F09743', 0.023364530199227712, N'01C13528-D7E0-4518-A162-F38247EAD265', N'E90CB555-E79A-4B52-8057-D688B4AD619B', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'61DE40F5-D178-4C4C-8D3B-9B467609C59A', 61.850828, N'01C13528-D7E0-4518-A162-F38247EAD265', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'6223B717-7AD5-43CB-B196-E39F678B1A5F', 13.716238, N'01C13528-D7E0-4518-A162-F38247EAD265', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B', N'8FD8D112-2730-4777-A327-B3641BF59689')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'6270FE5C-A674-49CF-816C-B1FEE0640946', 0.027659590651888149, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'62EFEF1E-DEF5-4360-91D5-7B6AC59F995D', 0.037137824967574035, N'01C13528-D7E0-4518-A162-F38247EAD265', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C', N'E90CB555-E79A-4B52-8057-D688B4AD619B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'631AC938-6BB2-45B9-B6A7-4F8D02E37944', 0.016167932303185983, N'01C13528-D7E0-4518-A162-F38247EAD265', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'63CC67E0-711F-49E8-B7EE-FE96E2DC23BF', 39.257732, N'01C13528-D7E0-4518-A162-F38247EAD265', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'6567D11A-BDDD-4C58-B300-CDEE9EFEA603', 0.013605939025038684, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'6570375D-FAAB-4050-BEF7-557FE8A543E4', 85.944051, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'65B281C7-D349-4D61-A1B3-BF5585970592', 0.077631813579310247, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B', N'8FD8D112-2730-4777-A327-B3641BF59689')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'65C750FF-6481-4638-A67B-FA29EC8A03C8', 0.36695806806851988, N'01C13528-D7E0-4518-A162-F38247EAD265', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720', N'8FD8D112-2730-4777-A327-B3641BF59689')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'661879B5-FB3C-4D7B-8448-4EC5D325CD54', 98.377096, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'67ED6160-52E5-4251-9B5D-B727F41F99E9', 0.013201203891709626, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'67F1406B-6F69-495F-9BB9-21867CE7BC57', 85.524137, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'680FFCD6-BD61-4560-A649-3C8484DC41C1', 42.991535, N'01C13528-D7E0-4518-A162-F38247EAD265', N'8FD8D112-2730-4777-A327-B3641BF59689', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'681BF0E7-CDA4-4C24-8328-381486274DCC', 27.14973, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'681BF710-EAA1-4AFF-8B27-531D2168B06D', 44.66174, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'8FD8D112-2730-4777-A327-B3641BF59689', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'697230C8-7D46-4250-8E20-C0710DB5A668', 42.800771, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'698E001F-EDF0-4558-BC37-B1A6F228FF19', 56.192155, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93', N'8FD8D112-2730-4777-A327-B3641BF59689')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'6A077278-AE78-4359-95BA-557AD1C72DA4', 0.037093004886150256, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C', N'E90CB555-E79A-4B52-8057-D688B4AD619B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'6A4F3F53-DE80-4620-B8E1-D5FF1664FE73', 0.011769106836009206, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'6B5A9EE2-9EEA-424C-8804-2C9DAB885F90', 0.04837355997958636, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'E90CB555-E79A-4B52-8057-D688B4AD619B', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'6B84C850-C856-48D8-81CF-371CF3654575', 92.591748, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'6BAC98EE-FB6C-4C5D-A688-264DBC638A95', 42.093972, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'E90CB555-E79A-4B52-8057-D688B4AD619B', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'6C0D4D1F-6B56-40EC-8000-A654685F4341', 0.018050567907870047, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'6C7C025B-C412-4C30-BE64-FCA90BD0D4C4', 0.012576411762587126, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'6C8DBF00-2224-4D41-B90C-7969C2B7FFE0', 0.024681185719702882, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'E90CB555-E79A-4B52-8057-D688B4AD619B', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'6CAAC430-BBF6-431E-8A63-E908ECF15DDA', 86.876192, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'6E4712B7-B250-4305-9FEE-E49F6F209596', 62.090056, N'01C13528-D7E0-4518-A162-F38247EAD265', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720', N'8FD8D112-2730-4777-A327-B3641BF59689')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'6FBF4595-9134-47E9-80BB-6C20BF23159C', 0.012768280404512403, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'8FD8D112-2730-4777-A327-B3641BF59689', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'70135C57-99D9-4FE4-A2BA-AE644F9548B4', 0.035176278356081656, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE', N'8FD8D112-2730-4777-A327-B3641BF59689')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'7072DF54-4818-4EC5-A536-8CFD429A0AC8', 74.676099, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'729D6F84-79A5-4E0D-A8B4-54F21D3356E5', 0.011086134788508254, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'E90CB555-E79A-4B52-8057-D688B4AD619B', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'733DDAE1-3BEC-436B-9914-EC800B888B36', 26.926725, N'01C13528-D7E0-4518-A162-F38247EAD265', N'E90CB555-E79A-4B52-8057-D688B4AD619B', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'73596F94-A364-4BB8-9BF3-0FCD6812F7B5', 36.907679, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'8FD8D112-2730-4777-A327-B3641BF59689', N'E90CB555-E79A-4B52-8057-D688B4AD619B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'735B7C02-7A85-4475-9CBF-E3C032C9C8F7', 11.075918, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE', N'8FD8D112-2730-4777-A327-B3641BF59689')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'74C15E56-5372-44D3-947A-AE8ED52FBCCC', 0.031410468229567806, N'01C13528-D7E0-4518-A162-F38247EAD265', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'7590BB2D-1EA9-429B-8659-40FCB068440A', 10.361966, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C', N'8FD8D112-2730-4777-A327-B3641BF59689')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'76AB76F4-5138-4602-B4FA-EF457489C14A', 74.304815, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'8FD8D112-2730-4777-A327-B3641BF59689', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'76EA904A-39F7-4BAD-BD5E-2E168ABA7705', 46.172796, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'7742EE64-54AB-4754-87B8-CA18F6DA1167', 0.014370931032551108, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'8FD8D112-2730-4777-A327-B3641BF59689', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720')
GO
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'77FF4A76-AE7B-4DA9-83BE-43B7ED8E50DD', 79.513936, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'78BC4A72-D970-44FE-8F77-A2D1DDBB5F73', 68.551547, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'7ABB82A5-BDA0-4032-A07E-8EDFD1C07E4D', 0.80088225188868056, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'E90CB555-E79A-4B52-8057-D688B4AD619B', N'8FD8D112-2730-4777-A327-B3641BF59689')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'7AFCA072-5BC5-4FED-B9EE-A1A0747951F0', 0.07290628815277192, N'01C13528-D7E0-4518-A162-F38247EAD265', N'8FD8D112-2730-4777-A327-B3641BF59689', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'7AFDC4CE-DA8A-47BF-ABFE-09D61A764DC4', 0.038789849782427735, N'01C13528-D7E0-4518-A162-F38247EAD265', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'7BB49A8D-8AC9-4C3B-9AB4-DCAD315F1622', 0.011038655949147297, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720', N'E90CB555-E79A-4B52-8057-D688B4AD619B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'7BF7DBDB-45BC-43E5-9670-B6AD2F5F393F', 91.080292, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'7E82521E-ED43-4F0F-AF8F-868E1C18B08F', 21.586373, N'01C13528-D7E0-4518-A162-F38247EAD265', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF', N'8FD8D112-2730-4777-A327-B3641BF59689')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'7E8DDF94-4255-4A8F-B296-BB9BDCB29D06', 0.010416783095919395, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B', N'E90CB555-E79A-4B52-8057-D688B4AD619B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'7F0A914B-5E05-41BA-85AF-5C8F48FC9874', 90.028413, N'01C13528-D7E0-4518-A162-F38247EAD265', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'7F9CD22A-C5C4-4B73-8E7A-9E08D159E1BB', 6.916564, N'01C13528-D7E0-4518-A162-F38247EAD265', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE', N'8FD8D112-2730-4777-A327-B3641BF59689')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'7FF1F3A3-80BB-44AD-9A16-7817BDFA617F', 83.161231, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93', N'E90CB555-E79A-4B52-8057-D688B4AD619B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'80453B0A-0431-45A3-BDD7-54510231F53E', 0.029770814741459529, N'01C13528-D7E0-4518-A162-F38247EAD265', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'8097BC8D-9D09-4F2B-8930-7FEE0780A313', 44.695351, N'01C13528-D7E0-4518-A162-F38247EAD265', N'8FD8D112-2730-4777-A327-B3641BF59689', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'80C4C4C2-7C04-4138-915D-A2F01E7C3FD2', 88.818452, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF', N'E90CB555-E79A-4B52-8057-D688B4AD619B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'81110337-3B0E-4BB2-A7E9-74B0E5ED7971', 77.387114, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'816310E1-B27F-4888-B3F7-ECA235B81CA7', 61.203182, N'01C13528-D7E0-4518-A162-F38247EAD265', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'820D7C42-D15B-491C-B592-9C5F47CFEE16', 13.605441, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'826C453B-64D9-4BF0-8B74-CE9B7500CEA7', 88.540705, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'826DC215-B863-458D-AB30-E64B0E5E7107', 70.417361, N'01C13528-D7E0-4518-A162-F38247EAD265', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE', N'E90CB555-E79A-4B52-8057-D688B4AD619B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'831A830F-E36D-4E83-872C-E0D67B0A6D75', 0.013458078053219028, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C', N'8FD8D112-2730-4777-A327-B3641BF59689')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'834E1D6A-DABA-418D-8B27-D05482B12BFC', 71.907349, N'01C13528-D7E0-4518-A162-F38247EAD265', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'83787CB5-5F06-4812-9616-3E42CF90CFA2', 0.020391434382229973, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'E90CB555-E79A-4B52-8057-D688B4AD619B', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'83F92B5F-F4EF-4CE4-8BD7-F7291BDA1167', 0.019177487899820177, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'8FD8D112-2730-4777-A327-B3641BF59689', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'848C677F-D643-41E1-92F6-C7D84876893D', 79.072773, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'848D37DF-E0FC-4CCF-998D-9D6BEFE757B2', 4.424863, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'84C9CBEC-A715-4D0A-95C1-C9C3ED51D8B5', 0.015083219931401213, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C', N'E90CB555-E79A-4B52-8057-D688B4AD619B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'84DFF5F9-0FAF-4881-B36B-FEEEF737A14A', 0.025201048293046056, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'84E4584E-F687-4575-8F46-3F57CE806D80', 0.012774464805493572, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'85522748-E4BA-4B57-8A92-F3292F48B57B', 63.145834, N'01C13528-D7E0-4518-A162-F38247EAD265', N'E90CB555-E79A-4B52-8057-D688B4AD619B', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'86AC698B-33CF-4267-AE17-332961B53246', 0.0294483395435955, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'86D09F8E-7FE0-42E3-8B08-B8E5955E6CD6', 33.159647, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'E90CB555-E79A-4B52-8057-D688B4AD619B', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'87240AAF-D85A-40FF-A05D-52D3C3FCF2F6', 94.873437, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'885BEC58-CD69-4F12-8473-545D46E28743', 86.5174, N'01C13528-D7E0-4518-A162-F38247EAD265', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'886001A2-ED71-43E3-88DB-4DAC0154EF0B', 95.998927, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'E90CB555-E79A-4B52-8057-D688B4AD619B', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'89B03736-C14D-4F93-8E4B-C1D29E7AB905', 0.38642653606480221, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'89B9AD74-774C-4DF9-A689-9ADB7002FA8C', 0.010207999629572109, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'8A188BBD-DB24-4A06-850D-C47459C8551E', 67.424074, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'E90CB555-E79A-4B52-8057-D688B4AD619B', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'8AE55F14-E890-44F0-8E67-F24B5B067489', 5.35801, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'E90CB555-E79A-4B52-8057-D688B4AD619B', N'8FD8D112-2730-4777-A327-B3641BF59689')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'8B50ACD3-A1FB-4AF3-BB5E-7A42A0DE8031', 19.903509, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93', N'E90CB555-E79A-4B52-8057-D688B4AD619B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'8B68BCAD-31AF-4738-B78A-24B1AAD4F697', 0.025366234523267622, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF', N'8FD8D112-2730-4777-A327-B3641BF59689')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'8B8E2BD6-1864-490B-83F9-82D6C03AE28B', 30.054896, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'8FD8D112-2730-4777-A327-B3641BF59689', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'8BAAA45A-D075-4318-A72A-1CE0B6C915A0', 74.119682, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'8C24DDC8-1742-4C9D-B0D5-FA7D33449EB1', 32.62289, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'8C5D5395-7C73-48FD-BA55-7FFD855EA306', 0.56724875843428, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'8C5DA424-D29B-44F6-8A7C-1A95D4BA9863', 0.014824421479175438, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'8CB8911E-208A-473F-84DC-E10C6DA45CBD', 79.683586, N'01C13528-D7E0-4518-A162-F38247EAD265', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B', N'E90CB555-E79A-4B52-8057-D688B4AD619B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'8CC43DE3-270F-4E8E-83E1-A925339B9DE9', 6.918734, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'8CDDDACA-3A5F-4121-9A0C-24EE81184DF5', 0.012879630489583476, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'8D61B1D9-ABA6-48CC-A674-AD08CA738E6B', 0.015509429065966657, N'01C13528-D7E0-4518-A162-F38247EAD265', N'E90CB555-E79A-4B52-8057-D688B4AD619B', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'8FB729CA-A4E3-4D7E-8AA7-19C66F84BE02', 44.242521, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'8FCA2EB5-A78E-4C1E-861A-E78095148272', 0.01371972901285164, N'01C13528-D7E0-4518-A162-F38247EAD265', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720', N'E90CB555-E79A-4B52-8057-D688B4AD619B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'8FE296D8-504F-4626-B08A-6D9DB3CD6DEF', 0.017769223910310338, N'01C13528-D7E0-4518-A162-F38247EAD265', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93', N'E90CB555-E79A-4B52-8057-D688B4AD619B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'8FF4F46D-4182-4A22-9E49-EEC67EB9508D', 0.013692770756535718, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'9054F2DD-E1B6-48B3-A2D0-0AE93310882C', 0.034594093148539527, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'906AE923-551E-4CAC-9325-C4DDD88A36C0', 27.167054, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'E90CB555-E79A-4B52-8057-D688B4AD619B', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'920A636A-C7B4-47F6-9285-E36D669CF89A', 0.1036549996745233, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'9283FEF2-C70A-4450-9C6D-454A3ACB3706', 84.065451, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'93B1DA43-FF7F-4036-B33A-8975EC3E8B8B', 0.01125892173846939, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'E90CB555-E79A-4B52-8057-D688B4AD619B', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'93BCB596-BDE4-4A3B-9696-ADBB2989C551', 0.01225781769903846, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'94B71C44-D753-45F8-A1F6-FD63743C3D6D', 0.048220957686543615, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720', N'E90CB555-E79A-4B52-8057-D688B4AD619B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'94CE398A-05CE-4E90-8378-7096F27561D5', 29.945766, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'951FE53A-5578-4BF0-85A2-7CEE3FE18322', 0.033017847797627009, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'95997D85-2D18-4D77-810B-6EB513878938', 1.762895, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'95C358DC-0990-445F-B3D4-B4E9B44A3DBA', 0.019726219406335087, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'95CE9581-3AB0-491A-BD39-3731200B2B17', 0.027094632528910853, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'E90CB555-E79A-4B52-8057-D688B4AD619B', N'8FD8D112-2730-4777-A327-B3641BF59689')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'96079A0A-3426-48FB-97D1-581140577C41', 30.28665, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'9711C977-3145-47DB-9311-5EC8252EEA5C', 0.057820520248225808, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'E90CB555-E79A-4B52-8057-D688B4AD619B', N'8FD8D112-2730-4777-A327-B3641BF59689')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'9741AF8D-99CC-4A2B-AC30-487D9C0DFF70', 0.012099273278929193, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'97477B93-FBD7-461F-B147-2C14B9ED8201', 36.153825, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'9756FAD9-249F-4435-B960-6DC062B44C83', 0.04723517633812413, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'97A9FAB5-C093-4E01-86E0-5036DDE7AEB2', 75.750667, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'97B79C6F-0520-4FA5-90B6-02FF53656F6A', 18.070806, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'8FD8D112-2730-4777-A327-B3641BF59689', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'97C0C7B9-3623-4066-8A64-8DA05E0871A4', 36.4175, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'98AEE92B-5C24-4D5F-A765-DDD9768ACA6D', 80.675384, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C', N'8FD8D112-2730-4777-A327-B3641BF59689')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'98E99F81-1D12-4EEE-8103-07B21191EC11', 0.016393479709839343, N'01C13528-D7E0-4518-A162-F38247EAD265', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93', N'8FD8D112-2730-4777-A327-B3641BF59689')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'996D954D-CA55-4F92-98C9-9DBFB979C428', 0.0301571364737387, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B', N'E90CB555-E79A-4B52-8057-D688B4AD619B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'9C0CAB78-7464-4876-B7CD-D7A201759690', 0.448642139699984, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'E90CB555-E79A-4B52-8057-D688B4AD619B', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'9C8E0D94-ED4B-4329-BD80-D607837BC380', 11.781182, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'9CAB1080-A383-4558-9BE3-61DC21DAC09A', 0.022390529343460419, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF', N'8FD8D112-2730-4777-A327-B3641BF59689')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'9CD57A92-22D3-4FE0-ACFA-75D26CBBA600', 0.010076329404397842, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'9DBC6FD2-0F09-4631-971E-96EE63B8F72E', 13.39466, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720', N'8FD8D112-2730-4777-A327-B3641BF59689')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'9DD83D21-331A-4A2A-A569-F575D5D9D256', 0.041066581248177671, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'8FD8D112-2730-4777-A327-B3641BF59689', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'9E90ADEB-5BD5-4BEE-94FC-0F616C483E40', 0.016123635001277153, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'E90CB555-E79A-4B52-8057-D688B4AD619B', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'9F2F1B87-C28C-4867-8126-44E2EDB35BE2', 0.012565961085857369, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93', N'8FD8D112-2730-4777-A327-B3641BF59689')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'A05CCB26-B426-413C-B651-443DC3C38812', 0.01293526838566984, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'A1576FC3-95D4-4B9E-855F-B448BBFF73DD', 0.15807922361602431, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'8FD8D112-2730-4777-A327-B3641BF59689', N'E90CB555-E79A-4B52-8057-D688B4AD619B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'A17E60DC-4AB2-4BDA-90D0-0CFAAE1C99FD', 3.070957, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'A2778553-0EE7-4354-BAB1-BDC63906BCBE', 83.810986, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'A2E1F691-231A-4C20-B81E-72F1CFB4A580', 84.697277, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'A4ABF8EC-D29B-49A3-92F6-6B9AA72FD213', 63.867992, N'01C13528-D7E0-4518-A162-F38247EAD265', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'A4B7BF1F-C29E-4F4E-89B2-CC563736B9DE', 4.267555, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'A516D9D9-7746-4206-8B72-FD0DE516E859', 59.798261, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'A51BD42E-E80D-47D6-B1C7-6D33AF4EAFDD', 69.017582, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'8FD8D112-2730-4777-A327-B3641BF59689', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'A58B2594-C96F-464B-9211-2632A6DEF398', 0.046325522124536625, N'01C13528-D7E0-4518-A162-F38247EAD265', N'8FD8D112-2730-4777-A327-B3641BF59689', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'A60A1DA1-1CB7-4BC8-BA34-AF542ABC6C34', 0.030653323479311611, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'A63070F5-9B7D-435D-B254-69F7978D5FF9', 20.398646, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'A73556F4-D5C7-4C7A-97E4-EC5D18D3D4AB', 0.055337874802042587, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C', N'8FD8D112-2730-4777-A327-B3641BF59689')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'A73630B7-700D-4B57-9D82-BCEC19577068', 0.020751702189499645, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'A76C054B-BE63-44D6-90BD-E4AF92F845AF', 0.014201043404622903, N'01C13528-D7E0-4518-A162-F38247EAD265', N'E90CB555-E79A-4B52-8057-D688B4AD619B', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE')
GO
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'A7C7EB29-DF65-4CFA-9FA7-67F4E0958151', 0.09874458114424825, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'A8AF1BD7-7B0F-4157-8F3F-90F88ECBB511', 95.739463, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'A91D9672-AEFD-49B8-BC46-19131661296A', 36.709572, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B', N'E90CB555-E79A-4B52-8057-D688B4AD619B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'A9EF9D27-5BE8-4895-9095-9B06DCF2705F', 79.580065, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'8FD8D112-2730-4777-A327-B3641BF59689', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'AA118EA8-4AB3-448C-BEAF-E2F3AD26D001', 64.357853, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C', N'8FD8D112-2730-4777-A327-B3641BF59689')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'AA1E24AA-CAD4-4327-9B19-B712F126678D', 0.0311293165038702, N'01C13528-D7E0-4518-A162-F38247EAD265', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE', N'8FD8D112-2730-4777-A327-B3641BF59689')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'ABB52FBB-F350-4063-A0C8-2B0D5482EA50', 0.0362005037300094, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'E90CB555-E79A-4B52-8057-D688B4AD619B', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'AC14908B-DAFF-47D1-BE84-663B76E82895', 24.502943, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'AC3EBCDE-7912-4B99-9DBA-4296E958B778', 0.017674431839923378, N'01C13528-D7E0-4518-A162-F38247EAD265', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'AC8B93D0-D517-441D-A551-12C70A120EBD', 43.008072, N'01C13528-D7E0-4518-A162-F38247EAD265', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'AC94CF8C-B336-40D4-8BFB-6D3DA4771EB3', 0.23432621255027761, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'ACB5EF6D-F925-4862-8F85-4571F29FFA4B', 0.070316510787853614, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'ADF52DC7-84A4-4249-87AC-525E19570CB6', 0.013601158089647165, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'AE84929E-D829-497A-89DC-ADA0061F182B', 20.67245, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93', N'E90CB555-E79A-4B52-8057-D688B4AD619B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'AEA3CFD8-C3C7-48AE-BB86-A57D538E3875', 0.016840762540296997, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'8FD8D112-2730-4777-A327-B3641BF59689', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'B107E0A4-BC6E-4EEB-A9DF-399FBD9E7A10', 90.202764, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B', N'E90CB555-E79A-4B52-8057-D688B4AD619B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'B13C9E67-E1B7-4F96-84FA-D07D6DE7BE8F', 6.325942, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'E90CB555-E79A-4B52-8057-D688B4AD619B', N'8FD8D112-2730-4777-A327-B3641BF59689')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'B1496CCD-E406-4CD7-9BDE-F713BF7E3AC1', 0.038059919939436013, N'01C13528-D7E0-4518-A162-F38247EAD265', N'8FD8D112-2730-4777-A327-B3641BF59689', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'B19BC72D-7093-4217-A3A2-21E075FBF3F6', 0.012024834023921556, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'E90CB555-E79A-4B52-8057-D688B4AD619B', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'B318A55D-65B2-4122-BE66-EF58AD35931F', 0.14442560492664625, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'B3866E3F-F35A-4B8B-AD4C-265C81B4C57E', 0.019101764363118046, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'B3DC3214-43B4-4A98-A168-487F01108BD2', 82.059686, N'01C13528-D7E0-4518-A162-F38247EAD265', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'B4E3B406-831C-4105-BE79-DFD0B69B4B75', 0.033224925937486972, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'B59E37C3-BFD8-45B6-937B-2144A3FB2D9B', 0.011876640847007821, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'8FD8D112-2730-4777-A327-B3641BF59689', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'B60E088E-2C6D-4CF5-A8C5-C06C2246377C', 0.022602690294253349, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'B70D24C4-7B7F-412F-BFBE-840245362BE7', 0.011380793686081338, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93', N'8FD8D112-2730-4777-A327-B3641BF59689')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'B782E730-CE59-4118-A9D9-962384799E85', 0.010382679721668182, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'B8301CA2-E7CB-4181-A3E2-8DC6BF93AAEE', 0.027240851514150042, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'E90CB555-E79A-4B52-8057-D688B4AD619B', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'B8C52B97-63C1-4308-83E1-353C7C56F569', 16.575668, N'01C13528-D7E0-4518-A162-F38247EAD265', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C', N'E90CB555-E79A-4B52-8057-D688B4AD619B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'B92392E3-BBB0-4D2D-A5D2-68C66B196B2A', 66.828962, N'01C13528-D7E0-4518-A162-F38247EAD265', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF', N'E90CB555-E79A-4B52-8057-D688B4AD619B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'B95F1EC1-F85B-431B-AE3D-924358D1688D', 52.144473, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B', N'8FD8D112-2730-4777-A327-B3641BF59689')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'B97C47BF-3E82-40F1-8BBA-AF2AE1AB1283', 40.516692, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE', N'E90CB555-E79A-4B52-8057-D688B4AD619B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'B9E8EEE2-6CDE-44E9-B874-49181857522C', 39.422485, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'8FD8D112-2730-4777-A327-B3641BF59689', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'BA2E97B2-63A8-4769-986C-97FD26CE2A64', 0.01054035809833684, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'BAEDCF09-DD63-4947-B450-4986AB726E7B', 0.098226684202094336, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'8FD8D112-2730-4777-A327-B3641BF59689', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'BAF0DDF9-9284-499C-BA50-C20558CBA131', 0.014802276299970319, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'E90CB555-E79A-4B52-8057-D688B4AD619B', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'BB002965-8647-43FC-90C5-DF543E4CCD27', 69.584914, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720', N'8FD8D112-2730-4777-A327-B3641BF59689')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'BBB6CCB5-8D40-4615-AAAD-7068E4C5C3DC', 6.92398, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'BBE55559-B397-4D1D-A82F-B18E79496D04', 0.017796078473943561, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'8FD8D112-2730-4777-A327-B3641BF59689', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'BD2D3C1C-4003-4DB4-8CE9-985975BD9E34', 0.096506782593187429, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'8FD8D112-2730-4777-A327-B3641BF59689', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'BD42E91D-1763-4122-9D02-B5601EBFCAFB', 0.04655774606129616, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'BD953325-DC81-413A-817D-76D3688C02C5', 96.314249, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'BE56BE1F-1479-416D-8275-EFFDA13EB0E6', 33.589944, N'01C13528-D7E0-4518-A162-F38247EAD265', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'C01AD457-C4EC-43A9-990E-F0038085DC06', 0.011108460262210539, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'E90CB555-E79A-4B52-8057-D688B4AD619B', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'C0E1303C-A799-40FF-B010-1ADE2C41E920', 64.476906, N'01C13528-D7E0-4518-A162-F38247EAD265', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93', N'E90CB555-E79A-4B52-8057-D688B4AD619B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'C0F79A16-7471-4FA5-8A25-F78AF33DD40E', 25.302645, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'C10170B8-F838-4519-B9BF-6A2D0A18E859', 49.040199, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720', N'E90CB555-E79A-4B52-8057-D688B4AD619B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'C13FF432-7676-487E-9D48-8A1EDAFEA4F2', 0.38793641877270885, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'C2574A1F-3E81-4725-AF8F-01757685775C', 0.014354765630028655, N'01C13528-D7E0-4518-A162-F38247EAD265', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'C2D9E64D-2846-49F9-A88C-A1BF08722E89', 0.019850517267756541, N'01C13528-D7E0-4518-A162-F38247EAD265', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'C3A29C4D-71B6-442C-A3C1-3CFE86ADC382', 75.47172, N'01C13528-D7E0-4518-A162-F38247EAD265', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'C50A6C53-FF70-48E3-9E5D-F3D8DABBA8E7', 33.957772, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'C50B618A-2D67-4F72-8CA0-CC9A4B31D3A3', 0.049022861615422908, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'C5CF134F-E22F-47B4-BF7F-749EB56928E7', 0.011178133460519626, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'C5DC5B31-42F6-4272-8811-212554A92719', 98.711569, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'E90CB555-E79A-4B52-8057-D688B4AD619B', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'C64DF9E7-B26A-4FB8-BF80-F162CA24DEAD', 84.699888, N'01C13528-D7E0-4518-A162-F38247EAD265', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'C6E9EF51-9787-494F-90BC-A925311D0ED9', 2.725107, N'01C13528-D7E0-4518-A162-F38247EAD265', N'8FD8D112-2730-4777-A327-B3641BF59689', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'C7F7102B-13E5-4686-BA97-133922CDABA3', 96.359234, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF', N'E90CB555-E79A-4B52-8057-D688B4AD619B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'C89E9C93-E54E-4D5F-8644-AA63CBDF55DC', 0.013249996157501115, N'01C13528-D7E0-4518-A162-F38247EAD265', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'C8B67C78-7155-4162-9C19-9EFB52CE0E2E', 64.159046, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'C9D5DB4F-6BC6-4A8F-AF53-54A6C82BD5E0', 0.83286831519068516, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'C9F7F497-B49E-4F55-9D07-97AEA080F6E4', 89.833457, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'8FD8D112-2730-4777-A327-B3641BF59689', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'CB18D8E5-26CC-4485-899F-667EABEA937E', 0.079536531088960888, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'E90CB555-E79A-4B52-8057-D688B4AD619B', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'CBB13850-503B-4104-870C-AE203BA49CF1', 0.073500006357750544, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'CE3451EB-CEC9-439A-810F-9E7322602945', 9.647388, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'CE81CF24-32F5-4C73-B861-A3F8CFF4699A', 0.073737356531990553, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93', N'8FD8D112-2730-4777-A327-B3641BF59689')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'CF4679E1-22AB-4362-800F-C85384848535', 56.277078, N'01C13528-D7E0-4518-A162-F38247EAD265', N'E90CB555-E79A-4B52-8057-D688B4AD619B', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'D1A17C90-28AA-4D3E-A6A2-06A5A9BAE22F', 55.863319, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'D1F3ED43-0B69-4476-BAA2-25AE95397D5A', 0.060751237654589119, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720', N'8FD8D112-2730-4777-A327-B3641BF59689')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'D2192BF1-855A-4866-8876-0A1936D5698A', 67.929332, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'D22DD5C5-0B40-4AA7-AB42-4851882E574A', 0.014489061642292829, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720', N'8FD8D112-2730-4777-A327-B3641BF59689')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'D2F3E461-E1B1-4532-9C26-FC2D4B281161', 95.092174, N'01C13528-D7E0-4518-A162-F38247EAD265', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'D3ECFD0E-AA66-4B14-8F6F-3348ED164798', 0.2259956974939111, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'D3F3074E-365D-47E8-A8F6-7C1EB3009B89', 0.073091956405618261, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'D46B11E0-69CE-416E-AAC8-17524764D1DC', 0.010713340147231933, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'D4942A5B-9734-4DBD-BEBD-07F98E3A9C41', 0.017286932762578741, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE', N'E90CB555-E79A-4B52-8057-D688B4AD619B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'D58AEBE2-5FAC-4445-ABE1-F5FE5F83A6A8', 84.968215, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'D5D11A25-BF82-4275-BFD1-279E9B1485DA', 0.010386664461785536, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'8FD8D112-2730-4777-A327-B3641BF59689', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'D5EE57E7-BCC4-47C5-8C59-3CA91327C1C4', 48.188818, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'D6007BCA-1031-40D1-9B29-64CCFBC66C6D', 12.572839, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C', N'E90CB555-E79A-4B52-8057-D688B4AD619B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'D6813C00-5FBC-4747-98D2-39D8D1D46130', 36.805048, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'E90CB555-E79A-4B52-8057-D688B4AD619B', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'D6A4AEF1-5D87-4AEC-B151-D46BA6D96D61', 0.021794039094931914, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'E90CB555-E79A-4B52-8057-D688B4AD619B', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'D7FAE1CE-2161-49E4-9EE0-C0D8757A7907', 95.704828, N'01C13528-D7E0-4518-A162-F38247EAD265', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'D8B2C842-81EF-4AA4-9CB5-4A34D5FCD9FC', 0.067606148752186554, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'D8CA4A40-F842-457A-9E79-B5AF8D40E5AF', 0.024520973585639438, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720', N'8FD8D112-2730-4777-A327-B3641BF59689')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'D9BB1A0F-615A-475A-B635-0BB0896A50F4', 0.043177898511817595, N'01C13528-D7E0-4518-A162-F38247EAD265', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE', N'E90CB555-E79A-4B52-8057-D688B4AD619B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'DA8E10B6-059A-450D-BE77-1672624D043D', 0.071590150398019761, N'01C13528-D7E0-4518-A162-F38247EAD265', N'8FD8D112-2730-4777-A327-B3641BF59689', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'DBD9FAB7-5FA8-4282-8285-4CD5734FE3BB', 2.577742, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'DBE7DAF3-53CE-48D2-8A9D-3AF90BF95C40', 0.068617315126597911, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B', N'8FD8D112-2730-4777-A327-B3641BF59689')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'DD1C2962-7914-4B0B-9DAD-8ABE3FBDE481', 23.159997, N'01C13528-D7E0-4518-A162-F38247EAD265', N'E90CB555-E79A-4B52-8057-D688B4AD619B', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'DD998926-56BD-4159-B2D5-566D3963A6DC', 14.221411, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'DDDCAB71-B8FC-4339-A651-C91349053287', 99.292021, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B', N'8FD8D112-2730-4777-A327-B3641BF59689')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'DE3B4EA8-FB17-4A50-A70B-7944723AA9F1', 0.010164967666864247, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'DE498762-E352-456F-B9C8-DAC2D0BE2A61', 90.590739, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'E90CB555-E79A-4B52-8057-D688B4AD619B', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'E02F8DBE-47D0-4A0A-9668-C1F2CBD442D3', 0.012886467080720882, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF', N'E90CB555-E79A-4B52-8057-D688B4AD619B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'E1037018-D569-4879-A00E-F45440620421', 0.030436441527091233, N'01C13528-D7E0-4518-A162-F38247EAD265', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'E17710C8-EE59-4C3D-AE72-86F23D1C619D', 73.031238, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'E216CFA4-C4F7-4390-B879-5FBCE8CB2165', 21.478703, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'E26D96A2-30B5-4C8F-815E-0E5DCE7647A2', 0.040811424162395513, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'E35485A1-C651-4517-8645-0870D177E439', 0.01094633495798107, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B')
GO
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'E3905B3D-6158-4F40-9227-0B023074F1EF', 0.18663645644558335, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'8FD8D112-2730-4777-A327-B3641BF59689', N'E90CB555-E79A-4B52-8057-D688B4AD619B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'E4CD2CE7-76A1-4F64-9D28-47B916D1CE4C', 42.799919, N'01C13528-D7E0-4518-A162-F38247EAD265', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720', N'E90CB555-E79A-4B52-8057-D688B4AD619B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'E4F4066B-22EB-4A3A-900F-BDBDFCBF0109', 23.761614, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'E6408AC7-97E2-4739-AA79-D88B6537093D', 73.523151, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'E703C575-EE0C-4ACB-9877-D95AC9E32E01', 0.014587562845226528, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'E720CE15-FBC1-4485-B6C9-3CED7E7231CB', 0.017900833998065885, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'E87ACDF4-90AE-4FA5-A1AB-FAFC9E8F4A05', 0.039521559900160638, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'E9ADD55B-E96B-464A-A08F-9719AD3981B3', 84.198892, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93', N'8FD8D112-2730-4777-A327-B3641BF59689')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'E9B6296A-56ED-41FC-BD25-E1C4FA0FFC72', 0.041225388391598478, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'EACD4E6B-BC00-40F2-AB62-AE7A5C238104', 0.010159786208837982, N'01C13528-D7E0-4518-A162-F38247EAD265', N'E90CB555-E79A-4B52-8057-D688B4AD619B', N'8FD8D112-2730-4777-A327-B3641BF59689')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'EB5657F6-1039-43A6-899F-A5FD5A259AFE', 0.01526782684440005, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'EBF835F6-3ACF-47D2-90AD-F61D614ED17B', 61.460703, N'01C13528-D7E0-4518-A162-F38247EAD265', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'EDC7C702-186F-4BC9-B9AA-7CA5F5F9C75D', 86.509522, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'8FD8D112-2730-4777-A327-B3641BF59689', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'EE35D16D-3FA8-47C2-AEE1-BDADA612E222', 98.427268, N'01C13528-D7E0-4518-A162-F38247EAD265', N'8FD8D112-2730-4777-A327-B3641BF59689', N'E90CB555-E79A-4B52-8057-D688B4AD619B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'EEA0BA4D-2D5D-4BF6-9F09-BEB67BEE4133', 14.573581, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'8FD8D112-2730-4777-A327-B3641BF59689', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'EEA25F8A-4559-458D-8034-F503631635DF', 99.242488, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'EF82A202-3976-420C-A082-E899E9F93415', 0.010130524822272858, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720', N'E90CB555-E79A-4B52-8057-D688B4AD619B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'EFDC4EC1-2BEC-42B0-8C8F-2C51EC7B5883', 77.308021, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'EFE97A44-4415-44E1-980B-A37E9157FC54', 0.010448793659605136, N'01C13528-D7E0-4518-A162-F38247EAD265', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'F002E6A9-1B68-4A2B-B674-FFC90E2D9B0C', 0.012922047978168563, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'F0F086CE-53D7-423C-96CB-DCB595ABFB62', 0.015836357470549838, N'01C13528-D7E0-4518-A162-F38247EAD265', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B', N'E90CB555-E79A-4B52-8057-D688B4AD619B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'F1C03019-114C-4C93-8AC8-D6B39CE92F11', 0.018670682506425607, N'01C13528-D7E0-4518-A162-F38247EAD265', N'8FD8D112-2730-4777-A327-B3641BF59689', N'E90CB555-E79A-4B52-8057-D688B4AD619B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'F1DA3633-F66E-4F4C-B66A-ED21F15F8D37', 0.014963572230854042, N'01C13528-D7E0-4518-A162-F38247EAD265', N'E90CB555-E79A-4B52-8057-D688B4AD619B', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'F2178EB6-6DB8-4320-B0A7-E4D642F1EC2F', 95.383684, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'E90CB555-E79A-4B52-8057-D688B4AD619B', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'F2A56330-B948-4046-9066-0E9900DD3CE4', 0.084881126528730311, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'F3E5F916-8A65-4C0C-AE1F-06FA59AA22E0', 0.090285969975581262, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'8FD8D112-2730-4777-A327-B3641BF59689', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'F3E9AD50-7FEB-4617-AE3C-7E08F81B60BF', 57.663035, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'E90CB555-E79A-4B52-8057-D688B4AD619B', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'F4581F60-854B-471C-B24B-7ECB38B05B0C', 0.33543640779809142, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'F51FA6CE-F0B9-4C18-94C5-8A3A23AE4720', 73.497316, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'F53EB70D-B0AA-42F9-99A2-1B40981FD154', 81.58059, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'F68EFA3E-ADCE-43DF-8114-E6B9A20B22C5', 77.047238, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'F6E51E61-0F5D-4F4E-89FB-A5FF6FFFEB63', 63.310724, N'01C13528-D7E0-4518-A162-F38247EAD265', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'F6E5E863-AABA-46C1-96B3-496CD2A55319', 0.011895493191370614, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'F708C768-B0E4-45A1-9ED5-55B6EB93F4DD', 0.011573786470838508, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'F7E370C7-C519-49B3-866C-0089DA0F9975', 24.256897, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'F81C2111-520C-44A3-855B-823BCB9928D3', 0.023092429643428638, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'8FD8D112-2730-4777-A327-B3641BF59689', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'F8FC1EDF-B4AF-4265-97EC-8C5EADAE9B07', 0.010979323606033235, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'9BD9D0F2-556C-466E-BA95-EC6A313CBB7C', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'F931D429-86F6-4789-8F0F-B812B347E46C', 0.013369670314625777, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'1AD1A603-4EF0-4F2D-8E13-9086F3D53BEE', N'8FD8D112-2730-4777-A327-B3641BF59689')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'FB5DCA10-EFB9-491C-ABDE-949ABC7A12CB', 0.012460717432534966, N'01C13528-D7E0-4518-A162-F38247EAD265', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'FBD011C6-0A55-41CA-87E9-0E287249E994', 13.968402, N'01C13528-D7E0-4518-A162-F38247EAD265', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93', N'8FD8D112-2730-4777-A327-B3641BF59689')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'FC05469A-6D84-42C8-A125-7891B68ADAD3', 0.013491693070134866, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'FC0C34FC-A6D1-480D-BEF8-A76E993FB47E', 0.012646578108497598, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'FC6261FA-6F91-4207-BD04-0CF8ACD455E5', 0.015795112373063368, N'01C13528-D7E0-4518-A162-F38247EAD265', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'FCDFF3EF-38FE-450E-BA98-CEC3C50545AC', 17.294898, N'B4C550D6-8AD7-47D2-B5D2-96FF58301F76', N'8FD8D112-2730-4777-A327-B3641BF59689', N'E90CB555-E79A-4B52-8057-D688B4AD619B')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'FD2561E4-828A-48AB-B4F9-C5A38FF93637', 21.170663, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'FF8D90B9-32E3-4F40-8FC4-5BD5AADB6FF3', 0.016217421126775069, N'40B8FAB3-6DC6-4842-B9B5-0ACC13D1F0C1', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF', N'2BA55356-42FD-4FD1-BB7D-49BBAC0C4C93')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'FFD9E582-A3C8-4FA3-B48D-5E8FF76E8D2D', 10.180533, N'2F126F94-CEFF-400A-8B78-CDCFA3439FCE', N'9C6DF2EC-19D9-418E-9F60-F5C9466CD6BF', N'8FD8D112-2730-4777-A327-B3641BF59689')
INSERT [dbo].[Exchange] ([Id], [Rate], [AgentId], [SenderCountryId], [ReceiverCountryId]) VALUES (N'FFF7AFEE-0F0B-4BFA-8BDD-1C6AF80A6012', 0.016270559092042926, N'01C13528-D7E0-4518-A162-F38247EAD265', N'8F3281B5-3DE2-46AC-87A0-FF034B0A9720', N'B4481931-C8C9-4FA8-B0CD-3BE029C32F7B')
GO
INSERT [dbo].[Product] ([Id], [Name], [Photo], [Stock], [Price]) VALUES (N'074A4AD4-9425-4251-B902-4C33560B1056', N'Product1', N'https://pokemon-faction.com/cdn/shop/products/product-image-1804697401_1024x1024.jpg?v=1626812079', 50, 6.13)
INSERT [dbo].[Product] ([Id], [Name], [Photo], [Stock], [Price]) VALUES (N'28AB2D92-3FC6-4A71-9E72-8102D6DC28F5', N'Product2', N'https://pokemon-faction.com/cdn/shop/products/product-image-1804715637_1024x1024.jpg?v=1626812080', 36, 25.23)
INSERT [dbo].[Product] ([Id], [Name], [Photo], [Stock], [Price]) VALUES (N'384C3714-D516-42B7-A656-88CAB7E5CE9E', N'Product4', N'https://pokemon-faction.com/cdn/shop/products/product-image-1804697393_1024x1024.jpg?v=1626812075', 12, 21.81)
INSERT [dbo].[Product] ([Id], [Name], [Photo], [Stock], [Price]) VALUES (N'389A4D2F-2A07-4CF4-B028-A891D224E3BB', N'Product5', N'https://pokemon-faction.com/cdn/shop/products/product-image-1714578094_1024x1024.jpg?v=1626812078', 26, 22.55)
INSERT [dbo].[Product] ([Id], [Name], [Photo], [Stock], [Price]) VALUES (N'6c70933a-ba19-4342-a844-ab1610915ad1', N'a new product v1314125', N'https://pokemon-faction.com/cdn/shop/products/product-image-1714578097_1024x1024.jpg?v=1627213876', 10000, 12)
INSERT [dbo].[Product] ([Id], [Name], [Photo], [Stock], [Price]) VALUES (N'8D883CDB-321A-4CE6-B470-BA606A9CEA26', N'Product6', N'https://pokemon-faction.com/cdn/shop/products/product-image-1804718336_1024x1024.jpg?v=1626812077', 35, 28.07)
INSERT [dbo].[Product] ([Id], [Name], [Photo], [Stock], [Price]) VALUES (N'8F184FF0-8F75-49F7-932B-A4AF910A2A26', N'Product7', N'https://pokemon-faction.com/cdn/shop/products/peluche-pokemon-mimiqui-1_480x480_9bcb7c4f-b026-4f82-9963-8188bec52455_1024x1024.jpg?v=1629020328', 888, 20.74)
INSERT [dbo].[Product] ([Id], [Name], [Photo], [Stock], [Price]) VALUES (N'99D82096-FBE1-486C-9F3E-A1F5A8216225', N'Product8', N'https://pokemon-faction.com/cdn/shop/products/product-image-1714578092_1024x1024.jpg?v=1626812080', 28, 20.08)
INSERT [dbo].[Product] ([Id], [Name], [Photo], [Stock], [Price]) VALUES (N'A1D0B914-A7B5-481A-B7F6-C4A7C1FADABD', N'Product9', N'https://pokemon-faction.com/cdn/shop/products/product-image-1804715633_1024x1024.jpg?v=1627213674', 21, 19.91)
INSERT [dbo].[Product] ([Id], [Name], [Photo], [Stock], [Price]) VALUES (N'BE479712-737F-4703-9D33-FE6EA3428CC9', N'Product10', N'https://pokemon-faction.com/cdn/shop/products/product-image-1804715638_1024x1024.jpg?v=1626812076', 13, 7.66)
INSERT [dbo].[Product] ([Id], [Name], [Photo], [Stock], [Price]) VALUES (N'C289B345-4A19-420B-8F17-05661C2ACDE7', N'Product11', N'https://pokemon-faction.com/cdn/shop/files/Sa5e88dc6d4ca4984b1d6da5a2e1b3a0bH_1024x1024.jpg?v=1694095313', 32, 18.87)
INSERT [dbo].[Product] ([Id], [Name], [Photo], [Stock], [Price]) VALUES (N'C5C6A86A-8600-47BF-8869-9E4C0DADB0A8', N'Product12', N'https://pokemon-faction.com/cdn/shop/products/product-image-1798511433_1024x1024.jpg?v=1626812105', 49, 15.19)
INSERT [dbo].[Product] ([Id], [Name], [Photo], [Stock], [Price]) VALUES (N'c8adb3fe-7f0d-4713-953d-62d8fe0f999d', N'test product', N'https://pokemon-faction.com/cdn/shop/products/product-image-1804684771_1024x1024.jpg?v=1626812104', 20, 5554)
GO
INSERT [dbo].[ProductXTrolley] ([ProductId], [TrolleyId], [Quantity]) VALUES (N'074A4AD4-9425-4251-B902-4C33560B1056', N'10b645d1-dfa2-4233-b34e-751bf9c62da7', 1)
INSERT [dbo].[ProductXTrolley] ([ProductId], [TrolleyId], [Quantity]) VALUES (N'074A4AD4-9425-4251-B902-4C33560B1056', N'11902c5a-6f75-4d0c-87b7-76d7712445f1', 3)
INSERT [dbo].[ProductXTrolley] ([ProductId], [TrolleyId], [Quantity]) VALUES (N'074A4AD4-9425-4251-B902-4C33560B1056', N'3eae51f6-e767-4665-8542-cd383fbb8854', 1)
INSERT [dbo].[ProductXTrolley] ([ProductId], [TrolleyId], [Quantity]) VALUES (N'074A4AD4-9425-4251-B902-4C33560B1056', N'6c3eb0c2-f61c-4051-b74e-85edb95d526f', 2)
INSERT [dbo].[ProductXTrolley] ([ProductId], [TrolleyId], [Quantity]) VALUES (N'28AB2D92-3FC6-4A71-9E72-8102D6DC28F5', N'3eae51f6-e767-4665-8542-cd383fbb8854', 3)
INSERT [dbo].[ProductXTrolley] ([ProductId], [TrolleyId], [Quantity]) VALUES (N'384C3714-D516-42B7-A656-88CAB7E5CE9E', N'43bac100-b8b1-45fa-b917-d23a00a31c64', 1)
INSERT [dbo].[ProductXTrolley] ([ProductId], [TrolleyId], [Quantity]) VALUES (N'389A4D2F-2A07-4CF4-B028-A891D224E3BB', N'44c5759a-3530-4f70-b87f-d4f33e8b5920', 1)
INSERT [dbo].[ProductXTrolley] ([ProductId], [TrolleyId], [Quantity]) VALUES (N'8D883CDB-321A-4CE6-B470-BA606A9CEA26', N'43bac100-b8b1-45fa-b917-d23a00a31c64', 1)
INSERT [dbo].[ProductXTrolley] ([ProductId], [TrolleyId], [Quantity]) VALUES (N'8D883CDB-321A-4CE6-B470-BA606A9CEA26', N'44c5759a-3530-4f70-b87f-d4f33e8b5920', 1)
INSERT [dbo].[ProductXTrolley] ([ProductId], [TrolleyId], [Quantity]) VALUES (N'8D883CDB-321A-4CE6-B470-BA606A9CEA26', N'd6075852-46ce-415c-a6ea-49fec6a5290d', 1)
INSERT [dbo].[ProductXTrolley] ([ProductId], [TrolleyId], [Quantity]) VALUES (N'8F184FF0-8F75-49F7-932B-A4AF910A2A26', N'11902c5a-6f75-4d0c-87b7-76d7712445f1', 3)
INSERT [dbo].[ProductXTrolley] ([ProductId], [TrolleyId], [Quantity]) VALUES (N'99D82096-FBE1-486C-9F3E-A1F5A8216225', N'11902c5a-6f75-4d0c-87b7-76d7712445f1', 3)
INSERT [dbo].[ProductXTrolley] ([ProductId], [TrolleyId], [Quantity]) VALUES (N'99D82096-FBE1-486C-9F3E-A1F5A8216225', N'390e0708-2616-4d7b-937b-20cd894f3c39', 2)
INSERT [dbo].[ProductXTrolley] ([ProductId], [TrolleyId], [Quantity]) VALUES (N'99D82096-FBE1-486C-9F3E-A1F5A8216225', N'3eae51f6-e767-4665-8542-cd383fbb8854', 1)
INSERT [dbo].[ProductXTrolley] ([ProductId], [TrolleyId], [Quantity]) VALUES (N'A1D0B914-A7B5-481A-B7F6-C4A7C1FADABD', N'11902c5a-6f75-4d0c-87b7-76d7712445f1', 3)
INSERT [dbo].[ProductXTrolley] ([ProductId], [TrolleyId], [Quantity]) VALUES (N'BE479712-737F-4703-9D33-FE6EA3428CC9', N'390e0708-2616-4d7b-937b-20cd894f3c39', 2)
INSERT [dbo].[ProductXTrolley] ([ProductId], [TrolleyId], [Quantity]) VALUES (N'BE479712-737F-4703-9D33-FE6EA3428CC9', N'd6075852-46ce-415c-a6ea-49fec6a5290d', 2)
INSERT [dbo].[ProductXTrolley] ([ProductId], [TrolleyId], [Quantity]) VALUES (N'C289B345-4A19-420B-8F17-05661C2ACDE7', N'10b645d1-dfa2-4233-b34e-751bf9c62da7', 1)
INSERT [dbo].[ProductXTrolley] ([ProductId], [TrolleyId], [Quantity]) VALUES (N'C5C6A86A-8600-47BF-8869-9E4C0DADB0A8', N'11902c5a-6f75-4d0c-87b7-76d7712445f1', 5)
INSERT [dbo].[ProductXTrolley] ([ProductId], [TrolleyId], [Quantity]) VALUES (N'C5C6A86A-8600-47BF-8869-9E4C0DADB0A8', N'44c5759a-3530-4f70-b87f-d4f33e8b5920', 3)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [AmountConverted], [UserId], [ExchangeId], [TransactionDate]) VALUES (N'5b55eb03-1352-43cc-bc89-0da77e349a55', 5000, 1932.1326803240111, N'0bedfa6d-eb0d-40ac-9e80-a4e6b5f33a8f', N'89B03736-C14D-4F93-8E4B-C1D29E7AB905', CAST(N'2023-10-12T20:51:41.5038000' AS DateTime2))
INSERT [dbo].[Transaction] ([Id], [Amount], [AmountConverted], [UserId], [ExchangeId], [TransactionDate]) VALUES (N'797ab861-92f3-4ffe-a704-95bd284f8687', 77, 3140.168955, N'8fc03854-ef89-42ca-9136-4f493974bea9', N'06CF404D-A548-4BA8-BDDB-27255F6F58A4', CAST(N'2023-10-11T00:52:36.8872262' AS DateTime2))
INSERT [dbo].[Transaction] ([Id], [Amount], [AmountConverted], [UserId], [ExchangeId], [TransactionDate]) VALUES (N'a75523fd-ca4d-4dbd-86ca-09506c7761e8', 20, 1770.8141, N'8fc03854-ef89-42ca-9136-4f493974bea9', N'826C453B-64D9-4BF0-8B74-CE9B7500CEA7', CAST(N'2023-10-11T00:28:38.5495364' AS DateTime2))
INSERT [dbo].[Transaction] ([Id], [Amount], [AmountConverted], [UserId], [ExchangeId], [TransactionDate]) VALUES (N'c89f0bcd-c85e-497d-80cd-92e59682ffd3', 2, 0.032211277116580471, N'8fc03854-ef89-42ca-9136-4f493974bea9', N'2293F0EF-E3C7-4607-BC8B-6C4E9C8E61FC', CAST(N'2023-10-11T00:51:19.4404234' AS DateTime2))
INSERT [dbo].[Transaction] ([Id], [Amount], [AmountConverted], [UserId], [ExchangeId], [TransactionDate]) VALUES (N'c8ade328-256c-461d-a3be-a9dd3db0b10c', 50, 0.63872324027467864, N'0bedfa6d-eb0d-40ac-9e80-a4e6b5f33a8f', N'84E4584E-F687-4575-8F46-3F57CE806D80', CAST(N'2023-10-12T21:56:03.9590058' AS DateTime2))
INSERT [dbo].[Transaction] ([Id], [Amount], [AmountConverted], [UserId], [ExchangeId], [TransactionDate]) VALUES (N'e1ea82ba-b783-4087-83a0-607d38f58ab3', 2000, 172804.294, N'0bedfa6d-eb0d-40ac-9e80-a4e6b5f33a8f', N'24F0ECA5-A9D5-4277-8278-A166442EB1A2', CAST(N'2023-10-12T22:24:55.1742634' AS DateTime2))
GO
INSERT [dbo].[Trolley] ([Id], [IsCurrent], [UserId], [TransactionDate], [Total]) VALUES (N'10b645d1-dfa2-4233-b34e-751bf9c62da7', 0, N'0bedfa6d-eb0d-40ac-9e80-a4e6b5f33a8f', CAST(N'2023-10-12T21:56:49.2622673' AS DateTime2), 25)
INSERT [dbo].[Trolley] ([Id], [IsCurrent], [UserId], [TransactionDate], [Total]) VALUES (N'11902c5a-6f75-4d0c-87b7-76d7712445f1', 0, N'0bedfa6d-eb0d-40ac-9e80-a4e6b5f33a8f', CAST(N'2023-10-16T19:56:14.5324666' AS DateTime2), 276.53)
INSERT [dbo].[Trolley] ([Id], [IsCurrent], [UserId], [TransactionDate], [Total]) VALUES (N'390e0708-2616-4d7b-937b-20cd894f3c39', 0, N'0bedfa6d-eb0d-40ac-9e80-a4e6b5f33a8f', CAST(N'2023-10-12T22:23:48.5206809' AS DateTime2), 55.48)
INSERT [dbo].[Trolley] ([Id], [IsCurrent], [UserId], [TransactionDate], [Total]) VALUES (N'3eae51f6-e767-4665-8542-cd383fbb8854', 0, N'0bedfa6d-eb0d-40ac-9e80-a4e6b5f33a8f', CAST(N'2023-10-17T14:46:43.9745877' AS DateTime2), 101.89999999999999)
INSERT [dbo].[Trolley] ([Id], [IsCurrent], [UserId], [TransactionDate], [Total]) VALUES (N'43bac100-b8b1-45fa-b917-d23a00a31c64', 0, N'0bedfa6d-eb0d-40ac-9e80-a4e6b5f33a8f', CAST(N'2023-10-17T14:47:42.0335106' AS DateTime2), 49.879999999999995)
INSERT [dbo].[Trolley] ([Id], [IsCurrent], [UserId], [TransactionDate], [Total]) VALUES (N'44c5759a-3530-4f70-b87f-d4f33e8b5920', 0, N'8fc03854-ef89-42ca-9136-4f493974bea9', CAST(N'2023-10-10T23:55:50.0849751' AS DateTime2), 96.19)
INSERT [dbo].[Trolley] ([Id], [IsCurrent], [UserId], [TransactionDate], [Total]) VALUES (N'6c3eb0c2-f61c-4051-b74e-85edb95d526f', 0, N'8fc03854-ef89-42ca-9136-4f493974bea9', CAST(N'2023-10-10T23:50:18.7602609' AS DateTime2), 41.48)
INSERT [dbo].[Trolley] ([Id], [IsCurrent], [UserId], [TransactionDate], [Total]) VALUES (N'865293c6-9155-407c-8b92-33b423cd460a', 1, N'8fc03854-ef89-42ca-9136-4f493974bea9', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0)
INSERT [dbo].[Trolley] ([Id], [IsCurrent], [UserId], [TransactionDate], [Total]) VALUES (N'bca26b31-c1ad-4a5e-af39-45f9328803e9', 1, N'0bedfa6d-eb0d-40ac-9e80-a4e6b5f33a8f', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0)
INSERT [dbo].[Trolley] ([Id], [IsCurrent], [UserId], [TransactionDate], [Total]) VALUES (N'd6075852-46ce-415c-a6ea-49fec6a5290d', 0, N'8fc03854-ef89-42ca-9136-4f493974bea9', CAST(N'2023-10-10T23:52:30.4263128' AS DateTime2), 43.39)
INSERT [dbo].[Trolley] ([Id], [IsCurrent], [UserId], [TransactionDate], [Total]) VALUES (N'f164d089-1fd3-482c-ade3-362be937b7b7', 0, N'0bedfa6d-eb0d-40ac-9e80-a4e6b5f33a8f', CAST(N'2023-10-12T21:01:12.5338073' AS DateTime2), 29.22)
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
ALTER TABLE [dbo].[Exchange]  WITH CHECK ADD  CONSTRAINT [FK_Exchange_Agent_AgentId] FOREIGN KEY([AgentId])
    REFERENCES [dbo].[Agent] ([Id])
    ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Exchange] CHECK CONSTRAINT [FK_Exchange_Agent_AgentId]
GO
ALTER TABLE [dbo].[Exchange]  WITH CHECK ADD  CONSTRAINT [FK_Exchange_Country_ReceiverCountryId] FOREIGN KEY([ReceiverCountryId])
    REFERENCES [dbo].[Country] ([Id])
GO
ALTER TABLE [dbo].[Exchange] CHECK CONSTRAINT [FK_Exchange_Country_ReceiverCountryId]
GO
ALTER TABLE [dbo].[Exchange]  WITH CHECK ADD  CONSTRAINT [FK_Exchange_Country_SenderCountryId] FOREIGN KEY([SenderCountryId])
    REFERENCES [dbo].[Country] ([Id])
GO
ALTER TABLE [dbo].[Exchange] CHECK CONSTRAINT [FK_Exchange_Country_SenderCountryId]
GO
ALTER TABLE [dbo].[ProductXTrolley]  WITH CHECK ADD  CONSTRAINT [FK_ProductXTrolley_Product_ProductId] FOREIGN KEY([ProductId])
    REFERENCES [dbo].[Product] ([Id])
    ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductXTrolley] CHECK CONSTRAINT [FK_ProductXTrolley_Product_ProductId]
GO
ALTER TABLE [dbo].[ProductXTrolley]  WITH CHECK ADD  CONSTRAINT [FK_ProductXTrolley_Trolley_TrolleyId] FOREIGN KEY([TrolleyId])
    REFERENCES [dbo].[Trolley] ([Id])
    ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductXTrolley] CHECK CONSTRAINT [FK_ProductXTrolley_Trolley_TrolleyId]
GO
ALTER TABLE [dbo].[Transaction]  WITH CHECK ADD  CONSTRAINT [FK_Transaction_AspNetUsers_UserId] FOREIGN KEY([UserId])
    REFERENCES [dbo].[AspNetUsers] ([Id])
    ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Transaction] CHECK CONSTRAINT [FK_Transaction_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Transaction]  WITH CHECK ADD  CONSTRAINT [FK_Transaction_Exchange_ExchangeId] FOREIGN KEY([ExchangeId])
    REFERENCES [dbo].[Exchange] ([Id])
    ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Transaction] CHECK CONSTRAINT [FK_Transaction_Exchange_ExchangeId]
GO
ALTER TABLE [dbo].[Trolley]  WITH CHECK ADD  CONSTRAINT [FK_Trolley_AspNetUsers_UserId] FOREIGN KEY([UserId])
    REFERENCES [dbo].[AspNetUsers] ([Id])
    ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Trolley] CHECK CONSTRAINT [FK_Trolley_AspNetUsers_UserId]
GO
