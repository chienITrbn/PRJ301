USE [master]
GO
/****** Object:  Database [PRJ301]    Script Date: 7/11/2023 6:40:08 PM ******/
CREATE DATABASE [PRJ301]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PRJ301', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PRJ301.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PRJ301_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PRJ301_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PRJ301] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PRJ301].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PRJ301] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PRJ301] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PRJ301] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PRJ301] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PRJ301] SET ARITHABORT OFF 
GO
ALTER DATABASE [PRJ301] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PRJ301] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PRJ301] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PRJ301] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PRJ301] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PRJ301] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PRJ301] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PRJ301] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PRJ301] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PRJ301] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PRJ301] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PRJ301] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PRJ301] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PRJ301] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PRJ301] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PRJ301] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PRJ301] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PRJ301] SET RECOVERY FULL 
GO
ALTER DATABASE [PRJ301] SET  MULTI_USER 
GO
ALTER DATABASE [PRJ301] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PRJ301] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PRJ301] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PRJ301] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PRJ301] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PRJ301] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'PRJ301', N'ON'
GO
ALTER DATABASE [PRJ301] SET QUERY_STORE = OFF
GO
USE [PRJ301]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 7/11/2023 6:40:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[username] [nvarchar](30) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[role] [int] NULL,
	[active] [bit] NOT NULL,
	[email] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 7/11/2023 6:40:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Brand] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 7/11/2023 6:40:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 7/11/2023 6:40:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[username] [nvarchar](30) NOT NULL,
	[fullName] [nvarchar](30) NULL,
	[address] [nvarchar](100) NULL,
	[customerId] [int] IDENTITY(1,1) NOT NULL,
	[phoneNumber] [int] NULL,
 CONSTRAINT [PK_Customers_1] PRIMARY KEY CLUSTERED 
(
	[customerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 7/11/2023 6:40:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderId] [int] NOT NULL,
	[Product_id] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC,
	[Product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 7/11/2023 6:40:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[OrderDate] [datetime] NULL,
	[email] [varchar](200) NOT NULL,
	[phone_number] [varchar](15) NOT NULL,
	[address] [varchar](200) NOT NULL,
	[note] [varchar](200) NOT NULL,
	[total_money] [decimal](18, 2) NOT NULL,
	[CustomerId] [int] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 7/11/2023 6:40:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[description] [nvarchar](500) NULL,
	[category_id] [int] NOT NULL,
	[historical_cost] [decimal](18, 2) NOT NULL,
	[competitive_price] [decimal](18, 2) NOT NULL,
	[brand_id] [int] NOT NULL,
	[imgae_product] [nvarchar](100) NULL,
	[new_products] [bit] NOT NULL,
	[best_selling] [bit] NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[Quantity] [int] NOT NULL,
	[View_count] [int] NOT NULL,
	[size] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Size]    Script Date: 7/11/2023 6:40:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Size](
	[idSize] [int] IDENTITY(1,1) NOT NULL,
	[Size] [float] NULL,
 CONSTRAINT [PK_Size] PRIMARY KEY CLUSTERED 
(
	[idSize] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([username], [password], [role], [active], [email]) VALUES (N'admin', N'admin', 0, 1, N'admin')
INSERT [dbo].[Account] ([username], [password], [role], [active], [email]) VALUES (N'chien2002', N'1234', 1, 0, N'achienvk789@gmail.com')
INSERT [dbo].[Account] ([username], [password], [role], [active], [email]) VALUES (N'hanhsa', N'123', 1, 0, N'hanhgold2@gmail.com')
INSERT [dbo].[Account] ([username], [password], [role], [active], [email]) VALUES (N'robertnguyen', N'1234', 1, 0, N'chienjobit@gmail.com')
GO
INSERT [dbo].[Brand] ([id], [name]) VALUES (1, N'Nike')
INSERT [dbo].[Brand] ([id], [name]) VALUES (2, N'Puma')
INSERT [dbo].[Brand] ([id], [name]) VALUES (3, N'Dior')
INSERT [dbo].[Brand] ([id], [name]) VALUES (4, N'Reebok')
INSERT [dbo].[Brand] ([id], [name]) VALUES (5, N'New balance')
INSERT [dbo].[Brand] ([id], [name]) VALUES (6, N'MLB')
INSERT [dbo].[Brand] ([id], [name]) VALUES (7, N'Adidas')
INSERT [dbo].[Brand] ([id], [name]) VALUES (8, N'Gucci')
INSERT [dbo].[Brand] ([id], [name]) VALUES (9, N'Fendi')
INSERT [dbo].[Brand] ([id], [name]) VALUES (10, N'Balenciaga')
INSERT [dbo].[Brand] ([id], [name]) VALUES (11, N'DOLCE&GABBANA')
INSERT [dbo].[Brand] ([id], [name]) VALUES (12, N'BAPE')
INSERT [dbo].[Brand] ([id], [name]) VALUES (13, N'Vans')
INSERT [dbo].[Brand] ([id], [name]) VALUES (14, N'Fila')
INSERT [dbo].[Brand] ([id], [name]) VALUES (15, N'Prada')
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([id], [name]) VALUES (1, N'Sneaker')
INSERT [dbo].[Category] ([id], [name]) VALUES (2, N'Moccasins')
INSERT [dbo].[Category] ([id], [name]) VALUES (3, N'Boots')
INSERT [dbo].[Category] ([id], [name]) VALUES (4, N'Combat Boots')
INSERT [dbo].[Category] ([id], [name]) VALUES (5, N'Platform Shoes')
INSERT [dbo].[Category] ([id], [name]) VALUES (6, N'Saddle Shoes')
INSERT [dbo].[Category] ([id], [name]) VALUES (7, N'Sandals')
INSERT [dbo].[Category] ([id], [name]) VALUES (8, N'Running Shoe')
INSERT [dbo].[Category] ([id], [name]) VALUES (10, N'Motorcycle Boots')
INSERT [dbo].[Category] ([id], [name]) VALUES (12, N'Bitis')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([username], [fullName], [address], [customerId], [phoneNumber]) VALUES (N'chien2002', N'kaka', NULL, 1, 0)
INSERT [dbo].[Customers] ([username], [fullName], [address], [customerId], [phoneNumber]) VALUES (N'chien2002', N'hihi', NULL, 2, 0)
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
INSERT [dbo].[OrderDetails] ([OrderId], [Product_id], [Price], [Quantity]) VALUES (5, 1, CAST(4900000.00 AS Decimal(18, 2)), 1)
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([OrderId], [OrderDate], [email], [phone_number], [address], [note], [total_money], [CustomerId]) VALUES (5, CAST(N'2023-01-03T00:00:00.000' AS DateTime), N'achienvk789@gmaiil.com', N'0373661632', N'Me Linh , Ha Noi', N'no', CAST(20000.00 AS Decimal(18, 2)), 1)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductId], [name], [description], [category_id], [historical_cost], [competitive_price], [brand_id], [imgae_product], [new_products], [best_selling], [created_at], [updated_at], [Quantity], [View_count], [size]) VALUES (1, N'Nike Zoom Fly 4 Premium', N'Good for choosee', 5, CAST(3900000.00 AS Decimal(18, 2)), CAST(3900000.00 AS Decimal(18, 2)), 4, N'image/nikezoom4.png', 1, 1, CAST(N'2023-07-11T00:00:00.000' AS DateTime), CAST(N'2023-07-11T00:00:00.000' AS DateTime), 11, 0, 4)
INSERT [dbo].[Product] ([ProductId], [name], [description], [category_id], [historical_cost], [competitive_price], [brand_id], [imgae_product], [new_products], [best_selling], [created_at], [updated_at], [Quantity], [View_count], [size]) VALUES (2, N'Air Jordan 1 Low G', N'Feel unbeatable, from the tee box to the final putt. Inspired by one of the most iconic sneakers of all time, the Air Jordan 1 G is an instant classic on the course. With Air cushioning underfoot, a Wings logo on the heel and an integrated traction pattern to help you power through your swing, it delivers all the clubhouse cool of the original AJ1—plus everything you need to play 18 holes in comfort.', 1, CAST(2530000.00 AS Decimal(18, 2)), CAST(2530000.00 AS Decimal(18, 2)), 1, N'image/jordan1.png', 1, 1, CAST(N'2023-03-04T00:00:00.000' AS DateTime), CAST(N'2023-03-04T00:00:00.000' AS DateTime), 50, 1000, 1)
INSERT [dbo].[Product] ([ProductId], [name], [description], [category_id], [historical_cost], [competitive_price], [brand_id], [imgae_product], [new_products], [best_selling], [created_at], [updated_at], [Quantity], [View_count], [size]) VALUES (3, N'Nike Air Max 90 G', N'2asdasdasd', 1, CAST(1500000.00 AS Decimal(18, 2)), CAST(1500000.00 AS Decimal(18, 2)), 1, N'image/airmax90g.png', 1, 1, CAST(N'2023-02-14T00:00:00.000' AS DateTime), CAST(N'2023-02-14T00:00:00.000' AS DateTime), 15, 300, 1)
INSERT [dbo].[Product] ([ProductId], [name], [description], [category_id], [historical_cost], [competitive_price], [brand_id], [imgae_product], [new_products], [best_selling], [created_at], [updated_at], [Quantity], [View_count], [size]) VALUES (4, N'Roshe G Next Nature', N'When the sun''s beating down your back and your drive just landed in the bunker, lean into the Roshe 2, a design that can help you find your peace when your round isn''t going your way. It''s inherently simple and stylish, breathable and comfortable, perfect for playing in those sizzling-hot months. A full mesh upper and a soft, lightweight foam midsole form a cushioned combination to help maintain your internal calm, even if your game goes in the gutter.', 1, CAST(2499000.00 AS Decimal(18, 2)), CAST(2200000.00 AS Decimal(18, 2)), 1, N'image/roshe.png', 1, 1, CAST(N'2023-02-14T00:00:00.000' AS DateTime), CAST(N'2023-02-14T00:00:00.000' AS DateTime), 8, 300, 4)
INSERT [dbo].[Product] ([ProductId], [name], [description], [category_id], [historical_cost], [competitive_price], [brand_id], [imgae_product], [new_products], [best_selling], [created_at], [updated_at], [Quantity], [View_count], [size]) VALUES (5, N'Nike Air Max 90 SE', N'What moves you? Find out in the Air Max 90 SE. Hemp accents, durable textile and playful ', 1, CAST(4109000.00 AS Decimal(18, 2)), CAST(3500000.00 AS Decimal(18, 2)), 1, N'image/airmax90g.png', 1, 1, CAST(N'2023-02-12T00:00:00.000' AS DateTime), CAST(N'2023-02-12T00:00:00.000' AS DateTime), 10, 500, 5)
INSERT [dbo].[Product] ([ProductId], [name], [description], [category_id], [historical_cost], [competitive_price], [brand_id], [imgae_product], [new_products], [best_selling], [created_at], [updated_at], [Quantity], [View_count], [size]) VALUES (7, N'Duong', N'Find out what moves you with the Air Max Dawn. Rooted to sporty athletics DNA, these kicks combine durable textile and fun branding to bring to life our fictional ', 1, CAST(3829000.00 AS Decimal(18, 2)), CAST(3324000.00 AS Decimal(18, 2)), 1, N'image/dawnse.png', 1, 1, CAST(N'2023-02-14T00:00:00.000' AS DateTime), CAST(N'2023-02-14T00:00:00.000' AS DateTime), 35, 500, 3)
INSERT [dbo].[Product] ([ProductId], [name], [description], [category_id], [historical_cost], [competitive_price], [brand_id], [imgae_product], [new_products], [best_selling], [created_at], [updated_at], [Quantity], [View_count], [size]) VALUES (8, N'Air Jordan 1 Zoom CMFT 2', N'Premium suede and Jordan Brand''s signature Formula 23 foam come together to give you an extra luxurious (and extra cosy) AJ1. You don''t need to play ', 1, CAST(4259000.00 AS Decimal(18, 2)), CAST(4000000.00 AS Decimal(18, 2)), 1, N'image/zoom.png', 1, 1, CAST(N'2023-02-11T00:00:00.000' AS DateTime), CAST(N'2023-02-11T00:00:00.000' AS DateTime), 15, 360, 1)
INSERT [dbo].[Product] ([ProductId], [name], [description], [category_id], [historical_cost], [competitive_price], [brand_id], [imgae_product], [new_products], [best_selling], [created_at], [updated_at], [Quantity], [View_count], [size]) VALUES (9, N'Nike Air Force 1 ''07', N'The radiance lives on with the b-ball original. Crossing hardwood comfort with off-court flair, it puts a fresh spin on what you know best: era-echoing, ''80s construction and nothing-but-net style.', 1, CAST(3239000.00 AS Decimal(18, 2)), CAST(2805000.00 AS Decimal(18, 2)), 1, N'image/airfor1.png', 1, 1, CAST(N'2023-02-10T00:00:00.000' AS DateTime), CAST(N'2023-02-10T00:00:00.000' AS DateTime), 12, 250, 1)
INSERT [dbo].[Product] ([ProductId], [name], [description], [category_id], [historical_cost], [competitive_price], [brand_id], [imgae_product], [new_products], [best_selling], [created_at], [updated_at], [Quantity], [View_count], [size]) VALUES (10, N'Air Jordan XXXVII Low PF', N'You''ve got the hops and the speed—lace up in shoes that enhance what you bring to the court. The latest AJ is all about take-offs and landings, with multiple Air units to get you off the ground. The upper is made with strong, reinforced leno-weave fabric that''ll keep you contained and leave your game uncompromised. This low-top model is designed for playing on outdoor courts.', 1, CAST(5129000.00 AS Decimal(18, 2)), CAST(5000000.00 AS Decimal(18, 2)), 1, N'image/joXXXVII.png', 1, 1, CAST(N'2023-02-09T00:00:00.000' AS DateTime), CAST(N'2023-02-09T00:00:00.000' AS DateTime), 11, 580, 1)
INSERT [dbo].[Product] ([ProductId], [name], [description], [category_id], [historical_cost], [competitive_price], [brand_id], [imgae_product], [new_products], [best_selling], [created_at], [updated_at], [Quantity], [View_count], [size]) VALUES (11, N'SUPERSTAR SHOES', N'Originally made for basketball courts in the ''70s. Celebrated by hip hop royalty in the ''80s. The adidas Superstar shoe is now a lifestyle staple for streetwear enthusiasts. The world-famous shell toe feature remains, providing style and protection. Just like it did on the B-ball courts back in the day', 1, CAST(2600000.00 AS Decimal(18, 2)), CAST(2300000.00 AS Decimal(18, 2)), 7, N'image/supper.png', 1, 1, CAST(N'2023-02-09T00:00:00.000' AS DateTime), CAST(N'2023-02-09T00:00:00.000' AS DateTime), 15, 250, 2)
INSERT [dbo].[Product] ([ProductId], [name], [description], [category_id], [historical_cost], [competitive_price], [brand_id], [imgae_product], [new_products], [best_selling], [created_at], [updated_at], [Quantity], [View_count], [size]) VALUES (12, N'STAN SMITH SHOES', N'Timeless appeal. Effortless style. Everyday versatility. For over 50 years and counting, adidas Stan Smith Shoes have continued to hold their place as an icon. This pair shows off a fresh redesign as part of adidas'' commitment to use only recycled polyester by 2024. With a vegan upper and an outsole made from rubber waste, they still have iconic style, they''re just made with the planet in mind.', 1, CAST(2600000.00 AS Decimal(18, 2)), CAST(2300000.00 AS Decimal(18, 2)), 7, N'image/stand.png', 1, 1, CAST(N'2023-02-05T00:00:00.000' AS DateTime), CAST(N'2023-02-05T00:00:00.000' AS DateTime), 20, 350, 1)
INSERT [dbo].[Product] ([ProductId], [name], [description], [category_id], [historical_cost], [competitive_price], [brand_id], [imgae_product], [new_products], [best_selling], [created_at], [updated_at], [Quantity], [View_count], [size]) VALUES (13, N'ULTRABOOST 1.0 SHOES', N'Sleek, light and packed with performance tech, these adidas Ultraboosts score high across the board. While the sock-like adidas PRIMEKNIT upper feels airy and flexible, a specially-designed heel counter supports the backs of your feet to keep you striding comfortably through long runs. The energy-returning adidas BOOST midsole is cushioned and springy, while a Stretchweb outsole, made with Continental™ Rubber, grips any surface for a smooth ride.', 1, CAST(4500000.00 AS Decimal(18, 2)), CAST(4100000.00 AS Decimal(18, 2)), 7, N'image/boost.png', 1, 1, CAST(N'2023-02-05T00:00:00.000' AS DateTime), CAST(N'2023-02-05T00:00:00.000' AS DateTime), 9, 653, 1)
INSERT [dbo].[Product] ([ProductId], [name], [description], [category_id], [historical_cost], [competitive_price], [brand_id], [imgae_product], [new_products], [best_selling], [created_at], [updated_at], [Quantity], [View_count], [size]) VALUES (35, N'DIORUNION ANKLE BOOT', N'', 3, CAST(9999999.00 AS Decimal(18, 2)), CAST(8888888.00 AS Decimal(18, 2)), 3, N'image/dior.png', 1, 1, CAST(N'2023-02-13T00:00:00.000' AS DateTime), CAST(N'2023-02-13T00:00:00.000' AS DateTime), 5, 650, 2)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Size] ON 

INSERT [dbo].[Size] ([idSize], [Size]) VALUES (1, 35.5)
INSERT [dbo].[Size] ([idSize], [Size]) VALUES (2, 36)
INSERT [dbo].[Size] ([idSize], [Size]) VALUES (3, 36.5)
INSERT [dbo].[Size] ([idSize], [Size]) VALUES (4, 40)
INSERT [dbo].[Size] ([idSize], [Size]) VALUES (5, 42)
INSERT [dbo].[Size] ([idSize], [Size]) VALUES (6, 43)
SET IDENTITY_INSERT [dbo].[Size] OFF
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_Account] FOREIGN KEY([username])
REFERENCES [dbo].[Account] ([username])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_Account]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([OrderId])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Product] FOREIGN KEY([Product_id])
REFERENCES [dbo].[Product] ([ProductId])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Product]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customers] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([customerId])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customers]
GO
USE [master]
GO
ALTER DATABASE [PRJ301] SET  READ_WRITE 
GO
