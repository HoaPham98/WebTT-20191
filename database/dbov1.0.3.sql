/*
 Navicat Premium Data Transfer

 Source Server         : SQL Server GearHost
 Source Server Type    : SQL Server
 Source Server Version : 13005081
 Source Host           : den1.mssql6.gear.host:1433
 Source Catalog        : cinemadatabase
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 13005081
 File Encoding         : 65001

 Date: 23/10/2018 20:10:53
*/


-- ----------------------------
-- Table structure for ChiTietGiaoDich
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ChiTietGiaoDich]') AND type IN ('U'))
	DROP TABLE [dbo].[ChiTietGiaoDich]
GO

CREATE TABLE [dbo].[ChiTietGiaoDich] (
  [ID] int  IDENTITY(1,1) NOT NULL,
  [MaGiaoDich] varchar(12) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [MaGhe] varchar(8) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[ChiTietGiaoDich] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for DangPhim
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[DangPhim]') AND type IN ('U'))
	DROP TABLE [dbo].[DangPhim]
GO

CREATE TABLE [dbo].[DangPhim] (
  [MaDangPhim] varchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [TenDangPhim] varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[DangPhim] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of DangPhim
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[DangPhim]  VALUES (N'2DAT', N'2D ATMOS')
GO

INSERT INTO [dbo].[DangPhim]  VALUES (N'2DGO', N'2D GOLD')
GO

INSERT INTO [dbo].[DangPhim]  VALUES (N'2DIM', N'2D IMAX')
GO

INSERT INTO [dbo].[DangPhim]  VALUES (N'2DLA', N'2D LAMOUR')
GO

INSERT INTO [dbo].[DangPhim]  VALUES (N'2DNO', N'2D')
GO

INSERT INTO [dbo].[DangPhim]  VALUES (N'2DPR', N'2D PREMIUM')
GO

INSERT INTO [dbo].[DangPhim]  VALUES (N'2DST', N'2D STARIUM')
GO

INSERT INTO [dbo].[DangPhim]  VALUES (N'2DSX', N'2D SCREENX')
GO

INSERT INTO [dbo].[DangPhim]  VALUES (N'3DAT', N'3D ATMOS')
GO

INSERT INTO [dbo].[DangPhim]  VALUES (N'3DIM', N'3D IMAX')
GO

INSERT INTO [dbo].[DangPhim]  VALUES (N'3DNO', N'3D')
GO

INSERT INTO [dbo].[DangPhim]  VALUES (N'3DST', N'3D STARIUM')
GO

INSERT INTO [dbo].[DangPhim]  VALUES (N'4DXO', N'4DX')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for Ghe
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Ghe]') AND type IN ('U'))
	DROP TABLE [dbo].[Ghe]
GO

CREATE TABLE [dbo].[Ghe] (
  [MaGhe] AS (concat([MaPhong],[IDGhe])) PERSISTED NOT NULL,
  [MaLoaiGhe] varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [MaPhong] varchar(4) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [IDGhe] varchar(4) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [TinhTrangGhe] varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[Ghe] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Ghe
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NA01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NA02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NA03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NA04', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NA05', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NA06', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NA07', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NA08', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NA09', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NA10', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NA11', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NA12', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NA13', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NA14', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NA15', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NA16', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NB01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NB02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NB03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NB04', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NB05', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NB06', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NB07', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NB08', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NB09', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NB10', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NB11', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NB12', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NB13', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NB14', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NB15', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NB16', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NC01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NC02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NC03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NC04', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NC05', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NC06', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NC07', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NC08', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NC09', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NC10', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NC11', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NC12', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NC13', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NC14', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NC15', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NC16', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'ND01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'ND02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'ND03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'ND04', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'ND05', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'ND06', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'ND07', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'ND08', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'ND09', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'ND10', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'ND11', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'ND12', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'ND13', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'ND14', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'ND15', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'ND16', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NE01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NE02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NE03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NE14', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NE15', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NE16', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NF01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NF02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NF03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NF14', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NF15', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NF16', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NG01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NG02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NG03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NG14', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NG15', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NG16', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NH01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NH02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NH03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NH14', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NH15', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NH16', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NI01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NI02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NI03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NI14', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NI15', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NI16', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NJ01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NJ02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NJ03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NJ14', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NJ15', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NJ16', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NK01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NK02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NK03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NK04', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NK05', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NK06', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NK07', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NK08', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NK09', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NK10', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NK11', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NK12', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NK13', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NK14', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NK15', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NK16', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NL01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NL02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NL03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NL04', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NL05', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NL06', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NL07', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NL08', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NL09', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NL10', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NL11', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NL12', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NL13', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NL14', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NL15', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'NL16', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'SM01', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'SM02', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'SM03', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'SM04', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'SM05', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'SM06', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'SM07', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'SM08', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'VE04', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'VE05', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'VE06', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'VE07', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'VE08', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'VE09', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'VE10', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'VE11', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'VE12', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'VE13', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'VF04', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'VF05', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'VF06', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'VF07', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'VF08', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'VF09', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'VF10', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'VF11', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'VF12', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'VF13', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'VG04', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'VG05', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'VG06', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'VG07', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'VG08', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'VG09', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'VG10', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'VG11', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'VG12', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'VG13', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'VH04', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'VH05', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'VH06', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'VH07', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'VH08', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'VH09', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'VH10', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'VH11', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'VH12', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'VH13', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'VI04', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'VI05', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'VI06', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'VI07', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'VI08', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'VI09', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'VI10', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'VI11', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'VI12', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'VI13', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'VJ04', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'VJ05', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'VJ06', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'VJ07', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'VJ08', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'VJ09', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'VJ10', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'VJ11', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'VJ12', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'VJ13', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NA01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NA02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NA03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NA04', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NA05', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NA06', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NA07', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NA08', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NA09', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NA10', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NA11', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NA12', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NA13', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NA14', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NA15', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NA16', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NB01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NB02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NB03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NB04', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NB05', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NB06', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NB07', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NB08', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NB09', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NB10', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NB11', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NB12', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NB13', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NB14', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NB15', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NB16', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NC01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NC02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NC03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NC04', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NC05', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NC06', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NC07', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NC08', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NC09', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NC10', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NC11', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NC12', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NC13', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NC14', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NC15', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NC16', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'ND01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'ND02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'ND03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'ND04', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'ND05', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'ND06', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'ND07', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'ND08', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'ND09', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'ND10', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'ND11', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'ND12', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'ND13', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'ND14', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'ND15', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'ND16', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NE01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NE02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NE03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NE14', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NE15', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NE16', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NF01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NF02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NF03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NF14', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NF15', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NF16', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NG01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NG02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NG03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NG14', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NG15', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NG16', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NH01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NH02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NH03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NH14', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NH15', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NH16', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NI01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NI02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NI03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NI14', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NI15', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NI16', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NJ01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NJ02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NJ03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NJ14', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NJ15', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NJ16', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NK01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NK02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NK03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NK04', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NK05', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NK06', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NK07', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NK08', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NK09', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NK10', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NK11', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NK12', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NK13', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NK14', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NK15', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NK16', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NL01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NL02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NL03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NL04', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NL05', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NL06', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NL07', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NL08', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NL09', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NL10', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NL11', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NL12', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NL13', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NL14', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NL15', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'NL16', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'SM01', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'SM02', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'SM03', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'SM04', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'SM05', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'SM06', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'SM07', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'SM08', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'VE04', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'VE05', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'VE06', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'VE07', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'VE08', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'VE09', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'VE10', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'VE11', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'VE12', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'VE13', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'VF04', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'VF05', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'VF06', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'VF07', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'VF08', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'VF09', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'VF10', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'VF11', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'VF12', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'VF13', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'VG04', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'VG05', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'VG06', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'VG07', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'VG08', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'VG09', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'VG10', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'VG11', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'VG12', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'VG13', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'VH04', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'VH05', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'VH06', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'VH07', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'VH08', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'VH09', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'VH10', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'VH11', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'VH12', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'VH13', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'VI04', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'VI05', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'VI06', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'VI07', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'VI08', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'VI09', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'VI10', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'VI11', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'VI12', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'VI13', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'VJ04', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'VJ05', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'VJ06', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'VJ07', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'VJ08', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'VJ09', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'VJ10', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'VJ11', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'VJ12', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG02', N'VJ13', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NA01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NA02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NA03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NA04', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NA05', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NA06', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NA07', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NA08', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NA09', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NA10', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NA11', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NA12', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NA13', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NB01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NB02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NB03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NB04', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NB05', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NB06', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NB07', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NB08', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NB09', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NB10', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NB11', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NB12', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NB13', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NC01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NC02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NC03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NC04', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NC05', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NC06', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NC07', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NC08', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NC09', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NC10', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NC11', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NC12', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NC13', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'ND01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'ND02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'ND03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'ND04', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'ND05', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'ND06', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'ND07', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'ND08', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'ND09', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'ND10', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'ND11', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'ND12', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'ND13', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NE01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NE02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NE03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NE11', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NE12', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NE13', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NF01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NF02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NF03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NF11', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NF12', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NF13', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NG01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NG02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NG03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NG11', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NG12', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NG13', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NH01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NH02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NH03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NH11', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NH12', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NH13', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NI01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NI02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NI03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NI04', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NI05', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NI06', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NI07', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NI08', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NI09', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NI10', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NI11', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NI12', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NI13', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NJ01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NJ02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NJ03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NJ04', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NJ05', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NJ06', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NJ07', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NJ08', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NJ09', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NJ10', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NJ11', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NJ12', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'NJ13', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'SK01', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'SK02', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'SK03', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'SK04', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'VE04', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'VE05', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'VE06', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'VE07', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'VE08', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'VE09', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'VE10', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'VF04', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'VF05', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'VF06', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'VF07', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'VF08', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'VF09', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'VF10', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'VG04', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'VG05', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'VG06', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'VG07', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'VG08', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'VG09', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'VG10', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'VH04', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'VH05', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'VH06', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'VH07', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'VH08', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'VH09', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG03', N'VH10', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NA01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NA02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NA03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NA04', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NA05', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NA06', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NA07', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NA08', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NA09', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NA10', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NA11', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NA12', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NA13', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NA14', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NA15', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NA16', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NA17', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NB01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NB02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NB03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NB04', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NB05', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NB06', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NB07', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NB08', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NB09', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NB10', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NB11', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NB12', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NB13', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NB14', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NB15', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NB16', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NB17', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NC01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NC02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NC03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NC04', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NC05', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NC06', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NC07', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NC08', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NC09', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NC10', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NC11', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NC12', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NC13', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NC14', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NC15', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NC16', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NC17', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'ND01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'ND02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'ND03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'ND04', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'ND05', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'ND06', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'ND07', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'ND08', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'ND09', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'ND10', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'ND11', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'ND12', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'ND13', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'ND14', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'ND15', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'ND16', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'ND17', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NE01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NE02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NE03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NE15', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NE16', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NE17', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NF01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NF02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NF03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NF15', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NF16', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NF17', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NG01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NG02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NG03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NG04', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NG05', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NG06', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NG07', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NG08', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NG09', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NG10', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NG11', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NG12', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NG13', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NG14', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NG15', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NG16', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NG17', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NH01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NH02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NH03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NH04', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NH05', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NH06', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NH07', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NH08', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NH09', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NH10', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NH11', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NH12', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NH13', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NH14', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NH15', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NH16', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'NH17', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'SI01', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'SI02', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'SI03', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'SI04', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'SI05', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'SI06', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'SI07', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'SI08', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'SI09', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'SI10', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'SI11', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'SI12', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'SI13', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'SI14', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'SI15', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'SI16', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'SI17', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'VE04', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'VE05', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'VE06', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'VE07', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'VE08', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'VE09', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'VE10', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'VE11', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'VE12', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'VE13', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'VE14', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'VF04', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'VF05', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'VF06', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'VF07', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'VF08', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'VF09', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'VF10', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'VF11', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'VF12', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'VF13', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG04', N'VF14', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NA01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NA02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NA03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NA04', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NA05', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NA06', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NA07', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NA08', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NA09', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NA10', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NA11', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NA12', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NA13', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NA14', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NA15', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NB01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NB02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NB03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NB04', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NB05', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NB06', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NB07', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NB08', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NB09', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NB10', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NB11', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NB12', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NB13', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NB14', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NB15', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NC01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NC02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NC03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NC04', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NC05', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NC06', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NC07', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NC08', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NC09', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NC10', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NC11', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NC12', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NC13', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NC14', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NC15', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'ND01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'ND02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'ND03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'ND04', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'ND05', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'ND06', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'ND07', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'ND08', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'ND09', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'ND10', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'ND11', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'ND12', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'ND13', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'ND14', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'ND15', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NE01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NE02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NE03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NE13', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NE14', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NE15', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NF01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NF02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NF03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NF04', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NF05', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NF06', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NF07', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NF08', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NF09', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NF10', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NF11', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NF12', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NF13', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NF14', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NF15', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NG01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NG02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NG03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NG04', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NG05', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NG06', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NG07', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NG08', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NG09', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NG10', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NG11', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NG12', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NG13', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NG14', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'NG15', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'SH01', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'SH02', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'SH03', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'SH04', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'SH05', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'SH06', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'SH07', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'SH08', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'SH09', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'SH10', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'SH11', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'SH12', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'SH13', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'SH14', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'SH15', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'VE04', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'VE05', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'VE06', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'VE07', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'VE08', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'VE09', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'VE10', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'VE11', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG05', N'VE12', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NA01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NA02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NA03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NA04', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NA05', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NA06', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NA07', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NA08', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NA09', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NA10', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NB01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NB02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NB03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NB04', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NB05', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NB06', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NB07', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NB08', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NB09', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NB10', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NC01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NC02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NC03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NC04', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NC05', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NC06', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NC07', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NC08', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NC09', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NC10', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'ND01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'ND02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'ND03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'ND04', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'ND05', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'ND06', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'ND07', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'ND08', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'ND09', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'ND10', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NE01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NE02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NE03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NE08', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NE09', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NE10', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NF01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NF02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NF03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NF08', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NF09', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NF10', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NG01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NG02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NG03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NG08', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NG09', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NG10', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NH01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NH02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NH03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NH04', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NH05', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NH06', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NH07', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NH08', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NH09', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NH10', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NI01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NI02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NI03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NI04', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NI05', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NI06', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NI07', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NI08', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NI09', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'NI10', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'SJ01', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'SJ02', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'SJ03', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'SJ04', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'SJ05', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'SJ06', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'SJ07', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'SJ08', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'SJ09', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'SJ10', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'VE04', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'VE05', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'VE06', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'VE07', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'VF04', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'VF05', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'VF06', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'VF07', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'VG04', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'VG05', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'VG06', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG06', N'VG07', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NA01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NA02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NA03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NA04', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NA05', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NA06', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NA07', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NA08', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NA09', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NA10', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NA11', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NA12', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NA13', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NA14', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NA15', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NA16', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NA17', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NA18', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NA19', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NA20', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NB01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NB02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NB03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NB04', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NB05', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NB06', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NB07', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NB08', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NB09', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NB10', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NB11', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NB12', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NB13', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NB14', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NB15', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NB16', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NB17', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NB18', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NB19', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NB20', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NC01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NC02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NC03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NC04', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NC05', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NC06', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NC07', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NC08', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NC09', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NC10', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NC11', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NC12', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NC13', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NC14', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NC15', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NC16', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NC17', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NC18', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NC19', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NC20', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'ND01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'ND02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'ND03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'ND04', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'ND05', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'ND06', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'ND07', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'ND08', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'ND09', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'ND10', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'ND11', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'ND12', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'ND13', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'ND14', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'ND15', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'ND16', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'ND17', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'ND18', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'ND19', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'ND20', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NE01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NE02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NE03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NE18', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NE19', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NE20', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NF01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NF02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NF03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NF18', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NF19', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NF20', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NG01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NG02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NG03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NG18', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NG19', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NG20', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NH01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NH02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NH03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NH18', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NH19', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NH20', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NI01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NI02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NI03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NI18', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NI19', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NI20', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NJ01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NJ02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NJ03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NJ18', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NJ19', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NJ20', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NK01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NK02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NK03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NK18', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NK19', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NK20', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NL01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NL02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NL03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NL18', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NL19', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NL20', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NM01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NM02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NM03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NM04', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NM05', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NM06', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NM07', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NM08', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NM09', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NM10', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NM11', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NM12', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NM13', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NM14', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NM15', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NM16', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NM17', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NM18', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NM19', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NM20', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NN01', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NN02', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NN03', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NN04', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NN05', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NN06', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NN07', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NN08', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NN09', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NN10', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NN11', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NN12', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NN13', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NN14', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NN15', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NN16', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NN17', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NN18', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NN19', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'NN20', N'NORMAL', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'SO01', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'SO02', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'SO03', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'SO04', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'SO05', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'SO06', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'SO07', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'SO08', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'SO09', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'SO10', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'SO11', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'SO12', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'SO13', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'SO14', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'SO15', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'SO16', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'SO17', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'SO18', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'SO19', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'SO20', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VE04', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VE05', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VE06', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VE07', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VE08', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VE09', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VE10', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VE11', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VE12', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VE13', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VE14', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VE15', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VE16', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VE17', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VF04', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VF05', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VF06', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VF07', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VF08', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VF09', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VF10', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VF11', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VF12', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VF13', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VF14', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VF15', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VF16', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VF17', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VG04', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VG05', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VG06', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VG07', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VG08', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VG09', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VG10', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VG11', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VG12', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VG13', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VG14', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VG15', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VG16', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VG17', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VH04', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VH05', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VH06', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VH07', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VH08', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VH09', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VH10', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VH11', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VH12', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VH13', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VH14', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VH15', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VH16', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VH17', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VI04', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VI05', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VI06', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VI07', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VI08', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VI09', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VI10', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VI11', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VI12', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VI13', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VI14', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VI15', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VI16', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VI17', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VJ04', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VJ05', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VJ06', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VJ07', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VJ08', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VJ09', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VJ10', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VJ11', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VJ12', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VJ13', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VJ14', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VJ15', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VJ16', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VJ17', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VK04', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VK05', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VK06', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VK07', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VK08', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VK09', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VK10', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VK11', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VK12', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VK13', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VK14', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VK15', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VK16', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VK17', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VL04', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VL05', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VL06', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VL07', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VL08', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VL09', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VL10', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VL11', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VL12', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VL13', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VL14', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VL15', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VL16', N'VIP', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG07', N'VL17', N'VIP', N'Tot')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for Gia
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Gia]') AND type IN ('U'))
	DROP TABLE [dbo].[Gia]
GO

CREATE TABLE [dbo].[Gia] (
  [ID] int  IDENTITY(1,1) NOT NULL,
  [MaGia] AS ('G'+right('00'+CONVERT([varchar](2),[ID]),(2))) PERSISTED NOT NULL,
  [MaLoaiGhe] varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [MaDangPhim] varchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Gia] int  NOT NULL
)
GO

ALTER TABLE [dbo].[Gia] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Gia
-- ----------------------------
BEGIN TRANSACTION
GO

SET IDENTITY_INSERT [dbo].[Gia] ON
GO

INSERT INTO [dbo].[Gia] ([ID], [MaLoaiGhe], [MaDangPhim], [Gia]) VALUES (N'1', N'NORMAL', N'2DNO', N'55000')
GO

INSERT INTO [dbo].[Gia] ([ID], [MaLoaiGhe], [MaDangPhim], [Gia]) VALUES (N'2', N'VIP', N'2DNO', N'65000')
GO

INSERT INTO [dbo].[Gia] ([ID], [MaLoaiGhe], [MaDangPhim], [Gia]) VALUES (N'3', N'SWEETBOX', N'2DNO', N'140000')
GO

INSERT INTO [dbo].[Gia] ([ID], [MaLoaiGhe], [MaDangPhim], [Gia]) VALUES (N'4', N'NORMAL', N'3DNO', N'80000')
GO

INSERT INTO [dbo].[Gia] ([ID], [MaLoaiGhe], [MaDangPhim], [Gia]) VALUES (N'5', N'VIP', N'3DNO', N'100000')
GO

INSERT INTO [dbo].[Gia] ([ID], [MaLoaiGhe], [MaDangPhim], [Gia]) VALUES (N'6', N'SWEETBOX', N'3DNO', N'210000')
GO

SET IDENTITY_INSERT [dbo].[Gia] OFF
GO

COMMIT
GO


-- ----------------------------
-- Table structure for GiaoDich
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[GiaoDich]') AND type IN ('U'))
	DROP TABLE [dbo].[GiaoDich]
GO

CREATE TABLE [dbo].[GiaoDich] (
  [ID] int  IDENTITY(1,1) NOT NULL,
  [MaGiaoDich] AS ('GD'+right('0000000000'+CONVERT([varchar](10),[ID]),(10))) PERSISTED NOT NULL,
  [NguoiDat] varchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [MaXuatChieu] varchar(6) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [NgayDat] AS (CONVERT([date],getdate())) NULL,
  [GioDat] AS (CONVERT([time],getdate())) NULL,
  [IDTrangThaiGiaoDich] int  NOT NULL,
  [TongTien] int DEFAULT ((0)) NOT NULL
)
GO

ALTER TABLE [dbo].[GiaoDich] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for LoaiGhe
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[LoaiGhe]') AND type IN ('U'))
	DROP TABLE [dbo].[LoaiGhe]
GO

CREATE TABLE [dbo].[LoaiGhe] (
  [MaLoaiGhe] varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [TenLoaiGhe] nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[LoaiGhe] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of LoaiGhe
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[LoaiGhe]  VALUES (N'NORMAL', N'Ghế Thường')
GO

INSERT INTO [dbo].[LoaiGhe]  VALUES (N'SWEETBOX', N'Ghế Đôi ( SweetBox )')
GO

INSERT INTO [dbo].[LoaiGhe]  VALUES (N'VIP', N'Ghế VIP')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for LoaiThanhVien
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[LoaiThanhVien]') AND type IN ('U'))
	DROP TABLE [dbo].[LoaiThanhVien]
GO

CREATE TABLE [dbo].[LoaiThanhVien] (
  [MaLoaiThanhVien] varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [TenLoaiThanhVien] nvarchar(40) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[LoaiThanhVien] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of LoaiThanhVien
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[LoaiThanhVien]  VALUES (N'ADMIN', N'Người Quản Trị')
GO

INSERT INTO [dbo].[LoaiThanhVien]  VALUES (N'GUEST', N'Khách Xem')
GO

INSERT INTO [dbo].[LoaiThanhVien]  VALUES (N'MANAGER', N'Người Quản Lý')
GO

INSERT INTO [dbo].[LoaiThanhVien]  VALUES (N'STAFF', N'Nhân Viên')
GO

INSERT INTO [dbo].[LoaiThanhVien]  VALUES (N'USER', N'Người Dùng')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for NhanPhim
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[NhanPhim]') AND type IN ('U'))
	DROP TABLE [dbo].[NhanPhim]
GO

CREATE TABLE [dbo].[NhanPhim] (
  [MaNhanPhim] varchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[NhanPhim] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of NhanPhim
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[NhanPhim]  VALUES (N'C13')
GO

INSERT INTO [dbo].[NhanPhim]  VALUES (N'C16')
GO

INSERT INTO [dbo].[NhanPhim]  VALUES (N'C18')
GO

INSERT INTO [dbo].[NhanPhim]  VALUES (N'P')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for Phim
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Phim]') AND type IN ('U'))
	DROP TABLE [dbo].[Phim]
GO

CREATE TABLE [dbo].[Phim] (
  [ID] int  IDENTITY(1,1) NOT NULL,
  [MaPhim] AS ('P'+right('000'+CONVERT([varchar](3),[ID]),(3))) PERSISTED NOT NULL,
  [TenPhim] nvarchar(300) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [QuocGia] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [ThoiLuongPhim] time(7)  NOT NULL,
  [NgayBatDau] date  NOT NULL,
  [NgayKetThuc] date  NOT NULL,
  [PosterURL1] varchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [MotaPhim] ntext COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [GhiChu] ntext COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NhanPhim] varchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [IMDBrank] float(53)  NULL,
  [IMDBURL] varchar(300) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PosterURL2] varchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[Phim] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Phim
-- ----------------------------
BEGIN TRANSACTION
GO

SET IDENTITY_INSERT [dbo].[Phim] ON
GO

INSERT INTO [dbo].[Phim] ([ID], [TenPhim], [QuocGia], [ThoiLuongPhim], [NgayBatDau], [NgayKetThuc], [PosterURL1], [MotaPhim], [GhiChu], [NhanPhim], [IMDBrank], [IMDBURL], [PosterURL2]) VALUES (N'1', N'Venom', N'Mỹ', N'02:01:00.0000000', N'2018-10-07', N'2018-11-07', NULL, N'Ð?o di?n : Ruben Fleischer, Di?n Viên : Tom Hardy, Riz Ahmed, Michelle Williams,..., N?i dung : Venom dã hé l? thân ph?n nhân v?t ph?n di?n c?c k? nguy hi?m và kinh hãi khi tung trailer chính th?c kh?p th? gi?i làm diên d?o fan hâm m? trong th? gi?i c?a Marvel. Chàng phóng viên Eddie Brock bí m?t theo dõi âm muu x?u xa c?a m?t t? ch?c và b? nhi?m ph?i Symbiote và tr? thành quái v?t Venom d?y nguy hi?m.', N'Không', N'C16', N'7.1', N'https://www.imdb.com/title/tt1270797/', NULL)
GO

INSERT INTO [dbo].[Phim] ([ID], [TenPhim], [QuocGia], [ThoiLuongPhim], [NgayBatDau], [NgayKetThuc], [PosterURL1], [MotaPhim], [GhiChu], [NhanPhim], [IMDBrank], [IMDBURL], [PosterURL2]) VALUES (N'2', N'Bước Chân Đầu Tiên', N'Mỹ', N'02:01:00.0000000', N'2018-10-19', N'2018-11-19', NULL, N'Đạo diễn : Damien Chazelle, 
Diễn Viên :  Ryan Gosling, Claire Foy, Kyle Chandler, Pablo Schreiber,...
Nội dung : Bước Chân Đầu Tiên tái hiện lại hành trình lịch sử đưa con người tiếp cận mặt trăng của NASA, xoay quanh cuộc đời của phi hành gia huyền thoại Neil Amstrong trong giai đoạn 1961-1969 cũng như những hy sinh và mất mát – đối với riêng bản thân ông và cả nước Mỹ nói chung – trong quá trình thực hiện một trong những nhiệm vụ nguy hiểm nhất trong lịch sử nhân loại.', N'Không', N'C13', N'7.7', N'https://www.imdb.com/title/tt1213641/', NULL)
GO

INSERT INTO [dbo].[Phim] ([ID], [TenPhim], [QuocGia], [ThoiLuongPhim], [NgayBatDau], [NgayKetThuc], [PosterURL1], [MotaPhim], [GhiChu], [NhanPhim], [IMDBrank], [IMDBURL], [PosterURL2]) VALUES (N'3', N'Quý Cô Thừa Kế', N'Việt Nam', N'01:50:00.0000000', N'2018-10-19', N'2018-11-19', NULL, N'Đạo diễn : Hoàng Duy, 
Diễn Viên :  Ngân Khánh, Song Luân, Sỹ Thanh, Quang Minh, Hồng Đào,…
Nội dung : Nội dung phim xoay quanh câu chuyện Nhung (Ngân Khánh) là một cô tiểu thư đỏng đảnh coi trời bằng vung và để kế thừa khối tài sản kết xù của bà ngoại cô phải tham gia một khóa học 3 tháng tại khu nhà cổ Từ Tâm. Tại đây cô gặp được Việt Anh (Song Luân) chàng trai thợ hồ hiền lành chất phác. Nhưng kể từ khi gặp nhau những biến cố dần xảy ra, liệu cô sẽ trải qua những khó khăn đó như thế nào và có thừa hưởng được khối tài sản của bà mình không?', N'Không', N'C13', N'7.7', N'https://www.imdb.com/', NULL)
GO

INSERT INTO [dbo].[Phim] ([ID], [TenPhim], [QuocGia], [ThoiLuongPhim], [NgayBatDau], [NgayKetThuc], [PosterURL1], [MotaPhim], [GhiChu], [NhanPhim], [IMDBrank], [IMDBURL], [PosterURL2]) VALUES (N'4', N'Vì Sao Vụt Sáng', N'Mỹ', N'02:20:00.0000000', N'2018-10-05', N'2018-12-05', NULL, N'Đạo diễn : Bradley Cooper
Diễn Viên :  Lady Gaga, Bradley Cooper, Sam Elliott, Dave Chappelle
Nội dung : Tháng 10 này, hãy để tâm hồn bạn bay bổng cùng cảm xúc lãng mạn với câu chuyện tình yêu lấp lánh của Vì Sao Vụt Sáng. Chàng nghệ sỹ nhạc đồng quê Jackson Maine (Bradley Cooper) và ca sỹ vô danh Ally (Lady GaGa) sẽ khiến bạn đắm chìm trong thế giới âm nhạc rực rỡ và rung động đến từng phút giây. Liệu định mệnh sẽ viết nên cái kết nào cho cả hai khi đứng giữa tình yêu và sự nghiệp?Đừng bỏ lỡ màn nhập vai được cho là tuyệt vời nhất của Lady Gaga từ trước đến nay!', N'Không', N'C18', N'7.7', N'https://www.imdb.com/title/tt1517451/', NULL)
GO

SET IDENTITY_INSERT [dbo].[Phim] OFF
GO

COMMIT
GO


-- ----------------------------
-- Table structure for Phong
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Phong]') AND type IN ('U'))
	DROP TABLE [dbo].[Phong]
GO

CREATE TABLE [dbo].[Phong] (
  [ID] int  IDENTITY(1,1) NOT NULL,
  [MaPhong] AS ('PG'+right('00'+CONVERT([varchar](2),[ID]),(2))) PERSISTED NOT NULL,
  [TenPhong] nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [TrangThaiPhong] nvarchar(40) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [SoLuongGhe] int  NOT NULL,
  [SoLuongGheMoiDay] int  NOT NULL
)
GO

ALTER TABLE [dbo].[Phong] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Phong
-- ----------------------------
BEGIN TRANSACTION
GO

SET IDENTITY_INSERT [dbo].[Phong] ON
GO

INSERT INTO [dbo].[Phong] ([ID], [TenPhong], [TrangThaiPhong], [SoLuongGhe], [SoLuongGheMoiDay]) VALUES (N'1', N'Phòng 1', N'Tốt', N'200', N'16')
GO

INSERT INTO [dbo].[Phong] ([ID], [TenPhong], [TrangThaiPhong], [SoLuongGhe], [SoLuongGheMoiDay]) VALUES (N'2', N'Phòng 2', N'Tốt', N'200', N'16')
GO

INSERT INTO [dbo].[Phong] ([ID], [TenPhong], [TrangThaiPhong], [SoLuongGhe], [SoLuongGheMoiDay]) VALUES (N'3', N'Phòng 3', N'Tốt', N'134', N'13')
GO

INSERT INTO [dbo].[Phong] ([ID], [TenPhong], [TrangThaiPhong], [SoLuongGhe], [SoLuongGheMoiDay]) VALUES (N'4', N'Phòng 4', N'Tốt', N'153', N'17')
GO

INSERT INTO [dbo].[Phong] ([ID], [TenPhong], [TrangThaiPhong], [SoLuongGhe], [SoLuongGheMoiDay]) VALUES (N'5', N'Phòng 5', N'Tốt', N'120', N'15')
GO

INSERT INTO [dbo].[Phong] ([ID], [TenPhong], [TrangThaiPhong], [SoLuongGhe], [SoLuongGheMoiDay]) VALUES (N'6', N'Phòng 6', N'Tốt', N'100', N'10')
GO

INSERT INTO [dbo].[Phong] ([ID], [TenPhong], [TrangThaiPhong], [SoLuongGhe], [SoLuongGheMoiDay]) VALUES (N'7', N'Phòng 7', N'Tốt', N'300', N'20')
GO

SET IDENTITY_INSERT [dbo].[Phong] OFF
GO

COMMIT
GO


-- ----------------------------
-- Table structure for ThanhVien
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ThanhVien]') AND type IN ('U'))
	DROP TABLE [dbo].[ThanhVien]
GO

CREATE TABLE [dbo].[ThanhVien] (
  [ID] int  IDENTITY(1,1) NOT NULL,
  [TenDangNhap] varchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [MatKhau] varchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [HoTen] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [NgaySinh] date  NOT NULL,
  [GioiTinh] smallint  NOT NULL,
  [DiaChi] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [SoDienThoai] varchar(13) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Email] varchar(40) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [SoDu] int DEFAULT ((0)) NULL,
  [LoaiTV] varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT ('USER') NULL
)
GO

ALTER TABLE [dbo].[ThanhVien] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for TheLoai
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[TheLoai]') AND type IN ('U'))
	DROP TABLE [dbo].[TheLoai]
GO

CREATE TABLE [dbo].[TheLoai] (
  [ID] int  IDENTITY(1,1) NOT NULL,
  [MaTheLoai] AS ('TL'+right('00'+CONVERT([varchar](2),[ID]),(2))) PERSISTED NOT NULL,
  [TenTheLoai] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[TheLoai] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of TheLoai
-- ----------------------------
BEGIN TRANSACTION
GO

SET IDENTITY_INSERT [dbo].[TheLoai] ON
GO

INSERT INTO [dbo].[TheLoai] ([ID], [TenTheLoai]) VALUES (N'1', N'Phim Hành Động')
GO

INSERT INTO [dbo].[TheLoai] ([ID], [TenTheLoai]) VALUES (N'2', N'Phim Hình Sự')
GO

INSERT INTO [dbo].[TheLoai] ([ID], [TenTheLoai]) VALUES (N'3', N'Phim Lịch Sử')
GO

INSERT INTO [dbo].[TheLoai] ([ID], [TenTheLoai]) VALUES (N'4', N'Phim Chiến Tranh')
GO

INSERT INTO [dbo].[TheLoai] ([ID], [TenTheLoai]) VALUES (N'5', N'Phim Khoa Học Viễn Tưởng')
GO

INSERT INTO [dbo].[TheLoai] ([ID], [TenTheLoai]) VALUES (N'6', N'Phim Thể Thao - Âm Nhạc')
GO

INSERT INTO [dbo].[TheLoai] ([ID], [TenTheLoai]) VALUES (N'7', N'Phim Hài Hước')
GO

INSERT INTO [dbo].[TheLoai] ([ID], [TenTheLoai]) VALUES (N'8', N'Phim Cổ Trang')
GO

INSERT INTO [dbo].[TheLoai] ([ID], [TenTheLoai]) VALUES (N'9', N'Phim Chính Kịch')
GO

INSERT INTO [dbo].[TheLoai] ([ID], [TenTheLoai]) VALUES (N'10', N'Phim Võ Thuật')
GO

INSERT INTO [dbo].[TheLoai] ([ID], [TenTheLoai]) VALUES (N'11', N'Phim Thần Thoại')
GO

INSERT INTO [dbo].[TheLoai] ([ID], [TenTheLoai]) VALUES (N'12', N'Phim Kinh Dị')
GO

INSERT INTO [dbo].[TheLoai] ([ID], [TenTheLoai]) VALUES (N'13', N'Phim Tâm Lý')
GO

INSERT INTO [dbo].[TheLoai] ([ID], [TenTheLoai]) VALUES (N'14', N'Phim Gia Ðình')
GO

INSERT INTO [dbo].[TheLoai] ([ID], [TenTheLoai]) VALUES (N'15', N'Phim Hồi Hộp - Gay Cấn')
GO

INSERT INTO [dbo].[TheLoai] ([ID], [TenTheLoai]) VALUES (N'16', N'Phim Tài Liệu')
GO

INSERT INTO [dbo].[TheLoai] ([ID], [TenTheLoai]) VALUES (N'17', N'Phim Hoạt Hình')
GO

INSERT INTO [dbo].[TheLoai] ([ID], [TenTheLoai]) VALUES (N'18', N'Phim Phiêu Lưu')
GO

INSERT INTO [dbo].[TheLoai] ([ID], [TenTheLoai]) VALUES (N'19', N'Phim Bí Ẩn - Siêu Nhân')
GO

INSERT INTO [dbo].[TheLoai] ([ID], [TenTheLoai]) VALUES (N'20', N'Phim Tình Cảm - Lãng Mạng')
GO

SET IDENTITY_INSERT [dbo].[TheLoai] OFF
GO

COMMIT
GO


-- ----------------------------
-- Table structure for TheLoaiPhim
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[TheLoaiPhim]') AND type IN ('U'))
	DROP TABLE [dbo].[TheLoaiPhim]
GO

CREATE TABLE [dbo].[TheLoaiPhim] (
  [MaTheLoai] varchar(4) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [MaPhim] varchar(4) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[TheLoaiPhim] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of TheLoaiPhim
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[TheLoaiPhim]  VALUES (N'TL01', N'P001')
GO

INSERT INTO [dbo].[TheLoaiPhim]  VALUES (N'TL05', N'P001')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for ThongKe
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ThongKe]') AND type IN ('U'))
	DROP TABLE [dbo].[ThongKe]
GO

CREATE TABLE [dbo].[ThongKe] (
  [ID] int  IDENTITY(1,1) NOT NULL,
  [NgayChieu] date  NULL,
  [MaPhim] varchar(4) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [SoLuongXuatChieu] int DEFAULT ((0)) NOT NULL,
  [SoLuongGheCungCap] int DEFAULT ((0)) NOT NULL,
  [SoLuongGheDaBan] int DEFAULT ((0)) NOT NULL,
  [TongThu] bigint DEFAULT ((0)) NOT NULL
)
GO

ALTER TABLE [dbo].[ThongKe] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of ThongKe
-- ----------------------------
BEGIN TRANSACTION
GO

SET IDENTITY_INSERT [dbo].[ThongKe] ON
GO

INSERT INTO [dbo].[ThongKe] ([ID], [NgayChieu], [MaPhim], [SoLuongXuatChieu], [SoLuongGheCungCap], [SoLuongGheDaBan], [TongThu]) VALUES (N'36', N'2018-10-20', N'P001', N'2', N'400', N'17', N'1390000')
GO

SET IDENTITY_INSERT [dbo].[ThongKe] OFF
GO

COMMIT
GO


-- ----------------------------
-- Table structure for TrangThaiGiaoDich
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[TrangThaiGiaoDich]') AND type IN ('U'))
	DROP TABLE [dbo].[TrangThaiGiaoDich]
GO

CREATE TABLE [dbo].[TrangThaiGiaoDich] (
  [ID] int  IDENTITY(1,1) NOT NULL,
  [TrangThaiGiaoDich] nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[TrangThaiGiaoDich] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of TrangThaiGiaoDich
-- ----------------------------
BEGIN TRANSACTION
GO

SET IDENTITY_INSERT [dbo].[TrangThaiGiaoDich] ON
GO

INSERT INTO [dbo].[TrangThaiGiaoDich] ([ID], [TrangThaiGiaoDich]) VALUES (N'1', N'Không Thành Công')
GO

INSERT INTO [dbo].[TrangThaiGiaoDich] ([ID], [TrangThaiGiaoDich]) VALUES (N'2', N'Thành Công')
GO

INSERT INTO [dbo].[TrangThaiGiaoDich] ([ID], [TrangThaiGiaoDich]) VALUES (N'3', N'Chờ Xác Nhận')
GO

SET IDENTITY_INSERT [dbo].[TrangThaiGiaoDich] OFF
GO

COMMIT
GO


-- ----------------------------
-- Table structure for TrangThaiVe
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[TrangThaiVe]') AND type IN ('U'))
	DROP TABLE [dbo].[TrangThaiVe]
GO

CREATE TABLE [dbo].[TrangThaiVe] (
  [MaTrangThaiVe] int  IDENTITY NOT NULL,
  [TenTrangThaiVe] nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[TrangThaiVe] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of TrangThaiVe
-- ----------------------------
BEGIN TRANSACTION
GO

SET IDENTITY_INSERT [dbo].[TrangThaiVe] ON
GO

INSERT INTO [dbo].[TrangThaiVe] ([MaTrangThaiVe], [TenTrangThaiVe]) VALUES (N'0', N'Còn Trống')
GO

INSERT INTO [dbo].[TrangThaiVe] ([MaTrangThaiVe], [TenTrangThaiVe]) VALUES (N'1', N'Đã Đặt')
GO

SET IDENTITY_INSERT [dbo].[TrangThaiVe] OFF
GO

COMMIT
GO


-- ----------------------------
-- Table structure for Ve
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Ve]') AND type IN ('U'))
	DROP TABLE [dbo].[Ve]
GO

CREATE TABLE [dbo].[Ve] (
  [MaXuatChieu] varchar(6) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [MaGhe] varchar(8) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [MaVe] varchar(23) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [MaGia] varchar(3) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [MaTrangThaiVe] int DEFAULT ((0)) NOT NULL
)
GO

ALTER TABLE [dbo].[Ve] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for VeRutGon
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[VeRutGon]') AND type IN ('U'))
	DROP TABLE [dbo].[VeRutGon]
GO

CREATE TABLE [dbo].[VeRutGon] (
  [ID] int  IDENTITY(1,1) NOT NULL,
  [MaXuatChieu] varchar(6) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [MaLoaiGhe] varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [SoGheDaBan] int DEFAULT ((0)) NOT NULL,
  [SoGheChuaBan] int DEFAULT ((0)) NOT NULL,
  [TongThu] int DEFAULT ((0)) NOT NULL
)
GO

ALTER TABLE [dbo].[VeRutGon] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of VeRutGon
-- ----------------------------
BEGIN TRANSACTION
GO

SET IDENTITY_INSERT [dbo].[VeRutGon] ON
GO

INSERT INTO [dbo].[VeRutGon] ([ID], [MaXuatChieu], [MaLoaiGhe], [SoGheDaBan], [SoGheChuaBan], [TongThu]) VALUES (N'12', N'XC0024', N'VIP', N'3', N'109', N'195000')
GO

INSERT INTO [dbo].[VeRutGon] ([ID], [MaXuatChieu], [MaLoaiGhe], [SoGheDaBan], [SoGheChuaBan], [TongThu]) VALUES (N'13', N'XC0024', N'NORMAL', N'5', N'163', N'275000')
GO

INSERT INTO [dbo].[VeRutGon] ([ID], [MaXuatChieu], [MaLoaiGhe], [SoGheDaBan], [SoGheChuaBan], [TongThu]) VALUES (N'14', N'XC0025', N'SWEETBOX', N'0', N'10', N'0')
GO

INSERT INTO [dbo].[VeRutGon] ([ID], [MaXuatChieu], [MaLoaiGhe], [SoGheDaBan], [SoGheChuaBan], [TongThu]) VALUES (N'15', N'XC0025', N'NORMAL', N'3', N'75', N'240000')
GO

INSERT INTO [dbo].[VeRutGon] ([ID], [MaXuatChieu], [MaLoaiGhe], [SoGheDaBan], [SoGheChuaBan], [TongThu]) VALUES (N'16', N'XC0024', N'SWEETBOX', N'2', N'18', N'280000')
GO

INSERT INTO [dbo].[VeRutGon] ([ID], [MaXuatChieu], [MaLoaiGhe], [SoGheDaBan], [SoGheChuaBan], [TongThu]) VALUES (N'17', N'XC0025', N'VIP', N'4', N'8', N'400000')
GO

SET IDENTITY_INSERT [dbo].[VeRutGon] OFF
GO

COMMIT
GO


-- ----------------------------
-- Table structure for XuatChieu
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[XuatChieu]') AND type IN ('U'))
	DROP TABLE [dbo].[XuatChieu]
GO

CREATE TABLE [dbo].[XuatChieu] (
  [ID] int  IDENTITY(1,1) NOT NULL,
  [MaXuatChieu] AS ('XC'+right('0000'+CONVERT([varchar](4),[ID]),(4))) PERSISTED NOT NULL,
  [MaPhim] varchar(4) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [MaPhong] varchar(4) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [ThoiGianChieu] time(7)  NOT NULL,
  [NgayChieu] date  NOT NULL,
  [MaDangPhim] varchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[XuatChieu] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of XuatChieu
-- ----------------------------
BEGIN TRANSACTION
GO

SET IDENTITY_INSERT [dbo].[XuatChieu] ON
GO

INSERT INTO [dbo].[XuatChieu] ([ID], [MaPhim], [MaPhong], [ThoiGianChieu], [NgayChieu], [MaDangPhim]) VALUES (N'24', N'P001', N'PG07', N'20:15:00.0000000', N'2018-10-20', N'2DNO')
GO

INSERT INTO [dbo].[XuatChieu] ([ID], [MaPhim], [MaPhong], [ThoiGianChieu], [NgayChieu], [MaDangPhim]) VALUES (N'25', N'P001', N'PG06', N'22:30:00.0000000', N'2018-10-20', N'3DNO')
GO

SET IDENTITY_INSERT [dbo].[XuatChieu] OFF
GO

COMMIT
GO


-- ----------------------------
-- View structure for DanhSachGiaoDich
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[DanhSachGiaoDich]') AND type IN ('V'))
	DROP VIEW [dbo].[DanhSachGiaoDich]
GO

CREATE VIEW [dbo].[DanhSachGiaoDich] AS select GiaoDich.MaGiaoDich as MaGiaoDich,
	GiaoDich.NguoiDat as NguoiDat,
	Phim.TenPhim as Phim,
	XuatChieu.NgayChieu as NgayChieu,
	XuatChieu.ThoiGianChieu as ThoiGianChieu,
	GiaoDich.NgayDat as NgayDat,
	GiaoDich.GioDat as GioDat,
	GiaoDich.TongTien as TongTien,
	TrangThaiGiaoDich.TrangThaiGiaoDich as TrangThai
from GiaoDich,Phim,XuatChieu,TrangThaiGiaoDich
where GiaoDich.MaXuatChieu = XuatChieu.MaXuatChieu and
	XuatChieu.MaPhim = Phim.MaPhim and
	GiaoDich.IDTrangThaiGiaoDich = TrangThaiGiaoDich.ID
GO


-- ----------------------------
-- View structure for DanhSachPhimDangChieu
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[DanhSachPhimDangChieu]') AND type IN ('V'))
	DROP VIEW [dbo].[DanhSachPhimDangChieu]
GO

CREATE VIEW [dbo].[DanhSachPhimDangChieu] AS select * from Phim 
where cast(Phim.NgayBatDau as date) <= cast(GETDATE() as date) and cast(Phim.NgayKetThuc as date) >= cast(GETDATE() as date)
GO


-- ----------------------------
-- View structure for DanhSachPhimSapChieu
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[DanhSachPhimSapChieu]') AND type IN ('V'))
	DROP VIEW [dbo].[DanhSachPhimSapChieu]
GO

CREATE VIEW [dbo].[DanhSachPhimSapChieu] AS select * from Phim 
where cast(Phim.NgayBatDau as date) > cast(GETDATE() as date) and cast(Phim.NgayBatDau as date) <= cast(DATEADD(day,30,GETDATE()) as date)
GO


-- ----------------------------
-- View structure for DanhSachVe
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[DanhSachVe]') AND type IN ('V'))
	DROP VIEW [dbo].[DanhSachVe]
GO

CREATE VIEW [dbo].[DanhSachVe] AS SELECT "Ve"."MaVe" as "MaVe", 
	"Phim"."TenPhim" as "Phim",
	"DangPhim"."TenDangPhim" as "DangPhim",
	"XuatChieu"."NgayChieu" as "NgayChieu",
	"XuatChieu"."ThoiGianChieu" as "ThoiGianChieu",
	"Phong"."TenPhong" as "Phong",
	"Ghe"."IDGhe" as "Ghe" , 
	"LoaiGhe"."TenLoaiGhe" as "TenLoaiGhe",
	"Gia"."Gia" as "GiaVe",
	"TrangThaiVe"."TenTrangThaiVe" as "TrangThaiVe"
FROM "Ve", "XuatChieu", "Phim", "DangPhim", "Gia", "Phong", "Ghe", "TrangThaiVe", "LoaiGhe"
WHERE "Ve"."MaXuatChieu" = "Xuatchieu"."MaXuatChieu" and 
	"Ve"."MaGhe" = "Ghe"."MaGhe" and
	"XuatChieu"."MaPhim" = "Phim"."MaPhim" and
	"XuatChieu"."MaDangPhim" = "DangPhim"."MaDangPhim" and
	"Ve"."MaGia" = "Gia"."MaGia" and 
	"XuatChieu"."MaPhong" = "Phong"."MaPhong" and 
	"Ve"."MaTrangThaiVe" = "TrangThaiVe"."MaTrangThaiVe" and
	"Ghe"."MaLoaiGhe" = "LoaiGhe"."MaLoaiGhe"
GO


-- ----------------------------
-- Procedure structure for thongKePhim
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[thongKePhim]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[thongKePhim]
GO

CREATE PROCEDURE [dbo].[thongKePhim]
as 
begin	
	exec rutGonVe;
	declare @XuatChieuChuaThongKe table(MaXuatChieu varchar(6));
	
	insert into @XuatChieuChuaThongKe 
	select MaXuatChieu from XuatChieu
	where cast(XuatChieu.NgayChieu as date) < cast(GETDATE() as date) and
		not exists ( select * from ThongKe 
							where ThongKe.NgayChieu = XuatChieu.NgayChieu and
										ThongKe.MaPhim = XuatChieu.MaPhim );
	
	insert into ThongKe
	select XuatChieu.NgayChieu as NgayChieu, 
		XuatChieu.MaPhim as MaPhim, 
		count(distinct XuatChieu.MaXuatChieu) as SoLuongXuatChieu, 
		sum(VeRutGon.SoGheDaBan + VeRutGon.SoGheChuaBan) as SoLuongGheCungCap,
		sum(VeRutGon.SoGheDaBan) as SoLuongGheDaBan,
		sum(VeRutGon.TongThu) as TongThu
	from VeRutGon,XuatChieu
	where XuatChieu.MaXuatChieu = VeRutGon.MaXuatChieu
 		and XuatChieu.MaXuatChieu in (select * from @XuatChieuChuaThongKe)
	group by XuatChieu.NgayChieu,XuatChieu.MaPhim;
end
GO


-- ----------------------------
-- Function structure for getMaVe
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[getMaVe]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[getMaVe]
GO

CREATE FUNCTION [dbo].[getMaVe](@MaXuatChieu varchar(6), @MaGhe varchar(8) ) 
RETURNS varchar(23)
WITH SCHEMABINDING
BEGIN
	DECLARE @MaDangPhim varchar(5);
	SELECT @MaDangPhim = dbo."XuatChieu"."MaDangPhim" FROM dbo."XuatChieu"
	WHERE dbo."XuatChieu"."MaXuatChieu" = @MaXuatChieu;

	DECLARE @MaPhim varchar(4);
	SELECT @MaPhim = dbo."XuatChieu"."MaPhim" FROM dbo."XuatChieu"
	WHERE dbo."XuatChieu"."MaXuatChieu" = @MaXuatChieu;
	
	DECLARE @MaVe varchar(23);
	SET @MaVe = @MaPhim + @MaDangPhim + @MaXuatChieu + @MaGhe;
	RETURN @MaVe;
END;
GO


-- ----------------------------
-- Function structure for searchLichChieu_TheoPhim
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[searchLichChieu_TheoPhim]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[searchLichChieu_TheoPhim]
GO

CREATE FUNCTION [dbo].[searchLichChieu_TheoPhim](@MaPhim varchar(4))
returns @rtrnTable table (
	MaXuatChieu varchar(6),
	MaPhim varchar(4),
	TenPhim nvarchar(300),
	NgayChieu date,
	ThoiGianChieu time
)	as 
begin

	insert into @rtrnTable
	select MaXuatChieu,XuatChieu.MaPhim,TenPhim,NgayChieu,ThoiGianChieu from XuatChieu, Phim
	where XuatChieu.MaPhim = Phim.MaPhim and XuatChieu.MaPhim = @MaPhim;
	
	return;
end
GO


-- ----------------------------
-- Function structure for searchLichChieu_TheoNgay
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[searchLichChieu_TheoNgay]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[searchLichChieu_TheoNgay]
GO

CREATE FUNCTION [dbo].[searchLichChieu_TheoNgay](@NgayChieu date)
returns @rtrnTable table (
	MaXuatChieu varchar(6),
	MaPhim varchar(4),
	TenPhim nvarchar(300),
	NgayChieu date,
	ThoiGianChieu time
)	as 
begin

	insert into @rtrnTable
	select MaXuatChieu,XuatChieu.MaPhim,TenPhim,NgayChieu,ThoiGianChieu from XuatChieu, Phim
	where XuatChieu.MaPhim = Phim.MaPhim and cast(XuatChieu.NgayChieu as date) = cast(@NgayChieu as date);
	
	return;
end
GO


-- ----------------------------
-- Function structure for searchLichChieu_TheoPhim_TheoNgay
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[searchLichChieu_TheoPhim_TheoNgay]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[searchLichChieu_TheoPhim_TheoNgay]
GO

CREATE FUNCTION [dbo].[searchLichChieu_TheoPhim_TheoNgay](@MaPhim varchar(4),@NgayChieu date)
returns @rtrnTable table (
	MaXuatChieu varchar(6),
	MaPhim varchar(4),
	TenPhim nvarchar(300),
	NgayChieu date,
	ThoiGianChieu time
)	as 
begin

	insert into @rtrnTable
	select MaXuatChieu,XuatChieu.MaPhim,TenPhim,NgayChieu,ThoiGianChieu from XuatChieu, Phim
	where XuatChieu.MaPhim = Phim.MaPhim and cast(XuatChieu.NgayChieu as date) = cast(@NgayChieu as date) and XuatChieu.MaPhim = @MaPhim;
	
	return;
end
GO


-- ----------------------------
-- Function structure for getMaGia
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[getMaGia]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[getMaGia]
GO

CREATE FUNCTION [dbo].[getMaGia](@MaXuatChieu varchar(6), @MaGhe varchar(8) ) 
RETURNS varchar(3) 
BEGIN
	DECLARE @MaDangPhim varchar(5);
	SELECT @MaDangPhim = "XuatChieu"."MaDangPhim" FROM "XuatChieu"
	WHERE "XuatChieu"."MaXuatChieu" = @MaXuatChieu;

	DECLARE @MaLoaiGhe varchar(10);
	SELECT @MaLoaiGhe = "Ghe"."MaLoaiGhe" FROM "Ghe" 
	WHERE "Ghe"."MaGhe" = @MaGhe;

	DECLARE @MaGia varchar(3);
	SELECT @MaGia = "Gia"."MaGia" FROM "Gia"
	WHERE "Gia"."MaDangPhim" = @MaDangPhim AND "Gia"."MaLoaiGhe" = @MaLoaiGhe;
	
	IF ( @MaGia IS NULL )
		SET @MaGia = 0;
	RETURN @MaGia;
END
GO


-- ----------------------------
-- Procedure structure for rutGonVe
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[rutGonVe]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[rutGonVe]
GO

CREATE PROCEDURE [dbo].[rutGonVe]
as
begin
	declare @XuatDaChieu table(MaXuatChieu varchar(6));
	
	insert into @XuatDaChieu
	select MaXuatChieu from XuatChieu
	where cast(XuatChieu.NgayChieu as date) < cast(GETDATE() as date) 
		and XuatChieu.MaXuatChieu not in (Select distinct MaXuatChieu from VeRutGon);
	
	insert into VeRutGon
	select Ve.MaXuatChieu,
				Ghe.MaLoaiGhe,
				sum(MaTrangThaiVe) as SoGheDaBan, 
				count(MaTrangThaiVe)-sum(MaTrangThaiVe) as SoGheChuaBan,
				sum(Gia * MaTrangThaiVe) as TongThu 
	from Ve,Gia,Ghe
	where Ve.MaGia = Gia.MaGia and
		Ve.MaGhe = Ghe.MaGhe and
		Ve.MaXuatChieu in (select * from @XuatDaChieu)
	group by Ve.MaXuatChieu,Ghe.MaLoaiGhe;
	
	delete from Ve
	where Ve.MaXuatChieu in (select * from @XuatDaChieu);
end
GO


-- ----------------------------
-- Primary Key structure for table ChiTietGiaoDich
-- ----------------------------
ALTER TABLE [dbo].[ChiTietGiaoDich] ADD CONSTRAINT [PK__ChiTietG__3214EC2711F85662] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table DangPhim
-- ----------------------------
ALTER TABLE [dbo].[DangPhim] ADD CONSTRAINT [PK__DangPhim__D957C0F5B3EE1C19] PRIMARY KEY CLUSTERED ([MaDangPhim])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Ghe
-- ----------------------------
ALTER TABLE [dbo].[Ghe] ADD CONSTRAINT [PK__Ghe__3CD3C67BE7CA3672] PRIMARY KEY CLUSTERED ([MaGhe])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Gia
-- ----------------------------
ALTER TABLE [dbo].[Gia] ADD CONSTRAINT [PK__Gia__3CD3DE5E226FE02F] PRIMARY KEY CLUSTERED ([MaGia])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table GiaoDich
-- ----------------------------
ALTER TABLE [dbo].[GiaoDich] ADD CONSTRAINT [PK__GiaoDich__0A2A24EB45F9153B] PRIMARY KEY CLUSTERED ([MaGiaoDich])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table LoaiGhe
-- ----------------------------
ALTER TABLE [dbo].[LoaiGhe] ADD CONSTRAINT [PK__LoaiGhe__965BB4C162DAEC28] PRIMARY KEY CLUSTERED ([MaLoaiGhe])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table LoaiThanhVien
-- ----------------------------
ALTER TABLE [dbo].[LoaiThanhVien] ADD CONSTRAINT [PK__LoaiThan__4AC701E449EF487E] PRIMARY KEY CLUSTERED ([MaLoaiThanhVien])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table NhanPhim
-- ----------------------------
ALTER TABLE [dbo].[NhanPhim] ADD CONSTRAINT [PK__NhanPhim__D577E1F5A49FA46A] PRIMARY KEY CLUSTERED ([MaNhanPhim])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Phim
-- ----------------------------
ALTER TABLE [dbo].[Phim] ADD CONSTRAINT [pk_phim] PRIMARY KEY CLUSTERED ([MaPhim])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Triggers structure for table Phong
-- ----------------------------
CREATE TRIGGER [dbo].[trg_phong_delete]
ON [dbo].[Phong]
WITH EXECUTE AS CALLER
INSTEAD OF DELETE
AS
begin
	declare @MaPhong table("MaPhong" varchar(6));
	insert into @MaPhong
	select MaPhong from deleted;
	
	delete from "XuatChieu" 
	where "XuatChieu"."MaPhong" in (select * from @MaPhong);
	
	delete from "Ghe"
	where Ghe.MaPhong in (select * from @MaPhong);
	
	delete from Phong
	where Phong.MaPhong in (select * from @MaPhong);
end
GO

CREATE TRIGGER [dbo].[trg_phong_sinhghe]
ON [dbo].[Phong]
WITH EXECUTE AS CALLER
FOR INSERT, UPDATE
AS
IF ((SELECT TRIGGER_NESTLEVEL()) < 2)
begin
	declare @MP varchar(4), @SLGhe int, @SLGheMoiDay int;
	set @MP = (select MaPhong from inserted)
	set @SLGhe = (select SoLuongGhe from inserted)
	set @SLGheMoiDay = (select SoLuongGheMoiDay from inserted) 
	
	declare @SLDay int, @SLSeatbox int;
	set @SLSeatbox = @SLGhe % @SLGheMoiDay;
	set @SLDay = convert(int,@SLGhe / @SLGheMoiDay);
	if @SLSeatbox = 0  
	begin
		set @SLDay -= 1;
		set @SLSeatbox = @SLGheMoiDay;
	end;
	
	declare @cnt1 int;
	declare @cnt2 int;
	declare @IDGhe varchar(4), @MaLoaiGhe varchar(10);
	
	--clear Ghe
	delete from "Ghe"
	where "Ghe"."MaPhong" = @MP;
	
	set @cnt1 = 1;
	--insert normal and vip seat;
	while @cnt1 <= @SLDay 
	begin
		set @cnt2 = 1;
		while @cnt2 <= @SLGheMoiDay
		begin
			set @IDGhe = 'N' + CHAR(ASCII('A') + @cnt1 - 1) + right('00' + cast(@cnt2 as varchar(2)),2);
			set @MaLoaiGhe = 'NORMAL';
			
			if @cnt1 > 4 and @cnt1 < @SLDay-1 and @cnt2 > 3 and @cnt2 < @SlGheMoiDay-2  
			begin
				set @MaLoaiGhe = 'VIP';
				set @IDGhe = 'V' + CHAR(ASCII('A') + @cnt1 - 1) + right('00' + cast(@cnt2 as varchar(2)),2);
			end;
			
			insert into "Ghe"("IDGhe","MaPhong","MaLoaiGhe","TinhTrangGhe") values
			(@IDGhe,@MP,@MaLoaiGhe,'Tot');
			
			set @cnt2 += 1;
		end;
		set @cnt1 += 1;
	end;
	
	--insert seatbox
	set @cnt2 = 1;
	while @cnt2 <= @SLSeatbox
	begin
		set @IDGhe = 'S' + CHAR(ASCII('A') + @cnt1 - 1) + right('00' + cast(@cnt2 as varchar(2)),2);
		set @MaLoaiGhe = 'SWEETBOX';
		
		insert into "Ghe"("IDGhe","MaPhong","MaLoaiGhe","TinhTrangGhe") values 
		(@IDGhe,@MP,@MaLoaiGhe,'Tot');
		
		set @cnt2 += 1;
	end;
end;
GO


-- ----------------------------
-- Primary Key structure for table Phong
-- ----------------------------
ALTER TABLE [dbo].[Phong] ADD CONSTRAINT [pk_phong] PRIMARY KEY CLUSTERED ([MaPhong])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Uniques structure for table ThanhVien
-- ----------------------------
ALTER TABLE [dbo].[ThanhVien] ADD CONSTRAINT [UQ__ThanhVie__55F68FC08CCE7629] UNIQUE NONCLUSTERED ([TenDangNhap] ASC)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table ThanhVien
-- ----------------------------
ALTER TABLE [dbo].[ThanhVien] ADD CONSTRAINT [PK__ThanhVie__3214EC27C1FA5849] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table TheLoai
-- ----------------------------
ALTER TABLE [dbo].[TheLoai] ADD CONSTRAINT [pk_theloai] PRIMARY KEY CLUSTERED ([MaTheLoai])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table TheLoaiPhim
-- ----------------------------
ALTER TABLE [dbo].[TheLoaiPhim] ADD CONSTRAINT [pk_theloaiphim] PRIMARY KEY CLUSTERED ([MaTheLoai], [MaPhim])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table ThongKe
-- ----------------------------
ALTER TABLE [dbo].[ThongKe] ADD CONSTRAINT [PK__ThongKe__3214EC27CCB5C99F] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table TrangThaiGiaoDich
-- ----------------------------
ALTER TABLE [dbo].[TrangThaiGiaoDich] ADD CONSTRAINT [PK__TrangTha__3214EC27170184DC] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table TrangThaiVe
-- ----------------------------
ALTER TABLE [dbo].[TrangThaiVe] ADD CONSTRAINT [PK__TrangTha__EB22A938FFF3B6B8] PRIMARY KEY CLUSTERED ([MaTrangThaiVe])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Ve
-- ----------------------------
ALTER TABLE [dbo].[Ve] ADD CONSTRAINT [pk_ve] PRIMARY KEY CLUSTERED ([MaVe])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table VeRutGon
-- ----------------------------
ALTER TABLE [dbo].[VeRutGon] ADD CONSTRAINT [PK__VeRutGon__3214EC27BD401B82] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Triggers structure for table XuatChieu
-- ----------------------------
CREATE TRIGGER [dbo].[trg_xuatchieu_sinhve_delete]
ON [dbo].[XuatChieu]
WITH EXECUTE AS CALLER
INSTEAD OF DELETE
AS
begin
	declare @MaXuatChieu table("MaXuatChieu" varchar(6));
	insert into @MaXuatChieu
	select MaXuatchieu from deleted;
	
	delete from "Ve" 
	where "Ve"."MaXuatChieu" in (select * from @MaXuatChieu);
	
	delete from "XuatChieu"
	where "MaXuatChieu" in (select * from @MaXuatChieu);
end
GO

CREATE TRIGGER [dbo].[trg_xuatchieu_sinhve_insert]
ON [dbo].[XuatChieu]
WITH EXECUTE AS CALLER
FOR INSERT
AS
IF ((SELECT TRIGGER_NESTLEVEL()) < 2)
begin
	declare @MaXuatChieu varchar(6), @MaDangPhim varchar(5), @MaPhong varchar(4);
	set @MaXuatChieu = (select MaXuatchieu from inserted);
	set @MaDangPhim = (select MaDangPhim from inserted);
	set @MaPhong = (select MaPhong from inserted);
	
	declare @MaVe varchar(23), @MaGia varchar(3);
	
	delete from "Ve" 
	where "Ve"."MaXuatChieu" = @MaXuatChieu;
	
	insert into "Ve"("MaGhe","MaXuatChieu","MaGia","MaVe","MaTrangThaiVe") 
	(select "MaGhe",
			@MaXuatChieu as "MaXuatChieu", 
			dbo.getMaGia(@MaXuatChieu,"MaGhe") as "MaGia",
			dbo.getMaVe(@MaXuatChieu,"MaGhe") as "MaVe",
			0 as "MaTrangThaiVe"
	from "Ghe" where "Ghe"."MaPhong" = @MaPhong);
end;
GO


-- ----------------------------
-- Primary Key structure for table XuatChieu
-- ----------------------------
ALTER TABLE [dbo].[XuatChieu] ADD CONSTRAINT [pk_xuatchieu] PRIMARY KEY CLUSTERED ([MaXuatChieu])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table ChiTietGiaoDich
-- ----------------------------
ALTER TABLE [dbo].[ChiTietGiaoDich] ADD CONSTRAINT [FK__ChiTietGi__MaGia__690797E6] FOREIGN KEY ([MaGiaoDich]) REFERENCES [dbo].[GiaoDich] ([MaGiaoDich]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[ChiTietGiaoDich] ADD CONSTRAINT [FK__ChiTietGi__MaGhe__69FBBC1F] FOREIGN KEY ([MaGhe]) REFERENCES [dbo].[Ghe] ([MaGhe]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Ghe
-- ----------------------------
ALTER TABLE [dbo].[Ghe] ADD CONSTRAINT [FK__Ghe__MaPhong__6B24EA82] FOREIGN KEY ([MaPhong]) REFERENCES [dbo].[Phong] ([MaPhong]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Ghe] ADD CONSTRAINT [FK__Ghe__MaLoaiGhe__6C190EBB] FOREIGN KEY ([MaLoaiGhe]) REFERENCES [dbo].[LoaiGhe] ([MaLoaiGhe]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Gia
-- ----------------------------
ALTER TABLE [dbo].[Gia] ADD CONSTRAINT [FK__Gia__MaLoaiGhe__75A278F5] FOREIGN KEY ([MaLoaiGhe]) REFERENCES [dbo].[LoaiGhe] ([MaLoaiGhe]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Gia] ADD CONSTRAINT [FK__Gia__MaDangPhim__76969D2E] FOREIGN KEY ([MaDangPhim]) REFERENCES [dbo].[DangPhim] ([MaDangPhim]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table GiaoDich
-- ----------------------------
ALTER TABLE [dbo].[GiaoDich] ADD CONSTRAINT [FK__GiaoDich__NguoiD__634EBE90] FOREIGN KEY ([NguoiDat]) REFERENCES [dbo].[ThanhVien] ([TenDangNhap]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[GiaoDich] ADD CONSTRAINT [FK__GiaoDich__MaXuat__6442E2C9] FOREIGN KEY ([MaXuatChieu]) REFERENCES [dbo].[XuatChieu] ([MaXuatChieu]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[GiaoDich] ADD CONSTRAINT [FK__GiaoDich__IDTran__65370702] FOREIGN KEY ([IDTrangThaiGiaoDich]) REFERENCES [dbo].[TrangThaiGiaoDich] ([ID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Phim
-- ----------------------------
ALTER TABLE [dbo].[Phim] ADD CONSTRAINT [fk_phim_nhanphim] FOREIGN KEY ([NhanPhim]) REFERENCES [dbo].[NhanPhim] ([MaNhanPhim]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table ThanhVien
-- ----------------------------
ALTER TABLE [dbo].[ThanhVien] ADD CONSTRAINT [fk_thanhvien_loaithanhvien] FOREIGN KEY ([LoaiTV]) REFERENCES [dbo].[LoaiThanhVien] ([MaLoaiThanhVien]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table TheLoaiPhim
-- ----------------------------
ALTER TABLE [dbo].[TheLoaiPhim] ADD CONSTRAINT [FK__TheLoaiPh__MaThe__6383C8BA] FOREIGN KEY ([MaTheLoai]) REFERENCES [dbo].[TheLoai] ([MaTheLoai]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[TheLoaiPhim] ADD CONSTRAINT [FK__TheLoaiPh__MaPhi__6477ECF3] FOREIGN KEY ([MaPhim]) REFERENCES [dbo].[Phim] ([MaPhim]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table ThongKe
-- ----------------------------
ALTER TABLE [dbo].[ThongKe] ADD CONSTRAINT [FK__ThongKe__MaPhim__00DF2177] FOREIGN KEY ([MaPhim]) REFERENCES [dbo].[Phim] ([MaPhim]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Ve
-- ----------------------------
ALTER TABLE [dbo].[Ve] ADD CONSTRAINT [FK__Ve__MaXuatChieu__47A6A41B] FOREIGN KEY ([MaXuatChieu]) REFERENCES [dbo].[XuatChieu] ([MaXuatChieu]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Ve] ADD CONSTRAINT [FK__Ve__MaGhe__489AC854] FOREIGN KEY ([MaGhe]) REFERENCES [dbo].[Ghe] ([MaGhe]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Ve] ADD CONSTRAINT [FK__Ve__MaGia__498EEC8D] FOREIGN KEY ([MaGia]) REFERENCES [dbo].[Gia] ([MaGia]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Ve] ADD CONSTRAINT [FK__Ve__MaTrangThaiV__4E53A1AA] FOREIGN KEY ([MaTrangThaiVe]) REFERENCES [dbo].[TrangThaiVe] ([MaTrangThaiVe]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table VeRutGon
-- ----------------------------
ALTER TABLE [dbo].[VeRutGon] ADD CONSTRAINT [FK__VeRutGon__MaXuat__078C1F06] FOREIGN KEY ([MaXuatChieu]) REFERENCES [dbo].[XuatChieu] ([MaXuatChieu]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[VeRutGon] ADD CONSTRAINT [FK__VeRutGon__MaLoai__0880433F] FOREIGN KEY ([MaLoaiGhe]) REFERENCES [dbo].[LoaiGhe] ([MaLoaiGhe]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table XuatChieu
-- ----------------------------
ALTER TABLE [dbo].[XuatChieu] ADD CONSTRAINT [FK__XuatChieu__MaPhi__70DDC3D8] FOREIGN KEY ([MaPhim]) REFERENCES [dbo].[Phim] ([MaPhim]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[XuatChieu] ADD CONSTRAINT [FK__XuatChieu__MaPho__71D1E811] FOREIGN KEY ([MaPhong]) REFERENCES [dbo].[Phong] ([MaPhong]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[XuatChieu] ADD CONSTRAINT [FK__XuatChieu__MaDan__72C60C4A] FOREIGN KEY ([MaDangPhim]) REFERENCES [dbo].[DangPhim] ([MaDangPhim]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

