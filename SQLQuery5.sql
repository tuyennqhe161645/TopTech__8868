USE [PROJECT_PRJ301_SE1726]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 3/16/2023 8:44:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[uid] [int] NULL,
	[pid] [int] NULL,
	[quantity] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 3/16/2023 8:44:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 3/16/2023 8:44:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[order_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[order_date] [date] NULL,
	[total] [float] NULL,
	[notes] [nvarchar](200) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 3/16/2023 8:44:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[detail_id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[product_id] [int] NULL,
	[price] [float] NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[detail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 3/16/2023 8:44:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[product_name] [nvarchar](50) NULL,
	[price] [float] NULL,
	[stock] [int] NULL,
	[category_id] [int] NULL,
	[img] [nvarchar](max) NULL,
	[description] [nvarchar](1000) NULL,
	[create_date] [date] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 3/16/2023 8:44:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[role_id] [int] IDENTITY(1,1) NOT NULL,
	[role_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 3/16/2023 8:44:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[user_name] [nvarchar](50) NULL,
	[email] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[address] [nvarchar](50) NULL,
	[gender] [bit] NULL,
	[phone] [nchar](11) NULL,
	[role_id] [int] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Cart] ([uid], [pid], [quantity]) VALUES (2, 3, 3)
GO
INSERT [dbo].[Cart] ([uid], [pid], [quantity]) VALUES (6, 16, 3)
GO
INSERT [dbo].[Cart] ([uid], [pid], [quantity]) VALUES (6, 7, 1)
GO
INSERT [dbo].[Cart] ([uid], [pid], [quantity]) VALUES (8, 3, 25)
GO
INSERT [dbo].[Cart] ([uid], [pid], [quantity]) VALUES (8, 13, 5)
GO
INSERT [dbo].[Cart] ([uid], [pid], [quantity]) VALUES (8, 21, 13)
GO
INSERT [dbo].[Cart] ([uid], [pid], [quantity]) VALUES (8, 15, 1)
GO
INSERT [dbo].[Cart] ([uid], [pid], [quantity]) VALUES (8, 14, 1)
GO
INSERT [dbo].[Cart] ([uid], [pid], [quantity]) VALUES (8, 43, 16)
GO
INSERT [dbo].[Cart] ([uid], [pid], [quantity]) VALUES (8, 72, 4)
GO
SET IDENTITY_INSERT [dbo].[Category] ON 
GO
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (1, N'Phone')
GO
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (2, N'Laptop')
GO
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (3, N'Computer Screen')
GO
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (4, N'Keyboard')
GO
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (5, N'Mouse')
GO
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 
GO
INSERT [dbo].[Order] ([order_id], [user_id], [order_date], [total], [notes]) VALUES (1, 2, CAST(N'2019-08-07' AS Date), 100, N'alooo')
GO
INSERT [dbo].[Order] ([order_id], [user_id], [order_date], [total], [notes]) VALUES (2, 2, CAST(N'2018-09-08' AS Date), 100, N'123')
GO
INSERT [dbo].[Order] ([order_id], [user_id], [order_date], [total], [notes]) VALUES (3, 2, CAST(N'2020-05-05' AS Date), 100, N'ok')
GO
INSERT [dbo].[Order] ([order_id], [user_id], [order_date], [total], [notes]) VALUES (4, 3, CAST(N'2021-06-04' AS Date), 100, N'alo')
GO
INSERT [dbo].[Order] ([order_id], [user_id], [order_date], [total], [notes]) VALUES (5, 3, CAST(N'2022-09-06' AS Date), 100, N'Hello')
GO
INSERT [dbo].[Order] ([order_id], [user_id], [order_date], [total], [notes]) VALUES (6, 3, CAST(N'2021-08-09' AS Date), 100, N'goof')
GO
INSERT [dbo].[Order] ([order_id], [user_id], [order_date], [total], [notes]) VALUES (7, NULL, CAST(N'2019-07-02' AS Date), 100, N'good')
GO
INSERT [dbo].[Order] ([order_id], [user_id], [order_date], [total], [notes]) VALUES (8, NULL, CAST(N'2022-06-16' AS Date), 11.5, N'quick')
GO
INSERT [dbo].[Order] ([order_id], [user_id], [order_date], [total], [notes]) VALUES (9, NULL, CAST(N'2022-07-05' AS Date), 9, N'quick')
GO
INSERT [dbo].[Order] ([order_id], [user_id], [order_date], [total], [notes]) VALUES (10, NULL, CAST(N'2022-07-05' AS Date), 20, N'')
GO
INSERT [dbo].[Order] ([order_id], [user_id], [order_date], [total], [notes]) VALUES (11, 3, CAST(N'2022-07-13' AS Date), 17.5, N'quick')
GO
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (1, 1, 2, 20, 6)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (2, 1, 3, 20, 5)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (3, 1, 5, 20, 4)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (4, 1, 4, 20, 9)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (5, 1, 7, 20, 2)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (6, 2, 5, 20, 1)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (7, 2, 2, 20, 1)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (8, 2, 8, 20, 5)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (9, 3, 4, 20, 4)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (10, 3, 5, 20, 5)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (11, 4, 9, 20, 2)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (12, 4, 7, 20, 3)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (13, 5, 5, 20, 1)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (14, 5, 12, 20, 5)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (15, 6, 13, 20, 6)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (16, 6, 13, 20, 5)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (17, 7, 4, 20, 2)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (18, 7, 26, 20, 1)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (19, 8, 24, 2.5, 1)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (20, 8, 28, 4.5, 1)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (21, 8, 27, 4.5, 1)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (22, 9, 29, 4.5, 2)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (23, 10, 23, 3, 5)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (24, 10, 22, 2.5, 2)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (25, 11, 21, 9, 1)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (26, 11, 20, 8.5, 1)
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (2, N'PH_iPHONE_12', 637.5, 100, 1, N'./images/Phone/PH_iP_12.jpg', N'Kích thước màn hình: 6.1 inchesCông nghệ màn hình: OLEDCamera sau: 12 MP, f/1.6, 26mm (wide), 1.4µm,dual pixel PDAF, OIS 12 MP, f/2.4, 120˚, 13mm (ultrawide), 1/3.6', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (3, N'PH_iPHONE_13', 759.0, 100, 1, N'./images/Phone/PH_iP_13.png', N'Kích thước màn hình: 6.1 inchesCông nghệ màn hình: OLEDCamera sau góc rộng: 12MP, f/1.6Camera sau góc siêu rộng: 12MP, ƒ/2.4Camera trước: 12MP, f/2.2Chipset: Apple A15Dung lượng RAM: 4 GBBộ nhớ trong: 128 GBPin: 3.240mAhHệ điều hành: iOS 15Độ phân giải màn hình: 2532 x 1170 pixelsTính năng màn hìnhMàn hình super Retina XDR, OLED, 460 ppi, HDR display, công nghệ True Tone Wide color (P3), Haptic Touch, Lớp phủ oleophobic chống bám vân tay', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (4, N'PH_iPHONE_13PRM', 1110.5, 100, 1, N'./images/Phone/PH_iP_13PRM.jpg', N'Kích thước màn hình: 6.7 inchesCông nghệ màn hình: OLEDCamera sau góc rộng: 12MP, ƒ/1.5Camera sau góc siêu rộng: 12MP, ƒ/1.8Camera tele: 12MP, /2.8Camera trước: 12MP, ƒ/2.2Chipset: Apple A15Dung lượng RAM: 6 GBBộ nhớ trong: 128 GBPin: 4,325mAhThẻ SIM: 2 SIM (nano SIM và eSIM)Hệ điều hành: iOS15Độ phân giải màn hình: 2778 x 1284 pixelTính năng màn hình: 120Hz, Super Retina XDR với ProMotion 6.1 inch, OLED, 458 pp, HDR display, True Tone, Wide color (P3), Haptic Touch', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (5, N'PH_iPHONE_14', 861.0, 100, 1, N'./images/Phone/iphone_14.png', N'Kích thước màn hình: 6.1 inchesCông nghệ màn hình: OLEDCamera sau góc rộng: 12MPCamera sau góc siêu rộng: 12MPChipset: Apple A15 BionicDung lượng RAM: 6 GBBộ nhớ trong: 128 GBPin: 3,279mAhThẻ SIM: 2 SIM (nano SIM và eSIM)Hệ điều hành: iOS 16Tính năng màn hình: Tần số quét 60Hz', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (6, N'PH_iPHONE_14PRM', 1190.5, 100, 1, N'./images/Phone/PH_iP_14PRM.jpg', N'Kích thước màn hình: 6.7 inchesCông nghệ màn hình: Super Retina XDR OLEDCamera chính: 48 MP, f/1.8, 24mm, 1.22µm, PDAF, OISCamera góc siêu rộng: 12 MP, f/2.2, 13mm, 120˚, 1.4µm, PDAFCamera tele: 12 MP, f/2.8, 77mm (telephoto), PDAF, OIS, 3x optical zoomCảm biến độ sâu: TOF 3D LiDARCamera selfie: 12 MP, f/1.9, 23mm, 1/3.6', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (7, N'PH_OPPO_A76', 214.0, 100, 1, N'./images/Phone/PH_Oppo_A76.jpg', N'Công nghệ màn hình: IPS LCDĐộ phân giải: HD+ (720 x 1612 Pixels)Màn hình rộng: 6.56', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (8, N'PH_OPPO_A94', 227.0, 100, 1, N'./images/Phone/PH_Oppo_A94.jpg', N'Công nghệ màn hình: OLEDĐộ phân giải: Full HD+ (1080 x 2400 Pixels)Màn hình rộng: 6.4', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (9, N'PH_OPPO_Reno6', 333.5, 100, 1, N'./images/Phone/PH_Oppo_Reno6.jpg', N'Công nghệ màn hình: AMOLEDĐộ phân giải: Full HD+Màn hình rộng: 6.43', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (10, N'PH_OPPO_Reno8Pro', 759.0, 100, 1, N'./images/Phone/PH_Oppo_Reno8Pro.jpg', N'Công nghệ màn hình: AMOLEDĐộ phân giải: Full HD+ (1080 x 2412 Pixels)Độ phân giải: Chính 50 MP & Phụ 8 MP, 2 MP, 32 MPHệ điều hành: Android 12Chip xử lý (CPU): MediaTek Dimensity 8100 Max 8 nhânRAM: 12 GBMạng di động: Hỗ trợ 5GSố khe sim: 2 Nano SIMDung lượng pin: 4500 mAh', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (11, N'PH_SAMSUNG_A73', 434.5, 100, 1, N'./images/Phone/PH_SS_A73.jpg', N'Kích thước màn hình: 6.7 inchesCông nghệ màn hình: Super AMOLEDCamera chính: 108 MP, f/1.8, PDAF, OISCamera góc siêu rộng: 12 MP, f/2.2Camera macro: 5 MP, f/2.4Camera chân dung: 5 MP, f/2.4Camera trước: 32 MP, f/2.2Chipset: Snapdragon 778G 5G 8 nhânDung lượng RAM: 8 GBBộ nhớ trong: 256 GBPin: 5000 mAhThẻ SIM: 2 SIM (Nano-SIM)Hệ điều hành: Android 12, One UI 4.1Độ phân giải màn hình: 1080 x 2400 pixels (FullHD+)Tính năng màn hình: Tần số quét 120 Hz, Kính cường lực Corning Gorilla Glass 5', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (12, N'PH_SAMSUNG_S23Ultra', 1139.5, 100, 1, N'./images/Phone/PH_SS_S23Ultra.jpg', N'Kích thước màn hình: 6.8 inchesCông nghệ màn hình: Dynamic AMOLED 2XCamera siêu rộng: 12MP F2.2 (Dual Pixel AF)Camera chính: 200MP F1.7 OIS ±3° (Super Quad Pixel AF)Tele 1: 10MP F4.9 (10X, Dual Pixel AF) OIS,Tele 2: 10MP F2.4 (3X, Dual Pixel AF) OIS Thu phóng chuẩn không gian 100XCamera trước: 12MP F2.2 (Dual Pixel AF)Chipset: Snapdragon 8 Gen 2 (4 nm)Dung lượng RAM: 8 GBBộ nhớ trong: 256 GBPin: 5.000mAhThẻ SIM: 2 Nano-SIM + eSIMHệ điều hành: Android 13, One UI 5Độ phân giải màn hình: 1440 x 3088 pixels (QHD+)Tính năng màn hình: 120Hz, HDR10+, 1750 nits, Gorilla Glass Victus 2Tương thích: Bút S-Pen', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (13, N'PH_SAMSUNG_ZFlip4', 844.0, 100, 1, N'./images/Phone/PH_SS_ZFlip4.jpg', N'Kích thước màn hình: 6.7 inchesCông nghệ màn hình: Dynamic AMOLED 2XCamera góc rộng: 12 MP, f/1.8, PDAF, OISCamera góc siêu rộng: 12 MP, f/2.2, 123˚Camera trước: 10 MP, f/2.4Chipset: Snapdragon 8+ Gen 1 (4 nm)Dung lượng RAM: 8 GBBộ nhớ trong: 128 GBPin: 3700 mAhThẻ SIM: 2 SIM (nano SIM và eSIM)Hệ điều hành: Android 12, One UI 4.1.1Tính năng màn hình: Màn hình chính 6.7 inches, màn hình ngoài: 2.1 inches, Super AMOLED 120Hz, HDR10+, 1200 nits (peak)', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (14, N'PH_SAMSUNG_ZFold4', 1604.5, 100, 1, N'./images/Phone/PH_SS_ZFold4.jpg', N'Kích thước màn hình: 7.6 inchesCông nghệ màn hình: AMOLEDCamera chính: 50MPCamera góc siêu rộng: 12MPCamera tele: 10MP (3x zoom)Camera trước: 10MP (bên ngoài) + 4MP (dưới màn hình)Chipset: Snapdragon 8 Plus Gen 1Dung lượng RAM: 12 GBBộ nhớ trong: 256 GBPin: 4,400 mAhThẻ SIM: 2 Nano-SIM + eSIMHệ điều hành: Android 12, One UI 4.1.1Tính năng màn hình: Màn hình chính: 7,6-inch QXGA + AMOLED, 120Hz,Màn hình phụ: 6.2-inch HD + AMOLED, 120Hz', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (15, N'PH_Xiaomi_12Pro', 844.0, 100, 1, N'./images/Phone/PH_Xiaomi_12Pro.jpg', N'Công nghệ màn hình: LTPO AMOLED, 120Hz, HDR10+Độ phân giải: QuadHD+ (1440 x 3200 pixels), tỉ lệ 20:9Màn hình rộng: 6.73 inchesĐộ phân giải: 50 MP, f/1.9 (góc rộng), Dual Pixel PDAF, OIS, 50 MP, f/1.9 (tele), PDAF, 2x zoom, 50 MP, f/2.2, 115˚ (góc siêu rộng), 32 MP (góc rộng)Chip xử lý (CPU): Qualcomm SM8450 Snapdragon 8 Gen1 (4 nm), 8 nhân (1x3.00 GHz & 3x2.50 GHz & 4x1.80 GHz), GPU: Adreno 730Bộ nhớ trong (ROM): 256GBRAM: 12GBSố khe sim: 2 Nano SIMDung lượng pin: Li-Po 4600 mAh, sạc nhanh 120W', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (16, N'PH_Vivo_V23', 358.5, 100, 1, N'./images/Phone/PH_Vivo_V23.jpg', N'Công nghệ màn hình: AMOLEDĐộ phân giải: 6,44', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (17, N'LT_MAC_AirM1', 831.0, 100, 2, N'./images/Laptop/LT_MAC_Air M1 256GB 2020.jpg', N'Loại card đồ họa: GPU 7 nhân, 16 nhân Neural Engine
Dung lượng RAM: 8GB
Loại RAM: LPDDR4
Ổ cứng: 256GB SSD
Kích thước màn hình: 13.3 inches
Công nghệ màn hình: Độ sáng 400 nits, hỗ trợ dải màu P3, True-Tone
Pin: 49.9-watt-hour lithium-polymer, củ sạc công suất 30W
Hệ điều hành: macOS Big Sur
Độ phân giải màn hình: 2560 x 1600 pixels (2K)
Cổng giao tiếp: 2 cổng Thunderbolt / USB 4
Tính năng khác: Cảm biến vân tay Touch ID, 720p FaceTime HD camera
', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (18, N'LT_MAC_AirM2', 1156.0, 100, 2, N'./images/Laptop/LT_MAC_Air M2 2022 8GB 256GB.jpg', N'Loại card đồ họa: 8 nhân GPU, 16 nhân Neural EngineDung lượng RAM: 8GBỔ cứng: 256GBKích thước màn hình: 13.6 inchesCông nghệ màn hình: Liquid Retina DisplayPin: 52,6 WhHệ điều hành: MacOSĐộ phân giải màn hình: 2560 x 1664 pixelsCổng giao tiếp: 2 x Thunderbolt 3Jack tai nghe 3.5mm MagSafe 3', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (19, N'LT_MAC_Pro13M2', 1279.5, 100, 2, N'./images/Laptop/LT_MAC_Pro 13 M2 2022 8GB 256GB.jpg', N'Loại card đồ họa: 10 nhân GPUDung lượng RAM: 8GBLoại RAM: 8GBỔ cứng: 256GB SSDKích thước màn hình: 13 inchesPin: 58.2WhrsHệ điều hành: MacOSĐộ phân giải màn hình: 2560 x 1664 pixelsCổng giao tiếp: Cổng sạc, Cổng màn hình Thunderbolt 3 (lên đến 40Gb/s),USB 4 (lên đến 40Gb/s), USB 3.1 Gen 2 (lên đến 10Gb/s), cổng 3.5mm', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (20, N'LT_MAC_Pro13M1', 1165.5, 100, 2, N'./images/Laptop/LT_MAC_Pro 13 Touch Bar M1 256GB 2020.jpg', N'Loại card đồ họa: 8 nhân GPU, 16 nhân Neural EngineDung lượng RAM: 8GBỔ cứng: 256GB SSDKích thước màn hình: 13.3 inchesCông nghệ màn hình: Độ sáng 500 nits, hỗ trợ dải màu P3, True-TonePin: 58.2-watt-hour lithium-polymer, 61W USB-C Power AdapterHệ điều hành: macOS Big SurĐộ phân giải màn hình: 2560 x 1600 pixel (2K)Cổng giao tiếp: 2 cổng Thunderbolt / USB 4 portsTính năng khác: Cảm biến vân tay Touch ID, FaceTime video', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (21, N'LT_MAC_AirM2', 1414.0, 100, 2, N'./images/Laptop/LT_MAC_Air M2 2022 16GB 256GB.jpg', N'Loại card đồ họa: 8 nhân GPU, 16 nhân Neural EngineDung lượng RAM: 16GBỔ cứng: 256GBCông nghệ màn hình: Liquid Retina DisplayKích thước màn hình: 13.6 inchesPin: 52,6 WhHệ điều hành: MacOSĐộ phân giải màn hình: 2560 x 1664 pixelsCổng giao tiếp: 2 x Thunderbolt 3, Jack tai nghe 3.5mm, MagSafe 3', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (22, N'LP_ROG_G15', 814.5, 100, 2, N'./images/Laptop/LP_ROG_G15.png', N'CPU: AMD Ryzen 7-4800H 2.9GHz up to 4.2GHz, 8 cores 16 threadsRAM: 8GB DDR4 3200MHz (2x SO-DIMM socket)Ổ lưu trữ: 512GB SSD (+1 khe M.2 PCIe trống)Card đồ họa: NVIDIA Geforce GTX 1650 4GB GDDR6Màn hình: 15.6 inch FHD (1920 x 1080) IPS, Non-Glare, 144Hz AdaptiveSync, NanoedgeBàn phím: 4 Zone RGBCổng giao tiếp: 1x Type C USB 3.2 Gen 1 with Power Delivery and Display Port, 3x USB 3.2 Gen 1 Type-A, 1x 3.5mm Combo Audio Jack1x HDMI 2.0bHệ điều hành: Windows 11 HomePin: 4 Cell 56WHrsTrọng lượng: 2.1 kg', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (23, N'LP_ROG_G17', 1604.5, 100, 2, N'./images/Laptop/LP_ROG_G17.png', N'CPU: AMD Ryzen 7-6800H (3.2GHz up to 4.7GHz, 16MB Cache)RAM: 16GB (1x16GB) DDR5-4800Mhz (2 khe cắm nâng cấp tối đa 32GB) Ổ lưu trữ: 512GB M.2 NVMe PCIe 4.0 SSD (2 slots)Card đồ họa: NVIDIA GeForce RTX 3060 6GB GDDR6 With ROG Boost: 1752MHz at 140W (1702MHz Boost Clock+50MHz OC, 115W+25W Dynamic Boost)Màn hình: 17.3 inch WQHD (2560 x 1440) 16:9, IPS Non-Glare, NanoEdge, 240Hz/3ms, Adaptive-Sync, 100% DCI-P3, 300 nits, Dolby Vision HDRCổng giao tiếp:  1x USB 3.2 Gen 2 Type-C support DisplayPort/ power delivery / G-SYNC,1x USB 3.2 Gen 2 Type-C, 2x USB 3.2 Gen 1 Type-A, 1x HDMI 2.0b, 1x 3.5mm Combo Audio Jack, 1x RJ45 LAN JackBàn phím: Backlit Chiclet Keyboard Per-Key RGBHệ điều hành: Windows 11 HomePin: 4 Cell 90WHrsTrọng lượng: 2.90 Kg', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (24, N'LP_ROG_X16', 2702.0, 100, 2, N'./images/Laptop/LP_ROG_X16.png', N'CPU: i9-13900H Processor 2.6 GHz (24M Cache, up to 5.4 GHz, 14 cores: 6 P-cores and 8 E-cores)RAM: 16GB (8GBx2) DDR5 4800Mhz (Nâng cấp tối đa 64GB Ram)Ổ cứng: 1TB SSDCard đồ họa: NVIDIA GeForce RTX 4060 Laptop GPU 8GB GDDR6, ROG Boost: 2300MHz at 120W (2250MHz Boost Clock+50MHz OC, 100W+20W Dynamic Boost)Màn hình: 16', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (25, N'LP_TUF_F15', 709.0, 100, 2, N'./images/Laptop/LP_TUF_F15.png', N'CPU: Intel Core i5-10300H 2.5GHz up to 4.5GHz 8MBRAM: 8GB DDR4 2933MHz (2 khe ram, nâng cấp tối đa 32GB RAM)Ổ cứng: 512GB SSD M.2 PCIE G3X2, 1 khe SATA3 2.5', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (26, N'LP_ZEP_M16', 3251.5, 100, 2, N'./images/Laptop/LP_ZEP_M16.png', N'CPU: Intel i9-13900H Processor 2.6 GHz (24M Cache, up to 5.4 GHz, 14 cores: 6 P-cores and 8 E-cores)RAM: 32GB DDR5-4800Mhz SO-DIMM (16GB x 2) Upto max 64GB.Ổ cứng: 1TB M.2 NVMe PCIe 4.0 SSD (2 Slots)Card đồ họa: NVIDIA GeForce RTX™ 4070 Laptop GPU 8GB GDDR6  + MUX SwitchROG Boost: 2030MHz at 140W (1980MHz Boost Clock+50MHz OC, 115W+25W Dynamic Boost)Màn hình: 16-inch QHD+ 16:10 (2560 x 1600, WQXGA), Mini LED, màn hình chống chói, 100%, 240Hz, 3ms, 1200 nits, DCI-P3 100%, Pantone Validated, ROG Nebula HDR DisplayCổng giao tiếp: 1x Thunderbolt 4 support DisplayPort / power delivery,1x USB 3.2 Gen 2 Type-C support DisplayPort™ / power delivery,2x USB 3.2 Gen 2 Type-A, 1x card reader (microSD) (UHS-II, 312MB/s), 1x HDMI 2.1 FRL,1x 3.5mm Combo Audio JackWebcam: 1080P FHD IR Camera For Windows HelloBàn phím: Backlit Chiclet Keyboard 1-Zone RGBHệ điều hành: Windows 11 HomePin: 90WHrs, 4S1P, 4-cell Li-ionTrọng lượng: 2.10 Kg', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (27, N'LP_MSI_15A11M', 611.5, 100, 2, N'./images/Laptop/LP_MSI_15A11M.png', N'CPU: Intel Core i5-1155G7 2.5GHz up to 4.5GHz 8MB 4 nhân 8 luồngRAM: 8GB DDR4 3200MHz ( 2 Khe ram nâng cấp tối đa 64GB )Ổ cứng: 512GB SSD M.2 PCIE Gen3X4 (Còn trống 1 khe SSD M.2 NVMe PCIe Gen4 )Card đồ họa: Intel Iris Xe GraphicsMàn hình: 15.6', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (28, N'LP_MSI_15B5M', 654.0, 100, 2, N'./images/Laptop/LP_MSI_15B5M.png', N'CPU:  AMD Ryzen 5 5625U (2.3GHz upto 4.3GHz, 3MB L2/ 16MB L3) 6 Cores 12 ThreadsRAM: 8GB DDR4 3200Mhz Onboard (Không nâng cấp)Ổ cứng: 512GB NVMe PCIe Gen 3x4 SSD (1 Slot)Card đồ họa: AMD Radeon GraphicsMàn hình: 15.6 inch FHD (1920*1080), IPS-Level 45% NTSCCổng giao tiếp: 1x Type-C USB3.2 Gen2 with PD charging, 1x Type-A USB3.2 Gen2, 1x (4K 30Hz) HDMI, 1x Micro SD Card Reader, 2x Type-A USB2.0, 1x Mic-in/ Headphone-out combo jackBàn phím:  Backlight Keyboard (Single-Color, White)Hệ điều hành:  Windows 11 HomePin: 3 cell, 39WhrTrọng lượng: 1.7 kg', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (29, N'LT_HP_15', 548.5, 100, 2, N'./images/Laptop/LT_HP_15-DY2795WM.jpg', N'Card đồ họa: Intel Iris Xe GraphicsDung lượng RAM: 8GBLoại RAM: DDR4-2666 MHzSố khe ram: 2 x 4 GBỔ cứng: 256 GB PCIe NVMe M.2 SSDKích thước màn hình: 15.6 inchesCông nghệ màn hình: Viền mỏng, màn hình chống chói, độ sáng 250 nits, độ phủ màu 45% NTSCPin: 3-cell, 41 Wh Li-ionHệ điều hành: Windows 11 HomeĐộ phân giải màn hình: 1920 x 1080 pixels (FullHD)Cổng giao tiếp: 1x USB Type-C, 2x USB Type-A, 1x HDMI 1.4b, 1x AC smart pin, 1x Headphone/microphone combo', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (30, N'LT_HP_Victus15', 709.0, 100, 2, N'./images/Laptop/LT_HP_Victus 15-FA0031DX.jpg', N'Card đồ họa: NVIDIA GeForce GTX 1650Dung lượng RAM: 8GBLoại RAM: 8GB DDR4 3200MhzSố khe ram: 2 kheỔ cứng: 512GB SSD NVMeKích thước màn hình: 15.6 inchesCông nghệ màn hình: Tần số quét 144HzPin: Lithium-ion, 3-cellHệ điều hành: Windows 11 HomeĐộ phân giải màn hình: 1920 x 1080 pixels (FullHD)Cổng giao tiếp: 1x Ethernet, 1x HDMI 2.1, 2x USB 3.0 Type A, 1x USB 3.0 Type C, Jack tai nghe', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (31, N'LT_HP_Victus16', 886.5, 100, 2, N'./images/Laptop/LT_HP_Victus 16- E0175AX.jpg', N'Card đồ họa: NVIDIA GeForce RTX 3050Ti 4GB GDDR6Dung lượng RAM: 8GBLoại RAM: 8GB (4GBx2) DDR4 3200MHz, 2 khe cắm tối đa 32GBỔ cứng: 512GB SSD M.2 PCIEKích thước màn hình: 16.1 inchesCông nghệ màn hình: Tần số quét 144Hz, màn hình chống loá, 250 nits, 45% NTSCPin: 4 Cell 70WHrHệ điều hành: Windows 10 Home SLĐộ phân giải màn hình: 1920 x 1080 pixels (FullHD)Cổng giao tiếp: 1x SuperSpeed USB Type-C 5Gbps signaling rate (DisplayPort 1.4, HP Sleep and Charge), 1x SuperSpeed USB Type-A 5Gbps signaling rate (HP Sleep and Charge),2x SuperSpeed USB Type-A 5Gbps signaling rate, 1x HDMI 2.1, 1x RJ-45', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (32, N'CS_AOC_Q24G2', 231.5, 100, 3, N'./images/Computer screen/CS_AOC_Q24G2.jpg', N'Thương hiệu: AOCBảo hành: 36 thángKích thước: 24 inchesĐộ phân giải: 2560 × 1440 @ 144Hz – HDMI 2560 × 1440 @ 165Hz– DisplayPortTấm nền: IPSTần số quét: 165HzThời gian phản hồi: 1msKiểu màn hình (phẳng/cong): phẳngĐộ sáng: 350 cd/m2Khả năng hiển thị màu sắc: 16.7 triệu màu, NTSC 102% (CIE1976) / sRGB 108% (CIE1931) / DCI-P3 93% (CIE1976), Delta E < 2Cổng xuất hình: HDMI 2.0 x 1, DisplayPort 1.2 x 1Tiêu thụ điện: 34W', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (33, N'CS_ASUS_ProArt', 248.5, 100, 3, N'./images/Computer screen/CS_ASUS_ProArt_PA248QV.jpg', N'Tần số quét: 75 HzThời gian phản hồi: 5msTỉ lệ màn hình: 16:10Signal Input: HDMI, D-Sub, DisplayPortPC Audio Input: 3.5mm Mini-JackEarphone jack: 3.5mm Mini-JackUSB Port(s): 3.0x4Độ tương phản động: 100000000:1Độ tương phản tĩnh: 1000:1Góc nhìn: 178°(H)/178°(V)Kích thước màn hình: 24.1 inchesTrọng lượng tịnh với chân đế :6.1 KgTrọng lượng tịnh không có chân đế :3.9 KgĐộ phân giải màn hình: 1920x1200 pixelsTính năng khác: 2W x 2 Stereo RMS, VESA Wall Mounting, Kensington lock', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (34, N'CS_ASUS_TUF', 400.0, 100, 3, N'./images/Computer screen/CS_ASUS_TUF_VG259QM.jpg', N'Thương hiệu: ASUS
Kích thước: 25 inches
Độ phân giải: FULL HD 1920 x 1080
Tấm nền: IPS
HDMI: 30 ~ 255 KHz (H) / 48 ~ 240 Hz (V)
Thời gian phản hồi: 1ms (GtG, Ave)
Kiểu màn hình (phẳng/cong): phẳng
Độ sáng: 400 cd/m2
GamePlus (các chế độ): Có (Crosshair / Timer / FPS Counter / Display Alignment / Sniper)
Ánh sáng xanh dương thấp: Có
Hỗ trợ HDCP: Có
VividPixel: Có
GameVisual: 7 chế độ (Phong cảnh / Đua xe / Rạp chiếu phim / RTS / RPG / FPS / Chế độ sRGB / Chế độ MOBA)
G-Sync tương thích, làm mờ chuyển động cực thấp, công nghệ đầu vào GameFast
Khả năng hiển thị màu sắc: 16.7 triệu màu, 72% NTSC
Cổng xuất hình: HDMI 2.0 x 1, DisplayPort 1.2 x 1
Tiêu thụ điện: 20W
', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (35, N'CS_ASUS_VZ249HR', 122.5, 100, 3, N'./images/Computer screen/CS_ASUS_VZ249HR.jpg', N'Tần số quét: 60 Hz
Tỉ lệ màn hình: 16:9
Cổng kết nối: HDMI (v1.4) x 1, D-Subx 1
Độ tương phản tĩnh: 1000 : 1
Góc nhìn: 178°/ 178°
Tấm nền: IPS
Kích thước màn hình: 24 inches
Trọng lượng có chân đế: 2.9 Kg, Không chân đế: 2.65kg
Độ phân giải màn hình: Full HD 1920x1080 pixels
', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (36, N'CS_BenQZowie', 548.0, 100, 3, N'./images/Computer screen/CS_BenQZowie_XL2740.jpg', N'Thương hiệu: BenQ
Model: BenQ Zowie XL2740 27" 240Hz Chuyên Game
Kích thước: 27 inches
Độ phân giải: FULL HD 1920 x 1080 (16:9)
Tấm nền: TN
Tần số quét: 240Hz
Thời gian phản hồi: 1ms (GtG)
Kiểu màn hình (phẳng/cong): phẳng
Độ sáng: 320 cd/m2
Khả năng hiển thị màu sắc: 16.7 triệu màu
Cổng xuất hình: DVI-DL / HDMI 2.0 x2 / DP1.2 / headphone jack
Tiêu thụ điện: 65W
', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (37, N'CS_DELL_S2721DS', 278.5, 100, 3, N'./images/Computer screen/CS_DELL_S2721DS.jpg', N'Tần số quét: 75 Hz
Thời gian phản hồi: 4ms
Tỉ lệ màn hình: 16:9
Cổng kết nối: 2x HDMI 1.4, 1x DP1.2
Độ tương phản tĩnh: 1000:1
Tấm nền: IPS
Kích thước màn hình: 27 inches
Độ phân giải màn hình: 2560 x 1440
', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (38, N'CS_DELL_UltraSharp', 603.0, 100, 3, N'./images/Computer screen/CS_DELL_UltraSharp_U2723QE.jpg', N'Tần số quét: 60 Hz
Thời gian phản hồi: 8ms
Tỉ lệ màn hình: 16:9
Cổng kết nối: 1x HDMI (HDCP 2.2), 1x DisplayPort 1.4, 1x Đầu ra DisplayPort, 1x USB-C 3.2 Gen 2 upstream,
1x USB-C 3.2 Gen 2 (15W), 4 x USB 3.2 Gen 2, 1x USB 3.2 Gen 2 (Sạc 1.2), 1x Đường ra âm thanh, 1x USB-C 3.2 Gen 2 (DisplayPort 1.4), 1x RJ-45
Độ tương phản động: 2000:1 / 2000:1
Góc nhìn: 178 độ ngang / 178 độ dọc
Tấm nền: IPS
Kích thước màn hình: 427 inches
Trọng lượng có chân đế: 6.62 kg, không có chân đế: 4.49 kg
Độ phân giải màn hình: 3840 x 2160 pixels
', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (39, N'CS_HKC_MB24V9', 105.5, 100, 3, N'./images/Computer screen/CS_HKC_MB24V9.jpg', N'Tần số quét: 75 Hz
Thời gian phản hồi: 8ms
Tỉ lệ màn hình: 16:9
Cổng kết nối: VGA, HDMI
Độ tương phản tĩnh: 1000 : 1
Góc nhìn: 178/178
Tấm nền: IPS
Kích thước màn hình: 24 inches
Kích thước màn hình (studio display): 23.8 inch
Trọng lượng: 4.1 kg
Độ phân giải màn hình: 1920 x 1080 pixels
', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (40, N'CS_HKC_MG27S9Q', 236.5, 100, 3, N'./images/Computer screen/CS_HKC_MG27S9Q.jpg', N'Tần số quét: 144 Hz
Thời gian phản hồi: 1ms
Tỉ lệ màn hình: 16:9
Cổng kết nối: 2x HDMI 1.4, display Port
Độ tương phản tĩnh: 1000:1
Góc nhìn: 178°(H)/178°(V)
Tấm nền: IPS
Kích thước màn hình: 27 inches
Trọng lượng: 7.43 kg
Độ phân giải màn hình: 2560 x 1440 pixels
', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (41, N'CS_HUAWEI_MV28', 675.0, 100, 3, N'./images/Computer screen/CS_HUAWEI_MateView28.jpg', N'Tần số quét: 60 Hz
Tỉ lệ màn hình: 3:2
Cổng kết nối: USB-C x 2, USB-A 3.0 x 2, HDMI 2.0** x 1, MiniDP x 1 (DP1.2), 3.5 mm jack x 1
Độ tương phản tĩnh: 1200:1
Tấm nền: IPS
Kích thước màn hình: 28 inches
Độ phân giải màn hình: 3840 x 2560 pixels
', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (42, N'CS_LG_27MP400', 143.5, 100, 3, N'./images/Computer screen/CS_LG_27MP400.jpg', N'Tần số quét: 75 Hz
Thời gian phản hồi: 5ms
Tỉ lệ màn hình: 16:9
Cổng kết nối: 1 x HDMI, 1 x D-Sub
Độ tương phản tĩnh: 1000:1
Góc nhìn: 178º(R/L), 178º(U/D)
Tấm nền: IPS
Kích thước màn hình: 27 inches
Trọng lượng không chân đế: 3.1, tính cả chân đế: 3.4
Độ phân giải màn hình: 1920 x 1080 pixel
', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (43, N'CS_LG_Ultragear', 172.5, 100, 3, N'./images/Computer screen/CS_LG_Ultragear_24GN650-B.jpg', N'Tần số quét: 144 Hz
Thời gian phản hồi: 1ms
Tỉ lệ màn hình: 16:9
Cổng kết nối: 2 x HDMI, 1 x DisplayPor, Headphone Out
Độ tương phản tĩnh: 1000:1
Góc nhìn: 178º (R/L), 178º (U/D)
Tấm nền: IPS
Kích thước màn hình: 24 inches
Trọng lượng: 5.6Kg
Độ phân giải màn hình: 1920 x 1080
', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (44, N'CS_MSI_OPTIX', 175.0, 100, 3, N'./images/Computer screen/CS_MSI_OPTIX_G2422.jpg', N'Kích thước màn hình: 23,8” (60cm)
Độ phân giải: 1920 x 1080 (FHD)
Tấm nền: IPS
Tốc độ làm mới: 170Hz
Thời gian phản hồi: 1ms 
Kiểu màn hình (phẳng/cong): phẳng
Độ sáng: 250 nits
Khả năng hiển thị màu sắc: 16.7 triệu màu
Cổng xuất hình: 1x Display Port, 2x HDMI, 1x Tai nghe
Tiêu thụ điện: 18kWh
', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (45, N'CS_SS_LS32', 333.5, 100, 3, N'./images/Computer screen/CS_SS_LS32BM700UEXXV.jpg', N'Tần số quét: 60 Hz
Thời gian phản hồi: 4ms
Tỉ lệ màn hình: 16:9
Cổng kết nối: 2x HDMI, 3x USB, 1x USB-C Charging Power 65W
Độ tương phản tĩnh: 3.000:1 (Typ.)
Góc nhìn: 178° độ dọc /178° độ ngang
Tấm nền: VA
Kích thước màn hình: 32 inches
Kích thước màn hình (studio display): 697.306 x 392.234 mm (HxV)
Trọng lượng có chân đế: 6.5 kg, không có chân đế: 5.4 kg
Độ phân giải màn hình: 3840 x 2160 pixels
', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (46, N'CS_SS_LU28', 295.0, 100, 3, N'./images/Computer screen/CS_SS_LU28R550UQEXXV.jpg', N'Tần số quét: 60 Hz
Thời gian phản hồi: 4ms
Tỉ lệ màn hình: 16:9
Cổng kết nối: Cổng màn hình, cổng HDMI, cổng Display Port 1.2
Độ tương phản tĩnh: 1.000:1
Góc nhìn: 178°(ngang) x 178° (dọc)
Tấm nền: IPS
Kích thước màn hình: 28 inches
Trọng lượng có chân đế 5.8 kg, không có chân đế 5.0 kg
Độ phân giải màn hình: 3,840 x 2,160 pixels
', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (47, N'KB_Akko_3098N', 100.5, 100, 4, N'./images/Keyboard/KB_Akko_3098N.jpg', N'Thương hiệu: Akko
Thiết kế: 98 phím
Kết nối:  Có dây, có thể tháo rời / Bluetooth 5.0 (tối đa 3 thiết bị) / Wireless 2.4Ghz (1 trong 3)
Pin: 3000 Mah
LED: Nền RGB (Backlit, dạng SMT bottom không cấn switch) với nhiều chế độ
Kích thước: 382 x 134 x 40 mm
Foam tiêu âm: Có lót Foam Silicone ở đáy phím, Có lót tiêu âm (FOAM) EVA dầy 3.5mm (nằm giữa plate và PCB)
Trọng lượng: 1.1 kg
Keycap: PBT Double-Shot, ASA profile
Switch: TTC Switch (Flame Red / Silent Brown)
Tương thích: Windows / MacOS / Linux (có hỗ trợ MAC Function)
', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (48, N'KB_Akko_3108R2', 98.5, 100, 4, N'./images/Keyboard/KB_Akko_3108 World Tour Tokyo R2.jpg', N'Thương hiệu: Akko
Model: AKKO 3108 World Tour Tokyo R2 (Cherry switch)
Kiểu kết nối: USB Type-C, có thể tháo rời
Loại bàn phím: Fullsize, 108 phím
Switch: Cherry switch (Blue/Brown/Red)
Keycaps: PBT Dye-Subbed, OEM Profile
Kích thước: 440 x 140 x 40 mm
Tương thích: Windows / MacOS / Linux
', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (49, N'KB_Akko_MG108', 58.0, 100, 4, N'./images/Keyboard/KB_Akko_MonsGeekMG108 Doll of Princess.jpg', N'Thiết kế: Fullsize, 108 phím
Kết nối: USB Type-C to Type-A
Foam tiêu âm PCB EVA: Tích hợp sẵn
Keycap: PBT Double-Shot, ASA profile
Switch: Akko switch v3 (Cream Blue / Cream Yellow) và AKKO v3 stab đã được lube và tinh chỉnh sẵn
LED: Nền RGB / PCBA 1.6mm
Tương thích: Windows / MacOS / Linux (có hỗ trợ MAC Function)
Kích thước: 445.5 x 137.5 x 41.8mm
Trọng lượng: 1.15kg
', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (50, N'KB_Dareu_810G', 35.5, 100, 4, N'./images/Keyboard/KB_Dareu_810G.jpg', N'Tương thích: Windows
Cách kết nối: USB Receiver (Đầu thu USB), độ dài dây / khoảng cách kết nối: 10 m
Kích thước bàn phím: Fullsize
Hãng sản xuất: DAREU
Kết nối: Wireless 2.4Ghz và Có dây
Cổng sạc vào: USB
Dung lượng Pin: 2000mAh
', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (51, N'KB_Dareu_EK87', 20.0, 100, 4, N'./images/Keyboard/KB_Dareu_EK87 TKL.jpg', N'Tương thích: Windows
Cách kết nối: Dây cắm USB độ dài dây / khoảng cách kết nối: 1.8 m
Kích thước bàn phím: Tenkeyless
Đèn nền LED: Có
Hãng sản xuất: DAREU
Tính năng khác: D switch độ bền lên đến 50 triệu lần nhấn
', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (52, N'KB_Dareu_EK807G', 26.0, 100, 4, N'./images/Keyboard/KB_Dareu_EK807G TKL.jpg', N'Pin: 2 x AAA
Tương thích: Windows
Cách kết nối: USB Receiver (Đầu thu USB)
Độ dài dây / Khoảng cách kết nối: 10 m
Kích thước bàn phím: Tenkeyless
Đèn nền LED: Không
Hãng sản xuất: DAREU
Dung lượng Pin: Lên đến 6 tháng
', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (53, N'KB_E-DRA_EK368L', 21.5, 100, 4, N'./images/Keyboard/KB_E-DRA_EK368L.jpg', N'Bàn phím cơ hai chế độ: Wireless 2.4G + Bluetooth (BT5.0)
Keycaps: ABS
Màu keycaps: Beta (Gray + White)
Số phím: 68 phím
Switch: HUANO (Blue / Red / Brown)
Đèn nền: No LED- Pin: 2xAA
Kích thước: 311*101*42mm
Trọng lượng: 557g
Tương thích với Win XP, Win7, Win8, Win10, hệ thống MAC.
', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (54, N'KB_E-DRA_EK387L', 27.0, 100, 4, N'./images/Keyboard/KB_E-DRA_EK387L.jpg', N'
Giao diện: USB Type C
Số lượng phím: 87 phím
Cáp bàn phím dài: 1.7M
Top cover: ABS top cover
Bottom cover: ABS- LED: Blue
Key caps: Double injection key caps
Logo: laser Logo
Antighosting: full antishosting keys
Tương thích hệ điều hành: Windows 98 / 2000 / ME / NT / XP / win 7,8,10
Cân nặng: 855g
Switch Huano: Blue Sw, Brown Sw, Red SwKey thích hợp cho Game thủ với mức giá phù hợp.
', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (55, N'KB_E-DRA_EK398', 21.5, 100, 4, N'./images/Keyboard/KB_E-DRA_EK398.jpg', N'Giao diện: USB
Số lượng phím: 98 phím
Màu keycaps: Beta (Black + White)
Đèn nền: Rainbows
Switch: YH (Blue/Red/Brown)
Keycap: ABS
Antighosting: Full antishosting keys
Tương thích với Win XP, Win7, Win8, Win10, hệ thống MAC.
', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (56, N'KB_Logitech_GProX', 113.5, 100, 4, N'./images/Keyboard/KB_Logitech_G Pro X.jpg', N'Thương hiệu: Logitech
Model:  Logitech G Pro X
Kết nối: Có dây
Kiểu dáng: Tenkeyless (TKL)
Size: 87phím
LED: RGB hỗ trợ điều chỉnh qua phần mềm Logitech G Hub
Switch: Logitech GX Switch Clicky
Keycaps: ABS xuyên LED
Dây: USB type A
Kích thước: 361 x 153 x 34 (mm)
Trọng lượng: 1 kg
Chất liệu: Nhựa
', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (57, N'KB_Logitech_G715', 185.0, 100, 4, N'./images/Keyboard/KB_Logitech_G715 TKL Off White.jpg', N'Hãng sản xuất: Logitech
Model:  Logitech G715 TKL Off White
Kết nối: Công nghệ LIGHTSPEED không dây, bluetooth
Switch: Linear / Tactile
Kích thước: 370,6 mm x 157 mm x 37,2 mm
Trọng lượng: 976g
Pin: Pin lithium polyme, có thể sạc lại với thời lượng sử dụng lên đến 30 giờ (Cổng sạc USB-C, có dây đi kèm)
Thiết kế: TKL 87 phím
Keycap: PBT đúc 2 lớp
Phím phương tiện: Có, bao gồm núm xoay âm lượng
', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (58, N'KB_Logitech_G413', 58.5, 100, 4, N'./images/Keyboard/KB_Logitech_MechanicalGamingG413TKLSE.jpg', N'Keycaps: PBT
Model: Logitech MechanicalGamingG413TKLSE
Switch: Tactile
Kiểu bàn phím: TKL
Kết nối: Có dây (USB 2.0)
LED: Có nền trắng trên mỗi phím
Kích thước: 355 x 127 x 36.3 (mm)
Trọng lượng: 650g
Tương thích: Windows 10 trở lên, macOS X 10.14 trở lên
', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (59, N'KB_RAZER_BlackwindowV3', 105.0, 100, 4, N'./images/Keyboard/KB_RAZER_BlackwindowV3.jpg', N'Thương hiệu: Razer
Model: Blackwidow V3 Mini HyperSpeed
Kết nối: Không dây, có dây, bluetooth
Thiết kế: 68 phím
LED: Razer Chroma RGB tùy chỉnh với 16,8 triệu màu
Switch: Razer Mechanical Green/ Yellow
Keycaps: ABS double-shot
Chất liệu: Nhôm
Phụ kiện: Cáp USB-C, USB Reciever
Tính năng: Công nghệ không dây siêu tốc độ Razer, hỗ trợ đa thiết bị Razer HyperSpeed Tuổi thọ 80 triệu lần nhấn phím, 
Razer Synapse 3 đã được kích hoạt N-key roll-over, các phím hoàn toàn có thể lập trình được với tính năng ghi macro nhanh chóng,
tùy chọn chế độ chơi trò chơi 1000 Hz Ultrapolling
', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (60, N'KB_RAZER_V2Pro', 240.0, 100, 4, N'./images/Keyboard/KB_RAZER_DeathStalkerV2Pro.jpg', N'Kết nối: Có dây / Wireless (2,4 Ghz) / Bluetooth 
Model: RAZER DeathStalker V2Pro
Thiết kế: Full size
Phím phương tiện: Có
LED: Razer Chroma có thể điều chỉnh với 16.8 triệu màu
Switch:  Razer™ Low-Profile Optical (Linear)
Keycaps: ABS
', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (61, N'KB_RAZER_Huntsman', 130.5, 100, 4, N'./images/Keyboard/KB_RAZER_Huntsman.jpg', N'Thương hiệu: Razer
Kích thước: Mini (60%)
Keycaps: Razer Doubleshot PBT Keycaps
Kiểu kết nối: Có dây - cáp Type-C có thể tháo rời
LED: Razer Chroma có thể điều chỉnh với 16.8 triệu màu
Switch: Razer Opto Switch Clicky/ Linear
Chất liệu: Nhôm
Kích thước: 4.07 x 11.56 x 1.45 inches
', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (62, N'MS_Apple_MK2E3', 73.0, 100, 5, N'./images/Mouse/MS_Apple_MagicMouse_MK2E3.jpg', N'Độ phân giải: 1600 DPI
Cảm biến: Không có
Đèn LED: Không có
Tiện ích: Điều khiển chạm vuốt thông minh trên bề mặt multi-Touch
Tương thích: MacOS, PadOS
Cách kết nối: Bluetooth
Độ dài dây / Khoảng cách kết nối: 10m
Hãng sản xuất: Apple Chính hãng
Cổng sạc vào: Lightning
Tính năng khác: Tương thích Mac OS X 10.11/iPadOS 13.4 trở lên
', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (63, N'MS_ASUS_HarpeAceAimLab', 126.5, 100, 5, N'./images/Mouse/MS_ASUS_HarpeAceAimLabEdition.jpg', N'Thương hiệu: Asus
Model: ASUS ROG Harpe Ace Aim Lab Edition
Nút: 5 nút
Kết nối: Có dây / Bluetooth 5.1 / Wireless 2.4GHz
Switch chuột: Rog lên đến 70 triệu lần nhấn
Pin: Li-Ion
Thời lượng pin: 90 giờ (không led), 79 giờ (có led)
Cảm biến: ROG AimPoint
DPI: 36000
IPS: 650
Gia tốc: 50G
AURA Sync: Có
Phần mềm: Armoury Crate
Kích thước: 127.5(L) x 63.7(W) x 39.6(H)mm
Trọng lượng: 54g
', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (64, N'MS_Dareu_A960S', 13.0, 100, 5, N'./images/Mouse/MS_Dareu_A960S.jpg', N'
Số nút bấm: 6
Đèn LED: RGB
Độ nhạy (DPI) 800-12.000
Cảm biến: Pixart 3336
Thông số IPS: 150IPS
Tần số phản hồi: 1000Hz
Switch: DAREU (50 triệu lần click)
Hãng sản xuất: DAREU
Tương thích: Windows
Cách kết nối: Dây cắm USB
Độ dài dây / Khoảng cách kết nối: 1.8m
Đèn nền LED: Có
', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (65, N'MS_Dareu_EM908', 13.5, 100, 5, N'./images/Mouse/MS_Dareu_EM908.jpg', N'Trọng lượng: 85g
Hãng sản xuất: DAREU
Độ phân giải: 600 - 6000 DPI
Nút nhấn: 6 nút nhấn
Tương thích: MacOS, Windows
Kết nối: Dây USB
Đèn LED: RGB
Tiện ích: Thiết kế công thái học vừa văn với bàn tay, tuổi thọ 50 triệu lượt click
', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (66, N'MS_Dareu_LM115G', 6.0, 100, 5, N'./images/Mouse/MS_Dareu_LM115G.jpg', N'Trọng lượng: 70g
Cảm biến: Lên đến 1600DPI
Hãng sản xuất: DAREU
Độ phân giải: 800- 1200 - 1600 DPI
Nút nhấn 6 nút gồm: Bi lăn, chuột trái/phải, nút chỉnh DBI, nút trở về/chuyển tiếp
Tương thích: Windows, Linux
Kết nối: USB Receiver
Đèn LED: Không
', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (67, N'MS_Dareu_LM130S', 4.0, 100, 5, N'./images/Mouse/MS_Dareu_LM130S.jpg', N'Hãng sản xuất: DAREU
Độ phân giải: 1000 DPI
Nút nhấn: 4 nút bấm: Nút cuộn, chuột trái, chuột phải, nút điều chỉnh DPI
Tương thích: Windows
Kết nối: Dây USB
Đèn LED: RGB
Tiện ích: Độ bền đến 10 triệu lần click
', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (68, N'MS_Logitech_B100', 3.5, 100, 5, N'./images/Mouse/MS_Logitech_B100.jpg', N'Hãng sản xuất: Logitech
Độ phân giải: 1000 DPI
Nút nhấn: 3 nút nhấp trái/phải, nhấp chuột giữa
Tương thích: MacOS, Windows, Linux
Kết nối: Dây USB
Đèn LED: Không
Tiện ích: Khả năng cuộn chính xác từng dòng
', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (70, N'MS_Logitech_G102', 16.0, 100, 5, N'./images/Mouse/MS_Logitech_G102LightSync.jpg', N'Độ phân giải: 200 -8000 DPI
Nút nhấn: 6 nút có thể lập trình
Tương thích: MacOS, Windows, Linux
Kết nối: Dây USB
Đèn LED: RGB LIGHTSYNC
Tiện ích: Lập trình màu sắc, tùy chỉnh độ nhạy và các lệnh trên nút
Hãng sản xuất: Logitech
', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (71, N'MS_Logitech_G304', 33.0, 100, 5, N'./images/Mouse/MS_Logitech_G304Prodigy.jpg', N'Độ phân giải: 200 - 12000 DPI
Cảm biến Hero mang lại hiệu suất đẳng cấp dẫn đầu và tiết kiệm năng lượng tới 10 lần (so với thế hệ trước)
Nút nhấn: 6 nút có thể lập trình
Tương thích: MacOS, Windows
Kết nối: Lightspeed
Tiện ích: Hệ thống ứng lực cho nút cơ học, tần suất gửi tín hiệu không dây 1000Hz(1ms), bộ vi xử lý: 32-bit ARM
Hãng sản xuất: Logitech
', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (72, N'MS_Logitech_M221', 10.5, 100, 5, N'./images/Mouse/MS_Logitech_M221.jpg', N'Độ phân giải: 1000 DPI
Cảm biến: Quang học
Nút nhấn 3 nút nhấn: Nhấp trái/phải, nhấp chuột giữa
Tương thích: MacOS, Windows, Linux
Kết nối: USB Receiver
Đèn LED: Không
Tiện ích: Công nghệ SilentTouch giảm tiếng ồn, hình dáng uốn lượn, thoải mái, mô phỏng theo đường cong tự nhiên của tay bạn
Cách kết nối: USB Receiver (Đầu thu USB)
Hãng sản xuất: Logitech
', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (73, N'MS_Logitech_M650', 26.0, 100, 5, N'./images/Mouse/MS_Logitech_SignatureM650.jpg', N'Độ phân giải: 400 - 4000 DPI
Cảm biến: Theo dõi quang học nâng cao
Nút nhấn 5 nút nhấn: Nhấp trái/phải, quay lại/Tiếp tục, nút cuộn với nút nhấp chuột giữa
Tương thích: MacOS, Windows, Linux
Kết nối: USB Receiver, Bluetooth
Đèn LED: Không
Tiện ích: Cuộn SmartWheel tăng độ chính xác, silentTouch độc quyền giảm ồn
Hãng sản xuất: Logitech
', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (74, N'MS_Microsoft_Mobile', 30.5, 100, 5, N'./images/Mouse/MS_Microsoft_ModernMobile.jpg', N'Độ phân giải: 1000 DPI
Nút nhấn: Nút trái, phải và giữa, bi lăn và nguồn (nút ghép nối bằng cách nhấn lâu)
Tương thích: MacOS, Windows
Kết nối: Bluetooth
Tiện ích: Điều chỉnh độ phân giải
Hãng sản xuất: Microsoft
', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (75, N'MS_MSI_M88', 5.0, 100, 5, N'./images/Mouse/MS_MSI_M88.jpg', N'Hãng sản xuất: MSI
Cảm biến: 1600 DPI
Tương thích: Windows
Kết nối: Dây USB
', CAST(N'2023-03-10' AS Date))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (76, N'MS_Razer_Deathadder', 20.5, 100, 5, N'./images/Mouse/MS_Razer_DeathadderEssential.jpg', N'Hãng sản xuất: Razer
Model: Deathadder Essential
Số nút: 5 nút có thể lập trình
Kiểu kết nối: Có dây, dây nhựa
Đèn LED: Led Green đơn sắc
Kết nối: USB 2.0
Kiểu cầm: Ergonomic / Công thái học
Độ phân giải (CPI/DPI): 6400DPI
Cảm biến: Cảm biến quang học (Optical)
Thời gian phản hồi: 1ms
Gia tốc: 220 IPS / 30G
Kích thước: 127.0 x 61.7 x 42.7 mm
Trọng lượng: 96g
', CAST(N'2023-03-10' AS Date))
GO
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 
GO
INSERT [dbo].[Roles] ([role_id], [role_name]) VALUES (1, N'Customer')
GO
INSERT [dbo].[Roles] ([role_id], [role_name]) VALUES (2, N'Admin')
GO
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 
GO
INSERT [dbo].[Users] ([user_id], [user_name], [email], [password], [address], [gender], [phone], [role_id]) VALUES (2, N'vu01@gmail.com', N'vu01@gmail.com', N'e10adc3949ba59abbe56e057f20f883e', N'hong cho anh oi', 1, N'0378387199 ', 1)
GO
INSERT [dbo].[Users] ([user_id], [user_name], [email], [password], [address], [gender], [phone], [role_id]) VALUES (3, N'123@12311111', N'123@12311111', N'4297f44b13955235245b2497399d7a93', N'dia chi', 0, N'0378387199 ', 2)
GO
INSERT [dbo].[Users] ([user_id], [user_name], [email], [password], [address], [gender], [phone], [role_id]) VALUES (5, N'vulhhe163397@gmail.com1', N'vulhhe163397@gmail.com1', N'e10adc3949ba59abbe56e057f20f883e', N'hong cho anh oi', 1, N'123123213  ', 1)
GO
INSERT [dbo].[Users] ([user_id], [user_name], [email], [password], [address], [gender], [phone], [role_id]) VALUES (6, N'vulhhe163397s1@gmail.com1', N'vulhhe163397s1@gmail.com1', N'e10adc3949ba59abbe56e057f20f883e', N'hong cho anh oi', 1, N'0378387199 ', 1)
GO
INSERT [dbo].[Users] ([user_id], [user_name], [email], [password], [address], [gender], [phone], [role_id]) VALUES (7, N'vulhhe16339@gmail.com', N'vulhhe16339@gmail.com', N'e10adc3949ba59abbe56e057f20f883e', N'hong cho anh oi', 1, N'0378387199 ', 1)
GO
INSERT [dbo].[Users] ([user_id], [user_name], [email], [password], [address], [gender], [phone], [role_id]) VALUES (8, N'abc', N'abc@gmail.com', N'e807f1fcf82d132f9bb018ca6738a19f', N'Hà Nội', 1, N'53535253253', 2)
GO
INSERT [dbo].[Users] ([user_id], [user_name], [email], [password], [address], [gender], [phone], [role_id]) VALUES (11, N'Nokia', N'danghoan2382002@gmail.com', N'25f9e794323b453885f5181f1b624d0b', N'Hà Nội', 1, N'5235       ', 1)
GO
INSERT [dbo].[Users] ([user_id], [user_name], [email], [password], [address], [gender], [phone], [role_id]) VALUES (12, N'Nokia', N'abcd@gmail.com', N'202cb962ac59075b964b07152d234b70', N'Hà Nội', 1, N'53535253253', 1)
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Product] FOREIGN KEY([pid])
REFERENCES [dbo].[Product] ([product_id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Product]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Users] FOREIGN KEY([uid])
REFERENCES [dbo].[Users] ([user_id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Users]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Users] FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([user_id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Users]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([order_id])
REFERENCES [dbo].[Order] ([order_id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([product_id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([category_id])
REFERENCES [dbo].[Category] ([category_id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles] FOREIGN KEY([role_id])
REFERENCES [dbo].[Roles] ([role_id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Roles]
GO
