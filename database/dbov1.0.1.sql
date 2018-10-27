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

 Date: 08/10/2018 11:19:02
*/


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
  [MaPhong] varchar(4) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [IDGhe] varchar(4) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [MaLoaiGhe] varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [TinhTrangGhe] varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [MaGhe] AS (concat([MaPhong],[IDGhe])) PERSISTED NOT NULL
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

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'SM09', N'SWEETBOX', N'Tot')
GO

INSERT INTO [dbo].[Ghe] ([MaPhong], [IDGhe], [MaLoaiGhe], [TinhTrangGhe]) VALUES (N'PG01', N'SM10', N'SWEETBOX', N'Tot')
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

INSERT INTO [dbo].[LoaiGhe]  VALUES (N'NORMAL', N'Gh? Thu?ng')
GO

INSERT INTO [dbo].[LoaiGhe]  VALUES (N'SWEETBOX', N'Gh? Ðôi(SweetBox)')
GO

INSERT INTO [dbo].[LoaiGhe]  VALUES (N'VIP', N'Gh? VIP')
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

INSERT INTO [dbo].[LoaiThanhVien]  VALUES (N'ADMIN', N'Ngu?i qu?n tr?')
GO

INSERT INTO [dbo].[LoaiThanhVien]  VALUES (N'GUEST', N'Khách Xem')
GO

INSERT INTO [dbo].[LoaiThanhVien]  VALUES (N'MANAGER', N'Ngu?i qu?n lý')
GO

INSERT INTO [dbo].[LoaiThanhVien]  VALUES (N'STAFF', N'Nhân Viên')
GO

INSERT INTO [dbo].[LoaiThanhVien]  VALUES (N'USER', N'Ngu?i Dùng')
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
  [PosterURL] varchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [MotaPhim] ntext COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [GhiChu] ntext COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NhanPhim] varchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [IMDBrank] float(53)  NULL,
  [IMDBURL] varchar(300) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
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

INSERT INTO [dbo].[Phim] ([ID], [TenPhim], [QuocGia], [ThoiLuongPhim], [NgayBatDau], [NgayKetThuc], [PosterURL], [MotaPhim], [GhiChu], [NhanPhim], [IMDBrank], [IMDBURL]) VALUES (N'1', N'Venom', N'Mỹ', N'02:01:00.0000000', N'2018-10-07', N'2018-11-07', NULL, N'Ðạo diễn : Ruben Fleischer, Diễn Viên : Tom Hardy, Riz Ahmed, Michelle Williams,..., Nội dung : Venom dã hé lộ thân phận nhân vật phản diện cực kỳ nguy hiểm và kinh hãi khi tung trailer chính thức khắp thế giới làm điên dảo fan hâm mộ trong thế giới của Marvel. Chàng phóng viên Eddie Brock bí mật theo dõi âm mưu xấu xa của một tổ chức và bị nhiễm phải Symbiote và trở thành quái vật Venom đầy nguy hiểm.', N'Không', N'C16', N'7.1', N'https://www.imdb.com/title/tt1270797/')
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

INSERT INTO [dbo].[Phong] ([ID], [TenPhong], [TrangThaiPhong], [SoLuongGhe], [SoLuongGheMoiDay]) VALUES (N'1', N'Phòng 1', N'T?t', N'202', N'16')
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

INSERT INTO [dbo].[TheLoai] ([ID], [TenTheLoai]) VALUES (N'1', N'Phim Hành Ð?ng')
GO

INSERT INTO [dbo].[TheLoai] ([ID], [TenTheLoai]) VALUES (N'2', N'Phim Hình S?')
GO

INSERT INTO [dbo].[TheLoai] ([ID], [TenTheLoai]) VALUES (N'3', N'Phim L?ch S?')
GO

INSERT INTO [dbo].[TheLoai] ([ID], [TenTheLoai]) VALUES (N'4', N'Phim Chi?n Tranh')
GO

INSERT INTO [dbo].[TheLoai] ([ID], [TenTheLoai]) VALUES (N'5', N'Phim Khoa H?c Vi?n Tu?ng')
GO

INSERT INTO [dbo].[TheLoai] ([ID], [TenTheLoai]) VALUES (N'6', N'Phim Th? Thao - Âm Nh?c')
GO

INSERT INTO [dbo].[TheLoai] ([ID], [TenTheLoai]) VALUES (N'7', N'Phim Hài Hu?c')
GO

INSERT INTO [dbo].[TheLoai] ([ID], [TenTheLoai]) VALUES (N'8', N'Phim C? Trang')
GO

INSERT INTO [dbo].[TheLoai] ([ID], [TenTheLoai]) VALUES (N'9', N'Phim Chính K?ch - Drama')
GO

INSERT INTO [dbo].[TheLoai] ([ID], [TenTheLoai]) VALUES (N'10', N'Phim Võ Thu?t')
GO

INSERT INTO [dbo].[TheLoai] ([ID], [TenTheLoai]) VALUES (N'11', N'Phim Th?n Tho?i')
GO

INSERT INTO [dbo].[TheLoai] ([ID], [TenTheLoai]) VALUES (N'12', N'Phim Kinh D?')
GO

INSERT INTO [dbo].[TheLoai] ([ID], [TenTheLoai]) VALUES (N'13', N'Phim Tâm Lý')
GO

INSERT INTO [dbo].[TheLoai] ([ID], [TenTheLoai]) VALUES (N'14', N'Phim Gia Ðình')
GO

INSERT INTO [dbo].[TheLoai] ([ID], [TenTheLoai]) VALUES (N'15', N'Phim H?i H?p - Gay C?n')
GO

INSERT INTO [dbo].[TheLoai] ([ID], [TenTheLoai]) VALUES (N'16', N'Phim Tài Li?u')
GO

INSERT INTO [dbo].[TheLoai] ([ID], [TenTheLoai]) VALUES (N'17', N'Phim Ho?t Hình')
GO

INSERT INTO [dbo].[TheLoai] ([ID], [TenTheLoai]) VALUES (N'18', N'Phim Phiêu Luu')
GO

INSERT INTO [dbo].[TheLoai] ([ID], [TenTheLoai]) VALUES (N'19', N'Phim Bí ?n - Siêu Nhân')
GO

INSERT INTO [dbo].[TheLoai] ([ID], [TenTheLoai]) VALUES (N'20', N'Phim Tình C?m - Lãnh M?ng')
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
-- Table structure for TrangThaiVe
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[TrangThaiVe]') AND type IN ('U'))
	DROP TABLE [dbo].[TrangThaiVe]
GO

CREATE TABLE [dbo].[TrangThaiVe] (
  [MaTrangThaiVe] int  IDENTITY NOT NULL,
  [TenTrangThaiVe] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
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

INSERT INTO [dbo].[TrangThaiVe] ([MaTrangThaiVe], [TenTrangThaiVe]) VALUES (N'0', N'Còn Tr?ng')
GO

INSERT INTO [dbo].[TrangThaiVe] ([MaTrangThaiVe], [TenTrangThaiVe]) VALUES (N'1', N'Ðã Ð?t')
GO

SET IDENTITY_INSERT [dbo].[TrangThaiVe] OFF
GO

COMMIT
GO


-- ----------------------------
-- Table structure for TrangThaiVeOnline
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[TrangThaiVeOnline]') AND type IN ('U'))
	DROP TABLE [dbo].[TrangThaiVeOnline]
GO

CREATE TABLE [dbo].[TrangThaiVeOnline] (
  [ID] int  IDENTITY(1,1) NOT NULL,
  [TenTrangThaiVeOnline] nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[TrangThaiVeOnline] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of TrangThaiVeOnline
-- ----------------------------
BEGIN TRANSACTION
GO

SET IDENTITY_INSERT [dbo].[TrangThaiVeOnline] ON
GO

INSERT INTO [dbo].[TrangThaiVeOnline] ([ID], [TenTrangThaiVeOnline]) VALUES (N'1', N'Ðã xác nh?n')
GO

INSERT INTO [dbo].[TrangThaiVeOnline] ([ID], [TenTrangThaiVeOnline]) VALUES (N'2', N'Ch? xác nh?n')
GO

INSERT INTO [dbo].[TrangThaiVeOnline] ([ID], [TenTrangThaiVeOnline]) VALUES (N'3', N'Ðã h?y')
GO

SET IDENTITY_INSERT [dbo].[TrangThaiVeOnline] OFF
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
-- Records of Ve
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NA01', N'P0012DNOXC0015PG01NA01', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NA02', N'P0012DNOXC0015PG01NA02', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NA03', N'P0012DNOXC0015PG01NA03', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NA04', N'P0012DNOXC0015PG01NA04', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NA05', N'P0012DNOXC0015PG01NA05', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NA06', N'P0012DNOXC0015PG01NA06', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NA07', N'P0012DNOXC0015PG01NA07', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NA08', N'P0012DNOXC0015PG01NA08', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NA09', N'P0012DNOXC0015PG01NA09', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NA10', N'P0012DNOXC0015PG01NA10', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NA11', N'P0012DNOXC0015PG01NA11', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NA12', N'P0012DNOXC0015PG01NA12', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NA13', N'P0012DNOXC0015PG01NA13', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NA14', N'P0012DNOXC0015PG01NA14', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NA15', N'P0012DNOXC0015PG01NA15', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NA16', N'P0012DNOXC0015PG01NA16', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NB01', N'P0012DNOXC0015PG01NB01', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NB02', N'P0012DNOXC0015PG01NB02', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NB03', N'P0012DNOXC0015PG01NB03', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NB04', N'P0012DNOXC0015PG01NB04', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NB05', N'P0012DNOXC0015PG01NB05', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NB06', N'P0012DNOXC0015PG01NB06', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NB07', N'P0012DNOXC0015PG01NB07', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NB08', N'P0012DNOXC0015PG01NB08', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NB09', N'P0012DNOXC0015PG01NB09', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NB10', N'P0012DNOXC0015PG01NB10', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NB11', N'P0012DNOXC0015PG01NB11', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NB12', N'P0012DNOXC0015PG01NB12', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NB13', N'P0012DNOXC0015PG01NB13', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NB14', N'P0012DNOXC0015PG01NB14', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NB15', N'P0012DNOXC0015PG01NB15', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NB16', N'P0012DNOXC0015PG01NB16', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NC01', N'P0012DNOXC0015PG01NC01', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NC02', N'P0012DNOXC0015PG01NC02', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NC03', N'P0012DNOXC0015PG01NC03', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NC04', N'P0012DNOXC0015PG01NC04', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NC05', N'P0012DNOXC0015PG01NC05', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NC06', N'P0012DNOXC0015PG01NC06', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NC07', N'P0012DNOXC0015PG01NC07', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NC08', N'P0012DNOXC0015PG01NC08', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NC09', N'P0012DNOXC0015PG01NC09', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NC10', N'P0012DNOXC0015PG01NC10', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NC11', N'P0012DNOXC0015PG01NC11', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NC12', N'P0012DNOXC0015PG01NC12', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NC13', N'P0012DNOXC0015PG01NC13', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NC14', N'P0012DNOXC0015PG01NC14', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NC15', N'P0012DNOXC0015PG01NC15', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NC16', N'P0012DNOXC0015PG01NC16', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01ND01', N'P0012DNOXC0015PG01ND01', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01ND02', N'P0012DNOXC0015PG01ND02', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01ND03', N'P0012DNOXC0015PG01ND03', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01ND04', N'P0012DNOXC0015PG01ND04', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01ND05', N'P0012DNOXC0015PG01ND05', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01ND06', N'P0012DNOXC0015PG01ND06', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01ND07', N'P0012DNOXC0015PG01ND07', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01ND08', N'P0012DNOXC0015PG01ND08', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01ND09', N'P0012DNOXC0015PG01ND09', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01ND10', N'P0012DNOXC0015PG01ND10', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01ND11', N'P0012DNOXC0015PG01ND11', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01ND12', N'P0012DNOXC0015PG01ND12', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01ND13', N'P0012DNOXC0015PG01ND13', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01ND14', N'P0012DNOXC0015PG01ND14', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01ND15', N'P0012DNOXC0015PG01ND15', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01ND16', N'P0012DNOXC0015PG01ND16', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NE01', N'P0012DNOXC0015PG01NE01', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NE02', N'P0012DNOXC0015PG01NE02', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NE03', N'P0012DNOXC0015PG01NE03', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NE14', N'P0012DNOXC0015PG01NE14', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NE15', N'P0012DNOXC0015PG01NE15', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NE16', N'P0012DNOXC0015PG01NE16', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NF01', N'P0012DNOXC0015PG01NF01', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NF02', N'P0012DNOXC0015PG01NF02', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NF03', N'P0012DNOXC0015PG01NF03', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NF14', N'P0012DNOXC0015PG01NF14', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NF15', N'P0012DNOXC0015PG01NF15', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NF16', N'P0012DNOXC0015PG01NF16', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NG01', N'P0012DNOXC0015PG01NG01', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NG02', N'P0012DNOXC0015PG01NG02', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NG03', N'P0012DNOXC0015PG01NG03', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NG14', N'P0012DNOXC0015PG01NG14', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NG15', N'P0012DNOXC0015PG01NG15', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NG16', N'P0012DNOXC0015PG01NG16', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NH01', N'P0012DNOXC0015PG01NH01', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NH02', N'P0012DNOXC0015PG01NH02', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NH03', N'P0012DNOXC0015PG01NH03', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NH14', N'P0012DNOXC0015PG01NH14', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NH15', N'P0012DNOXC0015PG01NH15', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NH16', N'P0012DNOXC0015PG01NH16', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NI01', N'P0012DNOXC0015PG01NI01', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NI02', N'P0012DNOXC0015PG01NI02', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NI03', N'P0012DNOXC0015PG01NI03', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NI14', N'P0012DNOXC0015PG01NI14', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NI15', N'P0012DNOXC0015PG01NI15', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NI16', N'P0012DNOXC0015PG01NI16', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NJ01', N'P0012DNOXC0015PG01NJ01', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NJ02', N'P0012DNOXC0015PG01NJ02', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NJ03', N'P0012DNOXC0015PG01NJ03', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NJ14', N'P0012DNOXC0015PG01NJ14', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NJ15', N'P0012DNOXC0015PG01NJ15', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NJ16', N'P0012DNOXC0015PG01NJ16', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NK01', N'P0012DNOXC0015PG01NK01', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NK02', N'P0012DNOXC0015PG01NK02', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NK03', N'P0012DNOXC0015PG01NK03', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NK04', N'P0012DNOXC0015PG01NK04', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NK05', N'P0012DNOXC0015PG01NK05', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NK06', N'P0012DNOXC0015PG01NK06', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NK07', N'P0012DNOXC0015PG01NK07', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NK08', N'P0012DNOXC0015PG01NK08', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NK09', N'P0012DNOXC0015PG01NK09', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NK10', N'P0012DNOXC0015PG01NK10', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NK11', N'P0012DNOXC0015PG01NK11', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NK12', N'P0012DNOXC0015PG01NK12', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NK13', N'P0012DNOXC0015PG01NK13', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NK14', N'P0012DNOXC0015PG01NK14', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NK15', N'P0012DNOXC0015PG01NK15', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NK16', N'P0012DNOXC0015PG01NK16', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NL01', N'P0012DNOXC0015PG01NL01', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NL02', N'P0012DNOXC0015PG01NL02', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NL03', N'P0012DNOXC0015PG01NL03', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NL04', N'P0012DNOXC0015PG01NL04', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NL05', N'P0012DNOXC0015PG01NL05', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NL06', N'P0012DNOXC0015PG01NL06', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NL07', N'P0012DNOXC0015PG01NL07', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NL08', N'P0012DNOXC0015PG01NL08', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NL09', N'P0012DNOXC0015PG01NL09', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NL10', N'P0012DNOXC0015PG01NL10', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NL11', N'P0012DNOXC0015PG01NL11', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NL12', N'P0012DNOXC0015PG01NL12', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NL13', N'P0012DNOXC0015PG01NL13', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NL14', N'P0012DNOXC0015PG01NL14', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NL15', N'P0012DNOXC0015PG01NL15', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01NL16', N'P0012DNOXC0015PG01NL16', N'G01', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01SM01', N'P0012DNOXC0015PG01SM01', N'G03', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01SM02', N'P0012DNOXC0015PG01SM02', N'G03', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01SM03', N'P0012DNOXC0015PG01SM03', N'G03', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01SM04', N'P0012DNOXC0015PG01SM04', N'G03', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01SM05', N'P0012DNOXC0015PG01SM05', N'G03', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01SM06', N'P0012DNOXC0015PG01SM06', N'G03', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01SM07', N'P0012DNOXC0015PG01SM07', N'G03', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01SM08', N'P0012DNOXC0015PG01SM08', N'G03', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01SM09', N'P0012DNOXC0015PG01SM09', N'G03', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01SM10', N'P0012DNOXC0015PG01SM10', N'G03', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01VE04', N'P0012DNOXC0015PG01VE04', N'G02', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01VE05', N'P0012DNOXC0015PG01VE05', N'G02', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01VE06', N'P0012DNOXC0015PG01VE06', N'G02', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01VE07', N'P0012DNOXC0015PG01VE07', N'G02', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01VE08', N'P0012DNOXC0015PG01VE08', N'G02', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01VE09', N'P0012DNOXC0015PG01VE09', N'G02', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01VE10', N'P0012DNOXC0015PG01VE10', N'G02', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01VE11', N'P0012DNOXC0015PG01VE11', N'G02', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01VE12', N'P0012DNOXC0015PG01VE12', N'G02', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01VE13', N'P0012DNOXC0015PG01VE13', N'G02', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01VF04', N'P0012DNOXC0015PG01VF04', N'G02', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01VF05', N'P0012DNOXC0015PG01VF05', N'G02', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01VF06', N'P0012DNOXC0015PG01VF06', N'G02', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01VF07', N'P0012DNOXC0015PG01VF07', N'G02', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01VF08', N'P0012DNOXC0015PG01VF08', N'G02', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01VF09', N'P0012DNOXC0015PG01VF09', N'G02', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01VF10', N'P0012DNOXC0015PG01VF10', N'G02', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01VF11', N'P0012DNOXC0015PG01VF11', N'G02', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01VF12', N'P0012DNOXC0015PG01VF12', N'G02', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01VF13', N'P0012DNOXC0015PG01VF13', N'G02', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01VG04', N'P0012DNOXC0015PG01VG04', N'G02', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01VG05', N'P0012DNOXC0015PG01VG05', N'G02', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01VG06', N'P0012DNOXC0015PG01VG06', N'G02', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01VG07', N'P0012DNOXC0015PG01VG07', N'G02', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01VG08', N'P0012DNOXC0015PG01VG08', N'G02', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01VG09', N'P0012DNOXC0015PG01VG09', N'G02', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01VG10', N'P0012DNOXC0015PG01VG10', N'G02', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01VG11', N'P0012DNOXC0015PG01VG11', N'G02', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01VG12', N'P0012DNOXC0015PG01VG12', N'G02', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01VG13', N'P0012DNOXC0015PG01VG13', N'G02', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01VH04', N'P0012DNOXC0015PG01VH04', N'G02', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01VH05', N'P0012DNOXC0015PG01VH05', N'G02', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01VH06', N'P0012DNOXC0015PG01VH06', N'G02', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01VH07', N'P0012DNOXC0015PG01VH07', N'G02', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01VH08', N'P0012DNOXC0015PG01VH08', N'G02', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01VH09', N'P0012DNOXC0015PG01VH09', N'G02', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01VH10', N'P0012DNOXC0015PG01VH10', N'G02', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01VH11', N'P0012DNOXC0015PG01VH11', N'G02', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01VH12', N'P0012DNOXC0015PG01VH12', N'G02', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01VH13', N'P0012DNOXC0015PG01VH13', N'G02', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01VI04', N'P0012DNOXC0015PG01VI04', N'G02', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01VI05', N'P0012DNOXC0015PG01VI05', N'G02', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01VI06', N'P0012DNOXC0015PG01VI06', N'G02', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01VI07', N'P0012DNOXC0015PG01VI07', N'G02', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01VI08', N'P0012DNOXC0015PG01VI08', N'G02', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01VI09', N'P0012DNOXC0015PG01VI09', N'G02', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01VI10', N'P0012DNOXC0015PG01VI10', N'G02', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01VI11', N'P0012DNOXC0015PG01VI11', N'G02', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01VI12', N'P0012DNOXC0015PG01VI12', N'G02', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01VI13', N'P0012DNOXC0015PG01VI13', N'G02', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01VJ04', N'P0012DNOXC0015PG01VJ04', N'G02', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01VJ05', N'P0012DNOXC0015PG01VJ05', N'G02', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01VJ06', N'P0012DNOXC0015PG01VJ06', N'G02', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01VJ07', N'P0012DNOXC0015PG01VJ07', N'G02', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01VJ08', N'P0012DNOXC0015PG01VJ08', N'G02', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01VJ09', N'P0012DNOXC0015PG01VJ09', N'G02', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01VJ10', N'P0012DNOXC0015PG01VJ10', N'G02', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01VJ11', N'P0012DNOXC0015PG01VJ11', N'G02', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01VJ12', N'P0012DNOXC0015PG01VJ12', N'G02', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0015', N'PG01VJ13', N'P0012DNOXC0015PG01VJ13', N'G02', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NA01', N'P0013DNOXC0016PG01NA01', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NA02', N'P0013DNOXC0016PG01NA02', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NA03', N'P0013DNOXC0016PG01NA03', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NA04', N'P0013DNOXC0016PG01NA04', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NA05', N'P0013DNOXC0016PG01NA05', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NA06', N'P0013DNOXC0016PG01NA06', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NA07', N'P0013DNOXC0016PG01NA07', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NA08', N'P0013DNOXC0016PG01NA08', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NA09', N'P0013DNOXC0016PG01NA09', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NA10', N'P0013DNOXC0016PG01NA10', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NA11', N'P0013DNOXC0016PG01NA11', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NA12', N'P0013DNOXC0016PG01NA12', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NA13', N'P0013DNOXC0016PG01NA13', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NA14', N'P0013DNOXC0016PG01NA14', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NA15', N'P0013DNOXC0016PG01NA15', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NA16', N'P0013DNOXC0016PG01NA16', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NB01', N'P0013DNOXC0016PG01NB01', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NB02', N'P0013DNOXC0016PG01NB02', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NB03', N'P0013DNOXC0016PG01NB03', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NB04', N'P0013DNOXC0016PG01NB04', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NB05', N'P0013DNOXC0016PG01NB05', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NB06', N'P0013DNOXC0016PG01NB06', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NB07', N'P0013DNOXC0016PG01NB07', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NB08', N'P0013DNOXC0016PG01NB08', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NB09', N'P0013DNOXC0016PG01NB09', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NB10', N'P0013DNOXC0016PG01NB10', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NB11', N'P0013DNOXC0016PG01NB11', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NB12', N'P0013DNOXC0016PG01NB12', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NB13', N'P0013DNOXC0016PG01NB13', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NB14', N'P0013DNOXC0016PG01NB14', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NB15', N'P0013DNOXC0016PG01NB15', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NB16', N'P0013DNOXC0016PG01NB16', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NC01', N'P0013DNOXC0016PG01NC01', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NC02', N'P0013DNOXC0016PG01NC02', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NC03', N'P0013DNOXC0016PG01NC03', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NC04', N'P0013DNOXC0016PG01NC04', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NC05', N'P0013DNOXC0016PG01NC05', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NC06', N'P0013DNOXC0016PG01NC06', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NC07', N'P0013DNOXC0016PG01NC07', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NC08', N'P0013DNOXC0016PG01NC08', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NC09', N'P0013DNOXC0016PG01NC09', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NC10', N'P0013DNOXC0016PG01NC10', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NC11', N'P0013DNOXC0016PG01NC11', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NC12', N'P0013DNOXC0016PG01NC12', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NC13', N'P0013DNOXC0016PG01NC13', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NC14', N'P0013DNOXC0016PG01NC14', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NC15', N'P0013DNOXC0016PG01NC15', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NC16', N'P0013DNOXC0016PG01NC16', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01ND01', N'P0013DNOXC0016PG01ND01', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01ND02', N'P0013DNOXC0016PG01ND02', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01ND03', N'P0013DNOXC0016PG01ND03', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01ND04', N'P0013DNOXC0016PG01ND04', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01ND05', N'P0013DNOXC0016PG01ND05', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01ND06', N'P0013DNOXC0016PG01ND06', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01ND07', N'P0013DNOXC0016PG01ND07', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01ND08', N'P0013DNOXC0016PG01ND08', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01ND09', N'P0013DNOXC0016PG01ND09', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01ND10', N'P0013DNOXC0016PG01ND10', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01ND11', N'P0013DNOXC0016PG01ND11', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01ND12', N'P0013DNOXC0016PG01ND12', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01ND13', N'P0013DNOXC0016PG01ND13', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01ND14', N'P0013DNOXC0016PG01ND14', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01ND15', N'P0013DNOXC0016PG01ND15', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01ND16', N'P0013DNOXC0016PG01ND16', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NE01', N'P0013DNOXC0016PG01NE01', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NE02', N'P0013DNOXC0016PG01NE02', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NE03', N'P0013DNOXC0016PG01NE03', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NE14', N'P0013DNOXC0016PG01NE14', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NE15', N'P0013DNOXC0016PG01NE15', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NE16', N'P0013DNOXC0016PG01NE16', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NF01', N'P0013DNOXC0016PG01NF01', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NF02', N'P0013DNOXC0016PG01NF02', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NF03', N'P0013DNOXC0016PG01NF03', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NF14', N'P0013DNOXC0016PG01NF14', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NF15', N'P0013DNOXC0016PG01NF15', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NF16', N'P0013DNOXC0016PG01NF16', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NG01', N'P0013DNOXC0016PG01NG01', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NG02', N'P0013DNOXC0016PG01NG02', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NG03', N'P0013DNOXC0016PG01NG03', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NG14', N'P0013DNOXC0016PG01NG14', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NG15', N'P0013DNOXC0016PG01NG15', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NG16', N'P0013DNOXC0016PG01NG16', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NH01', N'P0013DNOXC0016PG01NH01', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NH02', N'P0013DNOXC0016PG01NH02', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NH03', N'P0013DNOXC0016PG01NH03', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NH14', N'P0013DNOXC0016PG01NH14', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NH15', N'P0013DNOXC0016PG01NH15', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NH16', N'P0013DNOXC0016PG01NH16', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NI01', N'P0013DNOXC0016PG01NI01', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NI02', N'P0013DNOXC0016PG01NI02', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NI03', N'P0013DNOXC0016PG01NI03', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NI14', N'P0013DNOXC0016PG01NI14', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NI15', N'P0013DNOXC0016PG01NI15', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NI16', N'P0013DNOXC0016PG01NI16', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NJ01', N'P0013DNOXC0016PG01NJ01', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NJ02', N'P0013DNOXC0016PG01NJ02', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NJ03', N'P0013DNOXC0016PG01NJ03', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NJ14', N'P0013DNOXC0016PG01NJ14', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NJ15', N'P0013DNOXC0016PG01NJ15', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NJ16', N'P0013DNOXC0016PG01NJ16', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NK01', N'P0013DNOXC0016PG01NK01', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NK02', N'P0013DNOXC0016PG01NK02', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NK03', N'P0013DNOXC0016PG01NK03', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NK04', N'P0013DNOXC0016PG01NK04', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NK05', N'P0013DNOXC0016PG01NK05', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NK06', N'P0013DNOXC0016PG01NK06', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NK07', N'P0013DNOXC0016PG01NK07', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NK08', N'P0013DNOXC0016PG01NK08', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NK09', N'P0013DNOXC0016PG01NK09', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NK10', N'P0013DNOXC0016PG01NK10', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NK11', N'P0013DNOXC0016PG01NK11', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NK12', N'P0013DNOXC0016PG01NK12', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NK13', N'P0013DNOXC0016PG01NK13', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NK14', N'P0013DNOXC0016PG01NK14', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NK15', N'P0013DNOXC0016PG01NK15', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NK16', N'P0013DNOXC0016PG01NK16', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NL01', N'P0013DNOXC0016PG01NL01', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NL02', N'P0013DNOXC0016PG01NL02', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NL03', N'P0013DNOXC0016PG01NL03', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NL04', N'P0013DNOXC0016PG01NL04', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NL05', N'P0013DNOXC0016PG01NL05', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NL06', N'P0013DNOXC0016PG01NL06', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NL07', N'P0013DNOXC0016PG01NL07', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NL08', N'P0013DNOXC0016PG01NL08', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NL09', N'P0013DNOXC0016PG01NL09', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NL10', N'P0013DNOXC0016PG01NL10', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NL11', N'P0013DNOXC0016PG01NL11', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NL12', N'P0013DNOXC0016PG01NL12', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NL13', N'P0013DNOXC0016PG01NL13', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NL14', N'P0013DNOXC0016PG01NL14', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NL15', N'P0013DNOXC0016PG01NL15', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01NL16', N'P0013DNOXC0016PG01NL16', N'G04', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01SM01', N'P0013DNOXC0016PG01SM01', N'G06', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01SM02', N'P0013DNOXC0016PG01SM02', N'G06', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01SM03', N'P0013DNOXC0016PG01SM03', N'G06', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01SM04', N'P0013DNOXC0016PG01SM04', N'G06', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01SM05', N'P0013DNOXC0016PG01SM05', N'G06', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01SM06', N'P0013DNOXC0016PG01SM06', N'G06', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01SM07', N'P0013DNOXC0016PG01SM07', N'G06', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01SM08', N'P0013DNOXC0016PG01SM08', N'G06', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01SM09', N'P0013DNOXC0016PG01SM09', N'G06', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01SM10', N'P0013DNOXC0016PG01SM10', N'G06', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01VE04', N'P0013DNOXC0016PG01VE04', N'G05', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01VE05', N'P0013DNOXC0016PG01VE05', N'G05', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01VE06', N'P0013DNOXC0016PG01VE06', N'G05', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01VE07', N'P0013DNOXC0016PG01VE07', N'G05', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01VE08', N'P0013DNOXC0016PG01VE08', N'G05', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01VE09', N'P0013DNOXC0016PG01VE09', N'G05', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01VE10', N'P0013DNOXC0016PG01VE10', N'G05', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01VE11', N'P0013DNOXC0016PG01VE11', N'G05', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01VE12', N'P0013DNOXC0016PG01VE12', N'G05', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01VE13', N'P0013DNOXC0016PG01VE13', N'G05', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01VF04', N'P0013DNOXC0016PG01VF04', N'G05', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01VF05', N'P0013DNOXC0016PG01VF05', N'G05', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01VF06', N'P0013DNOXC0016PG01VF06', N'G05', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01VF07', N'P0013DNOXC0016PG01VF07', N'G05', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01VF08', N'P0013DNOXC0016PG01VF08', N'G05', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01VF09', N'P0013DNOXC0016PG01VF09', N'G05', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01VF10', N'P0013DNOXC0016PG01VF10', N'G05', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01VF11', N'P0013DNOXC0016PG01VF11', N'G05', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01VF12', N'P0013DNOXC0016PG01VF12', N'G05', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01VF13', N'P0013DNOXC0016PG01VF13', N'G05', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01VG04', N'P0013DNOXC0016PG01VG04', N'G05', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01VG05', N'P0013DNOXC0016PG01VG05', N'G05', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01VG06', N'P0013DNOXC0016PG01VG06', N'G05', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01VG07', N'P0013DNOXC0016PG01VG07', N'G05', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01VG08', N'P0013DNOXC0016PG01VG08', N'G05', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01VG09', N'P0013DNOXC0016PG01VG09', N'G05', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01VG10', N'P0013DNOXC0016PG01VG10', N'G05', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01VG11', N'P0013DNOXC0016PG01VG11', N'G05', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01VG12', N'P0013DNOXC0016PG01VG12', N'G05', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01VG13', N'P0013DNOXC0016PG01VG13', N'G05', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01VH04', N'P0013DNOXC0016PG01VH04', N'G05', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01VH05', N'P0013DNOXC0016PG01VH05', N'G05', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01VH06', N'P0013DNOXC0016PG01VH06', N'G05', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01VH07', N'P0013DNOXC0016PG01VH07', N'G05', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01VH08', N'P0013DNOXC0016PG01VH08', N'G05', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01VH09', N'P0013DNOXC0016PG01VH09', N'G05', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01VH10', N'P0013DNOXC0016PG01VH10', N'G05', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01VH11', N'P0013DNOXC0016PG01VH11', N'G05', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01VH12', N'P0013DNOXC0016PG01VH12', N'G05', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01VH13', N'P0013DNOXC0016PG01VH13', N'G05', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01VI04', N'P0013DNOXC0016PG01VI04', N'G05', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01VI05', N'P0013DNOXC0016PG01VI05', N'G05', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01VI06', N'P0013DNOXC0016PG01VI06', N'G05', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01VI07', N'P0013DNOXC0016PG01VI07', N'G05', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01VI08', N'P0013DNOXC0016PG01VI08', N'G05', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01VI09', N'P0013DNOXC0016PG01VI09', N'G05', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01VI10', N'P0013DNOXC0016PG01VI10', N'G05', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01VI11', N'P0013DNOXC0016PG01VI11', N'G05', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01VI12', N'P0013DNOXC0016PG01VI12', N'G05', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01VI13', N'P0013DNOXC0016PG01VI13', N'G05', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01VJ04', N'P0013DNOXC0016PG01VJ04', N'G05', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01VJ05', N'P0013DNOXC0016PG01VJ05', N'G05', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01VJ06', N'P0013DNOXC0016PG01VJ06', N'G05', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01VJ07', N'P0013DNOXC0016PG01VJ07', N'G05', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01VJ08', N'P0013DNOXC0016PG01VJ08', N'G05', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01VJ09', N'P0013DNOXC0016PG01VJ09', N'G05', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01VJ10', N'P0013DNOXC0016PG01VJ10', N'G05', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01VJ11', N'P0013DNOXC0016PG01VJ11', N'G05', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01VJ12', N'P0013DNOXC0016PG01VJ12', N'G05', N'0')
GO

INSERT INTO [dbo].[Ve]  VALUES (N'XC0016', N'PG01VJ13', N'P0013DNOXC0016PG01VJ13', N'G05', N'0')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for VeOnline
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[VeOnline]') AND type IN ('U'))
	DROP TABLE [dbo].[VeOnline]
GO

CREATE TABLE [dbo].[VeOnline] (
  [MaVeOnline] int  IDENTITY(1,1) NOT NULL,
  [NguoiDat] varchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [MaXuatChieu] varchar(6) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [MaGhe] varchar(8) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [NgayDat] AS (CONVERT([date],getdate())),
  [GioDat] AS (CONVERT([time],getdate())),
  [IDTrangThaiVeOnline] int  NOT NULL,
  [MaVe] varchar(23) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[VeOnline] SET (LOCK_ESCALATION = TABLE)
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

INSERT INTO [dbo].[XuatChieu] ([ID], [MaPhim], [MaPhong], [ThoiGianChieu], [NgayChieu], [MaDangPhim]) VALUES (N'15', N'P001', N'PG01', N'20:15:00.0000000', N'2018-10-07', N'2DNO')
GO

INSERT INTO [dbo].[XuatChieu] ([ID], [MaPhim], [MaPhong], [ThoiGianChieu], [NgayChieu], [MaDangPhim]) VALUES (N'16', N'P001', N'PG01', N'22:30:00.0000000', N'2018-10-07', N'3DNO')
GO

SET IDENTITY_INSERT [dbo].[XuatChieu] OFF
GO

COMMIT
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
-- View structure for DanhSachVeOnline
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[DanhSachVeOnline]') AND type IN ('V'))
	DROP VIEW [dbo].[DanhSachVeOnline]
GO

CREATE VIEW [dbo].[DanhSachVeOnline] AS select "VeOnline"."MaVeOnline" as "MaVeOnline",
	"VeOnline"."NguoiDat" as "NguoiDat",
	"VeOnline"."MaVe" as "MaVe",
	"Phim"."TenPhim" as "Phim",
	"XuatChieu"."NgayChieu" as "NgayChieu",
	"XuatChieu"."ThoiGianChieu" as "ThoiGianChieu",
	"Ghe"."IDGhe" as "Ghe" , 
	"LoaiGhe"."TenLoaiGhe" as "TenLoaiGhe",
	"Gia"."Gia" as "GiaVe",
	"TrangThaiVeOnline"."TenTrangThaiVeOnline" as "TrangThai"
from "VeOnline",  "Phim", "XuatChieu", "Ghe", "Gia", "TrangThaiVeOnline", "Ve", "LoaiGhe"
where "VeOnline"."MaXuatChieu" = "XuatChieu"."MaXuatChieu" and
	"VeOnline"."MaGhe" = "Ghe"."MaGhe" and
	"XuatChieu"."MaPhim" = "Phim"."MaPhim" and
	"VeOnline"."MaVe" = "Ve"."MaVe" and
	"Ve"."MaGia" = "Gia"."MaGia" and 
	"VeOnline"."IDTrangThaiVeOnline" = "TrangThaiVeOnline"."ID" and
	"Ghe"."MaLoaiGhe" = "LoaiGhe"."MaLoaiGhe"
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
-- Primary Key structure for table TrangThaiVe
-- ----------------------------
ALTER TABLE [dbo].[TrangThaiVe] ADD CONSTRAINT [PK__TrangTha__EB22A938FFF3B6B8] PRIMARY KEY CLUSTERED ([MaTrangThaiVe])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table TrangThaiVeOnline
-- ----------------------------
ALTER TABLE [dbo].[TrangThaiVeOnline] ADD CONSTRAINT [PK__TrangTha__3214EC272005DBF7] PRIMARY KEY CLUSTERED ([ID])
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
-- Uniques structure for table VeOnline
-- ----------------------------
ALTER TABLE [dbo].[VeOnline] ADD CONSTRAINT [UQ__VeOnline__2725100ECAAA1C99] UNIQUE NONCLUSTERED ([MaVe] ASC)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table VeOnline
-- ----------------------------
ALTER TABLE [dbo].[VeOnline] ADD CONSTRAINT [PK__VeOnline__4CF4111423D9FEE9] PRIMARY KEY CLUSTERED ([MaVeOnline])
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
-- Foreign Keys structure for table VeOnline
-- ----------------------------
ALTER TABLE [dbo].[VeOnline] ADD CONSTRAINT [FK__VeOnline__NguoiD__3E1D39E1] FOREIGN KEY ([NguoiDat]) REFERENCES [dbo].[ThanhVien] ([TenDangNhap]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[VeOnline] ADD CONSTRAINT [FK__VeOnline__IDTran__3F115E1A] FOREIGN KEY ([IDTrangThaiVeOnline]) REFERENCES [dbo].[TrangThaiVeOnline] ([ID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[VeOnline] ADD CONSTRAINT [fk_veonline_ve] FOREIGN KEY ([MaVe]) REFERENCES [dbo].[Ve] ([MaVe]) ON DELETE NO ACTION ON UPDATE NO ACTION
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

