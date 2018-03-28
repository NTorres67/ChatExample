USE [master]
GO
/****** Object:  Database [ChatExample]    Script Date: 3/28/2018 11:42:44 AM ******/
CREATE DATABASE [ChatExample]
 CONTAINMENT = NONE
 
GO
ALTER DATABASE [ChatExample] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ChatExample].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ChatExample] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ChatExample] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ChatExample] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ChatExample] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ChatExample] SET ARITHABORT OFF 
GO
ALTER DATABASE [ChatExample] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ChatExample] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ChatExample] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ChatExample] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ChatExample] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ChatExample] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ChatExample] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ChatExample] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ChatExample] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ChatExample] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ChatExample] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ChatExample] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ChatExample] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ChatExample] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ChatExample] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ChatExample] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ChatExample] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ChatExample] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ChatExample] SET  MULTI_USER 
GO
ALTER DATABASE [ChatExample] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ChatExample] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ChatExample] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ChatExample] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ChatExample] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ChatExample]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 3/28/2018 11:42:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 3/28/2018 11:42:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 3/28/2018 11:42:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 3/28/2018 11:42:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 3/28/2018 11:42:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 3/28/2018 11:42:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Chats]    Script Date: 3/28/2018 11:42:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chats](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[TimeStamp] [datetime] NOT NULL,
	[Message] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Chats] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201803281503045_InitialCreate', N'ChatterExample.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDD6EE33616BE5F60DF41D05577915AF9E90C6603BB45EA24BB41273F18678ADE0D68897684912855A252078B3ED95EF491FA0A7B2851B2C41F89B215DB290A14B1487EE7F0F023797878387FFEEF8FF10FAB30B09E7192FA1199D827A363DBC2C48D3C9F2C27764617DF7EB07FF8FEEF7F1B5F79E1CAFAB9AC77C6EA414B924EEC274AE373C749DD271CA27414FA6E12A5D1828EDC2874901739A7C7C7FF724E4E1C0C10366059D6F85346A81FE2FC07FC9C46C4C531CD50701B793848F9772899E5A8D61D0A711A23174FECE913A21427572B14C6011E150D6CEB22F0112833C3C1C2B61021114514543DFF9CE2194D22B29CC5F001058F2F31867A0B14A49877E17C5DDDB437C7A7AC37CEBA6109E566298DC29E802767DC3C8ED87C2323DB95F9C080576068FAC27A9D1B7162DF7838FFF4290AC000A2C0F36990B0CA13FBB6127191C677988ECA86A302F23A01B8DFA2E4EBA88E786419B73BAAE8743A3A66FF1D59D32CA059822704673441C191F590CD03DFFD09BF3C465F31999C9DCC17671FDEBD47DED9FBEFF0D9BB7A4FA1AF50AFF1013E3D24518C13D00D2FAAFEDB96D36CE7880DAB66B5368555804B30336CEB16AD3E62B2A44F30674E3FD8D6B5BFC25EF98593EB33F1612241239A64F0F32E0B02340F7055EEB4CA64FF6F917AFAEEFD2052EFD0B3BFCC875E900F13278179F509077969FAE4C7C5F46A8CF7175EED3A8942F6BBC9AFA2F4CB2CCA12977526D2567944C912D3A67663674D5E234A33A8E1695DA21E3EB599A632BD95555987369909A5885DCF8652DFD7956BCCB88B3886C1CBA9C52CD24638E57E351200801F8D6A6B029D98128840C7FECAEBE15588FC608005D1400AB8230B3F0971D5CB1F23A01F22BD757E40690AEB81F71F943EB5A80E7F0EA0FA0CBB5902349D51A0D0AB4B7B788A08BECBC23963FFEE640D36348FBF45D7C8A551724558ABADF13E46EED728A357C4BB44147FA66E09C87E3EFAA139C020EA5CB82E4ED36B2033F6A61178DB25E00DA167A7BDE1D81AB56F87641A203F547B24C26AFAA5ACBAF64AD43524CF44534DE59DB4A9FA315AFAC44CD5B2AA5ED5A246A7AABC5A5F55199899A6BCA65ED1BC42A79E45ADC1FCBD7C848677F872D8C3F7F8B6DBBC756B41CD8C335821F1BF31C1092C63DE43EEA390F50898AC1BFB7016F2E163425F7D6FCA25FD8C826C68511BCD867C11187E36E4B0873F1B7235E1F3B3EF31AFC4E01854560678A3FAEA1356F79C1334DBF574687473D7C277B306E8A6CB459A46AE9FCF0245008C872F9AFA830F6775C7328ADE88F110E81810DD675B1E7C81BED922A9EEC9250E30C5D6855B0408A7287591279B113AE4F550ACDC51158AADE3224DE5FE29C904A6E3843542EC1094C24CF50995A7854F5C3F4641A7958496865B18EB7B25432CB9C431264C60A7254C84ABC3204C814A8E30285D161A3B35C6B51351E3B5EAC6BCCB855D8FBB149DD809273B7C670D2FB9FFF62AC46CB7D80EC8D96E121305B421BD7D10949F554C09201E5C0E8DA0C289494350EE52ED84A04D8BED81A04D93BC3982164754D3F117CEAB8746CFE64179F7DB7AABB9F6C0CD863D0E8C9A85EF096D28B4C0894CCFCB392BC42BAA389C819EFC7C96725757A408039F61DA0CD9ACFD5DA51FEAB48388246A035C13AD03945F064A40D284EAA15C19CB6BD58E7B113D60CBB85B2B2C5FFB05D81A0764ECFAA568ADA2FEEA5424A7D1E9A3EA59C50689E44687851A8E8210E2E2D5ECB88151747159D93026BE701F6FB8D6313E182D06EAF05C35462A3B33B8954A6A765B49E590F571C9B6B292E03E69AC547666702B718E761B49E114F4700BB63251730B1F68B295918E6AB7A9CAC64E912EC53F8C1D4D5ED5F816C5B14F96B53C2BFEC59AF124AB6F67FD538FC202C37153450652A56D258946095A62A1144483A6D77E92D24B44D11CB138CFD40BA56ACABD55B3FC9722EBDBA73C88E53E50D6667FF318AFF20ABFB1DDCAFE0887B9864E86CCA9C923E90A0AA89B5B2CF50D05285104EFA751908544EF63E95B175778F5F6C5171961EC08FA4B3E946430C9D36D5ADF686CE47931DC38555ECCE663A587D059BCF441EB36D7F9A57A94324C5547D185AEF636763A77A6EF7889CE62FFE1EA44789DD9C53354EA00FC534F8C5A928304562B33476DE6A1D4319B25E68842B2491D5228EAA1653DA5A4A164BD60233C8D45D535CC25C849247574B9D41C59914E528756146F80ADD0592C334755649CD48115C5E6D8EBF413711D3DE0FD4B7B84D966032B0EBADBED601A8CD7591487D9006BF7F975A0DAE79E58FCC65E02E3DF0F9250DAD3DE36842A421CDB114A83A15F7F1A97E1CDE5A7F5065F8FD9B8E16E2CF16D37FC7ABC7EB47D557248E73DB14A25BD3AF709E7BB313F6B193CAE110F5F4515DB2ACD08DBFB4B4A7138621546B35F8369E063B69897156E11F11738A54556877D7A7C722A3CCE399C87324E9A7A81E2ACAA7B2DD31CB31D2468916794B84F2891D325B6784CB2069522D137C4C3AB89FDDFBCD5791ED4607FE59F8FAC9BF433F17FCDA0E031C9B0F5BB9CFE394C72BDC1738E4AD1DFDFC43B097393DFFCF2A5687A64DD27309DCEAD63C1D09B0C7FF3F5442F6D8AA65B68B3F19B8AB73BDB1A4F1594A8C26CD9FC65C2DCA783BC4A28B5FC2644AB7FF4554DF9F2602B44C5EB82A1F00631A1EEF5C02658DA97031EFCA4F9CB817E9D55BF24D84435ED2B029FF40713DF10982F4365CB3DEE438A33D32E96A4DCCE9D39D85B2564EE7B6F9252B5B79AE8723A760FB84153AEB77351DE582AF3605BA722537930EC7DF2FED5D3930F252379EDB4EF37117997B9C72D374B7FA994E30348925324FDEC3FB178D75CD305810F3C3BB35FFAF081918D6FF3FB4F12DE35D97401E203275BAF54E003E3DABEF6CF3D33CD780BDD7B62AF9CA3A4B9CC514591BB12778B903B1CFFE71190A0F0288BF796EA4CB1B62CD70E81EB2A7AA1FA143551B0347124B9528D76B1FDFACA37FCD6CEF23AED6235899D6DB2F9FADF2A9BD76997AD4997DC47CAB13261519506DEB18EB5E551BDA514E3464F3A32DABB7CD6D69BF9B794513C88511AB34773BBFC7612880731C99053A747C2B07C510C7B67EDDF6A84FD3BF5976B08F62F3712EC3676CDAACE0D5944E5E62D685456112234B798220FB6D48B84FA0BE452286601E8FCC1781ED463D72073ECDD90FB8CC619852EE3701E34025ECC0968939F674537751EDFC7EC573A4417404D9F05EEEFC98F991F7895DED78A9890068279173CDCCBC692B2B0EFF2A542BA8B882110375FE5143DE2300E002CBD2733F48C37D10DE8F7112F91FBB28E00EA40BA07A269F6F1A58F96090A538EB16E0F3F81C35EB8FAFEFF4C59C525B2540000, N'6.2.0-61023')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'85b4f5e3-8d8b-4d1a-a040-3c24f7bceb44', N'Mana@done.com', 0, N'ADp2yI2lGUVKlS54K4ZwufXg2ddzyNzGb2p9RYTuE0UkfyusZ4Zph4YZdn7tA7GJ4g==', N'5d8c8a2a-91e2-4bae-aa9b-d8974d3a9059', NULL, 0, 0, NULL, 1, 0, N'Mana@done.com')
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 3/28/2018 11:42:44 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 3/28/2018 11:42:44 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 3/28/2018 11:42:44 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 3/28/2018 11:42:44 AM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 3/28/2018 11:42:44 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 3/28/2018 11:42:44 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Chats] ADD  CONSTRAINT [DF_Chats_TimeStamp]  DEFAULT (getdate()) FOR [TimeStamp]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Chats]  WITH CHECK ADD  CONSTRAINT [FK_Chats_AspNetUsers] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Chats] CHECK CONSTRAINT [FK_Chats_AspNetUsers]
GO
USE [master]
GO
ALTER DATABASE [ChatExample] SET  READ_WRITE 
GO
