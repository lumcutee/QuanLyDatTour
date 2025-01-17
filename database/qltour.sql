USE [master]
GO
/****** Object:  Database [QLTour]    Script Date: 4/29/2022 11:46:57 ******/
CREATE DATABASE [QLTour]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLTour', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QLTour.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLTour_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QLTour_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QLTour] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLTour].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLTour] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLTour] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLTour] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLTour] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLTour] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLTour] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QLTour] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLTour] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLTour] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLTour] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLTour] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLTour] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLTour] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLTour] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLTour] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QLTour] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLTour] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLTour] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLTour] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLTour] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLTour] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLTour] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLTour] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLTour] SET  MULTI_USER 
GO
ALTER DATABASE [QLTour] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLTour] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLTour] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLTour] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLTour] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLTour] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QLTour] SET QUERY_STORE = OFF
GO
USE [QLTour]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 4/29/2022 11:46:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[maKH] [int] IDENTITY(1,1) NOT NULL,
	[tenKH] [nvarchar](30) NULL,
	[sdt] [nvarchar](20) NULL,
	[gioiTinh] [nvarchar](20) NULL,
	[cmnd] [nvarchar](20) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[maKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 4/29/2022 11:46:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[maNV] [int] IDENTITY(1,1) NOT NULL,
	[tenNV] [nvarchar](20) NULL,
	[diaChi] [nvarchar](20) NULL,
	[gioiTinh] [nvarchar](10) NULL,
	[ngaySinh] [date] NULL,
	[sdt] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[maNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 4/29/2022 11:46:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[tenDN] [int] NOT NULL,
	[matKhau] [nvarchar](50) NULL,
	[quyen] [int] NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[tenDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tour]    Script Date: 4/29/2022 11:46:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tour](
	[maTour] [int] IDENTITY(1,1) NOT NULL,
	[tenTour] [nvarchar](30) NOT NULL,
	[diemDen] [nvarchar](20) NULL,
	[diemXuatPhat] [nvarchar](20) NULL,
	[thoiGian] [nvarchar](20) NULL,
	[ngayKhoiHanh] [date] NOT NULL,
	[moTa] [nvarchar](50) NULL,
	[gia] [decimal](18, 0) NOT NULL,
	[giaTreEm] [decimal](18, 0) NOT NULL,
	[soLuong] [int] NULL,
 CONSTRAINT [PK_Tour] PRIMARY KEY CLUSTERED 
(
	[maTour] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ve]    Script Date: 4/29/2022 11:46:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ve](
	[maVe] [int] IDENTITY(1,1) NOT NULL,
	[soNguoiLon] [int] NULL,
	[soTreEm] [int] NULL,
	[trangThai] [int] NULL,
	[ngayDat] [date] NULL,
	[maTour] [int] NULL,
	[maKH] [int] NULL,
	[maNV] [int] NULL,
 CONSTRAINT [PK_Ve] PRIMARY KEY CLUSTERED 
(
	[maVe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdt], [gioiTinh], [cmnd]) VALUES (1, N'Nguyễn Văn Ba', N'031256489', N'Nam', N'32564879')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdt], [gioiTinh], [cmnd]) VALUES (2, N'Phạm Thị Xuận', N'0254132486', N'Nữ', N'32698745')
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([maNV], [tenNV], [diaChi], [gioiTinh], [ngaySinh], [sdt]) VALUES (1, N'Tống Tuyết Nhi', N'TPHCM', N'Nữ', CAST(N'1999-05-12' AS Date), N'0325125480')
INSERT [dbo].[NhanVien] ([maNV], [tenNV], [diaChi], [gioiTinh], [ngaySinh], [sdt]) VALUES (2, N'Lê Long Chí', N'TPHCM', N'Nam', CAST(N'2000-10-20' AS Date), N'0236541256')
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
GO
INSERT [dbo].[TaiKhoan] ([tenDN], [matKhau], [quyen]) VALUES (1, N'0325125480', 1)
INSERT [dbo].[TaiKhoan] ([tenDN], [matKhau], [quyen]) VALUES (2, N'0236541256', 2)
GO
SET IDENTITY_INSERT [dbo].[Tour] ON 

INSERT [dbo].[Tour] ([maTour], [tenTour], [diemDen], [diemXuatPhat], [thoiGian], [ngayKhoiHanh], [moTa], [gia], [giaTreEm], [soLuong]) VALUES (3, N'Hạ Long - Hà Nội', N'Hà Nội', N'TPHCM', N'5 Ngày 4 Đêm', CAST(N'2021-04-30' AS Date), N'Phương Tiện : Máy Bay', CAST(5000000 AS Decimal(18, 0)), CAST(2500000 AS Decimal(18, 0)), 50)
INSERT [dbo].[Tour] ([maTour], [tenTour], [diemDen], [diemXuatPhat], [thoiGian], [ngayKhoiHanh], [moTa], [gia], [giaTreEm], [soLuong]) VALUES (4, N'Vũng Tàu', N'Vũng Tàu', N'TPHCM', N'2 Ngày 1 Đêm', CAST(N'2021-05-04' AS Date), N'Lịch Trình : ......', CAST(1200000 AS Decimal(18, 0)), CAST(7000000 AS Decimal(18, 0)), 30)
SET IDENTITY_INSERT [dbo].[Tour] OFF
GO
SET IDENTITY_INSERT [dbo].[Ve] ON 

INSERT [dbo].[Ve] ([maVe], [soNguoiLon], [soTreEm], [trangThai], [ngayDat], [maTour], [maKH], [maNV]) VALUES (2, 5, 1, 0, CAST(N'2021-04-27' AS Date), 3, 2, 1)
INSERT [dbo].[Ve] ([maVe], [soNguoiLon], [soTreEm], [trangThai], [ngayDat], [maTour], [maKH], [maNV]) VALUES (3, 2, 0, 1, CAST(N'2021-05-01' AS Date), 4, 1, 2)
SET IDENTITY_INSERT [dbo].[Ve] OFF
GO
ALTER TABLE [dbo].[Tour] ADD  CONSTRAINT [DF_Tour_gia]  DEFAULT ((0)) FOR [gia]
GO
ALTER TABLE [dbo].[Tour] ADD  CONSTRAINT [DF_Tour_giaTreEm]  DEFAULT ((0)) FOR [giaTreEm]
GO
ALTER TABLE [dbo].[Ve] ADD  CONSTRAINT [DF_Ve_trangThai]  DEFAULT ((0)) FOR [trangThai]
GO
ALTER TABLE [dbo].[Ve] ADD  CONSTRAINT [DF_Ve_ngayDat]  DEFAULT (getdate()) FOR [ngayDat]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_NhanVien] FOREIGN KEY([tenDN])
REFERENCES [dbo].[NhanVien] ([maNV])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_NhanVien]
GO
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_KhachHang] FOREIGN KEY([maKH])
REFERENCES [dbo].[KhachHang] ([maKH])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_Ve_KhachHang]
GO
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_NhanVien] FOREIGN KEY([maNV])
REFERENCES [dbo].[NhanVien] ([maNV])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_Ve_NhanVien]
GO
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_Tour] FOREIGN KEY([maTour])
REFERENCES [dbo].[Tour] ([maTour])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_Ve_Tour]
GO
USE [master]
GO
ALTER DATABASE [QLTour] SET  READ_WRITE 
GO
