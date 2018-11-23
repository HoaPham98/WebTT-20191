 
DROP TABLE "Phim";

IF NOT EXISTS ( SELECT * FROM sysobjects WHERE name = 'Phim' AND xtype = 'U') 
CREATE TABLE "Phim" ( 
		"ID" INT NOT NULL IDENTITY(1,1),
		"MaPhim" AS 'P' + RIGHT('000' + CAST(ID AS varchar(3)), 3) PERSISTED,
		"TenPhim" NVARCHAR(300) NOT NULL,
		"QuocGia" NVARCHAR(50) NOT NULL,
		"ThoiLuongPhim" TIME NOT NULL,
		"NgayBatDau" DATE NOT NULL,
		"NgayKetThuc" DATE NOT NULL,
		"PosterURL" VARCHAR(500),
		"MotaPhim" NTEXT,
		"GhiChu" NTEXT,
		CONSTRAINT pk_phim PRIMARY KEY ("MaPhim")
);

ALTER TABLE "Phim"
ADD "NhanPhim" varchar(5);

alter table "Phim"
add "IMDBrank" float;

alter table "Phim"
add "IMDBURL" varchar(300);

create table "NhanPhim" (
	"MaNhanPhim" varchar(5) not null primary key
);

alter table "Phim"
add constraint fk_phim_nhanphim foreign key("NhanPhim") references "NhanPhim"("MaNhanPhim");

DROP TABLE "TheLoai";

CREATE TABLE "TheLoai" ( 
		"ID" INT IDENTITY(1,1) NOT NULL,
		"MaTheLoai" AS 'TL' + RIGHT('00' + CAST("ID" AS varchar(2)), 2) PERSISTED,
		"TenTheLoai" NVARCHAR(100) NOT NULL 
		CONSTRAINT pk_theloai PRIMARY KEY ("MaTheLoai")
);

DROP TABLE "TheLoaiPhim";

CREATE TABLE "TheLoaiPhim" ( 
	"MaTheLoai" varchar(4) NOT NULL FOREIGN KEY REFERENCES TheLoai("MaTheLoai"),
	"MaPhim" varchar(4) NOT NULL FOREIGN KEY REFERENCES Phim("MaPhim"),
	CONSTRAINT pk_theloaiphim PRIMARY KEY ("MaTheLoai","MaPhim")
);

DROP TABLE "Phong";

CREATE TABLE "Phong" (
	"ID" int identity(1,1),
	"MaPhong" AS 'PG' + RIGHT('00' + CAST("ID" AS varchar(2)), 2) PERSISTED,
	"TenPhong" nvarchar(20) NOT NULL,
	"TrangThaiPhong" nvarchar(40) NOT NULL,
	"SoLuongGhe" int NOT NULL, 
	"SoLuongGheMoiDay" int NOT NULL
	CONSTRAINT pk_phong PRIMARY KEY ("MaPhong")
);

CREATE TABLE "LoaiGhe" ( 
	"MaLoaiGhe" varchar(10) NOT NULL PRIMARY KEY,
	"TenLoaiGhe" varchar(10) NOT NULL
);

alter table "LoaiGhe"
alter column "TenLoaiGhe" nvarchar(20) not null;

insert into "LoaiGhe" values
('NORMAL','Ghế Thường'),
('VIP','Ghế VIP'),
('SEATBOX','Ghế Seatbox');

DROP TABLE "Ghe";

CREATE TABLE "Ghe" (
	"MaPhong" varchar(4) NOT NULL FOREIGN KEY REFERENCES "Phong"("MaPhong"),
	"IDGhe" varchar(4) NOT NULL,
	"MaLoaiGhe" varchar(10) NOT NULL FOREIGN KEY REFERENCES "LoaiGhe"("MaLoaiGhe"),
	"TrangThaiGhe" varchar(10) NOT NULL,
	"TinhTrangGhe" varchar(10),
	"MaGhe" AS CONCAT("MaPhong","IDGhe") PERSISTED PRIMARY KEY,
);

alter table "Ghe" 
drop column "TrangThaiGhe";

CREATE TABLE "DangPhim" (
	"MaDangPhim" varchar(5) NOT NULL PRIMARY KEY,
	"TenDangPhim" varchar(10) NOT NULL
);

DROP TABLE "XuatChieu";

CREATE TABLE "XuatChieu" (
	"ID" int IDENTITY(1,1),
	"MaXuatChieu" AS 'XC' + RIGHT('0000' + CAST("ID" AS varchar(4)), 4) PERSISTED,
	"MaPhim" varchar(4) NOT NULL FOREIGN KEY REFERENCES "Phim"("MaPhim"),
	"MaPhong" varchar(4) NOT NULL FOREIGN KEY REFERENCES "Phong"("MaPhong"),
	"ThoiGianChieu" time NOT NULL,
	"NgayChieu" date NOT NULL,
	"MaDangPhim" varchar(5) NOT NULL FOREIGN KEY REFERENCES "DangPhim"("MaDangPhim"),
	CONSTRAINT pk_xuatchieu PRIMARY KEY ("MaXuatChieu")
);
go

CREATE TABLE "Gia" ( 
	"ID" int IDENTITY(1,1),
	"MaGia" AS 'G' + RIGHT('00' + CAST("ID" AS varchar(2)), 2) PERSISTED PRIMARY KEY ,
	"MaLoaiGhe" varchar(10) NOT NULL FOREIGN KEY REFERENCES "LoaiGhe"("MaLoaiGhe"),
	"MaDangPhim" varchar(5) NOT NULL FOREIGN KEY REFERENCES "DangPhim"("MaDangPhim"),
	"Gia" int NOT NULL
);
GO


IF OBJECT_ID (N'dbo.getMaGia', N'FN') IS NOT NULL  
    DROP FUNCTION getMaGia;  
GO

CREATE FUNCTION dbo."getMaGia"(@MaXuatChieu varchar(6), @MaGhe varchar(8) ) 
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
	WHERE "Gia"."MaDangPhim" = @MaDangPhim AND "Gia"."MaLoaiGhe" = "MaLoaiGhe";
	
	IF ( @MaGia IS NULL )
		SET @MaGia = 0;
	RETURN @MaGia;
END
GO

if OBJECT_ID(N'dbo.getMaVe', N'FN') IS NOT NULL
	DROP FUNCTION getMaVe;
GO
CREATE OR ALTER FUNCTION dbo."getMaVe"(@MaXuatChieu varchar(6), @MaGhe varchar(8) ) 
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


-- it is bad idea because these function will execute every time table "Ve" is called -> bad performance. use trigger to improve this
CREATE TABLE "Ve" (
	"MaXuatChieu" varchar(6) not null foreign key references dbo."XuatChieu"("MaXuatChieu"),
	"MaGhe" varchar(8) not null foreign key references dbo."Ghe"("MaGhe"),
	"MaVe" varchar(23) not null,
	"MaGia" varchar(3) not null foreign key references "Gia"("MaGia"),
	CONSTRAINT pk_ve PRIMARY KEY ("MaVe")
);

alter table "Ve"
alter column "MaVe" varchar(23);

alter table "Ve"
add constraint ak_unique_mave unique("MaVe");

drop table "Ve";

drop table "TrangThaiVe";

CREATE TABLE "TrangThaiVe" (
	"MaTrangThaiVe" int IDENTITY(0,1) PRIMARY Key,
	"TenTrangThaiVe" VARCHAR(20) not null
);

insert into "TrangThaiVe" values
('Còn Trống'),
('Đã Đặt');

alter table "Ve"
add "MaTrangThaiVe" int not null foreign key references "TrangThaiVe"("MaTrangThaiVe") default 0;

CREATE OR ALTER VIEW "DanhSachVe" AS 
SELECT "Ve"."MaVe" as "MaVe", 
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
	"Ghe"."MaLoaiGhe" = "LoaiGhe"."MaLoaiGhe";


create table "ThanhVien" (
	"ID" int identity(1,1) primary key,
	"TenDangNhap" varchar(30) not null unique,
	"MatKhau" varchar(30) not null,
	"HoTen" nvarchar(50) not null,
	"NgaySinh" date not null, 
	"GioiTinh" SMALLINT not null,
	"DiaChi" nvarchar(100) not null,
	"SoDienThoai" varchar(13) not null,
	"Email" varchar(40) not null
);

create table "TrangThaiGiaoDich" (
	"ID" int identity(1,1) primary key,
	"TrangThaiGiaoDich" nvarchar(20)
);

drop table TrangThaiVeOnline;


insert into "TrangThaiVeOnline" values 
('Đã xác nhận'),
('Chờ xác nhận'),
('Đã hủy');

drop table VeOnline;
create table "VeOnline" (
	"MaVeOnline" int identity(1,1) primary key, 
	"NguoiDat" varchar(30) not null foreign key references "ThanhVien"("TenDangNhap"),
	"MaXuatChieu" varchar(6) not null,
	"MaGhe" varchar(8) not null,
	"MaVe" AS dbo.getMaVe("MaXuatChieu","MaGhe"),
	"NgayDat" as convert(date,GETDATE()),
	"GioDat" as convert(time,GETDATE()),
	"IDTrangThaiVeOnline" int not null foreign key references "TrangThaiVeOnline"("ID"),
	
);

alter table "VeOnline" 
drop UQ__VeOnline__2725100ECAAA1C99;


alter table "VeOnline" 
drop column "MaVe";

alter table "VeOnline" 
drop column "MaVe";

alter table "VeOnline" 
add "MaVe" varchar(23) not null unique;


alter table "VeOnline"
add constraint fk_veonline_ve foreign key("MaVe") references dbo."Ve"("MaVe");


drop table VeOnline;

create table GiaoDich (
	ID int identity(1,1),
	MaGiaoDich as 'GD' + RIGHT('0000000000' + CAST(ID AS varchar(10)), 10) PERSISTED primary key,
	"NguoiDat" varchar(30) not null foreign key references "ThanhVien"("TenDangNhap"),
	"MaXuatChieu" varchar(6) not null foreign key references XuatChieu(MaXuatChieu),
	"NgayDat" as convert(date,GETDATE()),
	"GioDat" as convert(time,GETDATE()),
	"IDTrangThaiGiaoDich" int not null foreign key references "TrangThaiGiaoDich"("ID"),
);

alter table GiaoDich
add TongTien int not null;

alter table GiaoDich
add constraint df_tongtien default 0 for TongTien;

create table ChiTietGiaoDich (
	ID int identity(1,1) primary key,
	MaGiaoDich varchar(12) not null foreign key references GiaoDich(MaGiaoDich),
	"MaGhe" varchar(8) not null foreign key references Ghe(MaGhe),
);

create or alter view "DanhSachGiaoDich" as
select "GiaoDich"."MaVeOnline" as "MaVeOnline",
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
	"Ghe"."MaLoaiGhe" = "LoaiGhe"."MaLoaiGhe";
	
create or alter view DanhSachGiaoDich as
select GiaoDich.MaGiaoDich as MaGiaoDich,
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
	GiaoDich.IDTrangThaiGiaoDich = TrangThaiGiaoDich.ID;
	
drop view DanhSachVeOnline


create or alter trigger trg_phong_sinhghe
on "Phong"
after insert, update as 
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

DBCC CHECKIDENT ('Phong', RESEED, 3) 

insert into "Phong"("TenPhong","SoLuongGheMoiDay","SoLuongGhe","TrangThaiPhong") values 
('Phòng 1',16,200,'Tốt');

insert into "Phong"("TenPhong","SoLuongGheMoiDay","SoLuongGhe","TrangThaiPhong") values 
('Phòng 7',20,300,'Tốt');

delete from Phong
where ID = 8;

update Phong
set TrangThaiPhong = N'Tốt'
where ID = 7;


update "Phong" 
set "SoLuongGhe" = 202
where "MaPhong" = 'PG01';

insert into "DangPhim"("MaDangPhim","TenDangPhim") values 
('2D','2D'),
('3D','3D'),
('4DX','4DX'),
('2DAT','2D ATMOS'),
('2DLA','2D LAMOUR'),
('2DGO','2D GOLD'),
('2DIM','2D IMAX'),
('2DST','2D STARIUM'),
('2DPR','2D PREMIUM'),
('2DSX','2D SCREENX'),
('3DAT','3D ATMOS'),
('3DST','3D STARIUM'),
('3DIM','3D IMAX');

insert into "NhanPhim" values
('P'),
('C13'),
('C16'),
('C18');

drop trigger trg_xuatchieu_sinhve;

create or alter trigger trg_xuatchieu_sinhve_insert
on "XuatChieu"
after insert as 
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

create or alter trigger trg_xuatchieu_sinhve_delete
on "XuatChieu"
instead of delete as 
begin
	declare @MaXuatChieu table("MaXuatChieu" varchar(6));
	insert into @MaXuatChieu
	select MaXuatchieu from deleted;
	
	delete from "Ve" 
	where "Ve"."MaXuatChieu" in (select * from @MaXuatChieu);
	
	delete from "XuatChieu"
	where "MaXuatChieu" in (select * from @MaXuatChieu);
end;

create or alter trigger trg_phong_delete
on "Phong"
instead of delete as 
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
end;

delete from "Ghe"
where "MaLoaiGhe" = 'SEATBOX';

update "LoaiGhe"
set "MaLoaiGhe" = 'SWEETBOX', "TenLoaiGhe" = 'Ghế Đôi(SweetBox)'
where "MaLoaiGhe" = 'SEATBOX';

insert into "Phim"("TenPhim","NhanPhim","QuocGia","ThoiLuongPhim","NgayBatDau","NgayKetThuc","IMDBrank","IMDBURL","MotaPhim","GhiChu") values
('Venom',
'C16',
'Mỹ',
'02:01',
'10-7-2018',
'11-7-2018',
'7.1',
'https://www.imdb.com/title/tt1270797/',
'Đạo diễn : Ruben Fleischer, 
Diễn Viên : Tom Hardy, Riz Ahmed, Michelle Williams,..., 
Nội dung : Venom đã hé lộ thân phận nhân vật phản diện cực kỳ 
nguy hiểm và kinh hãi khi tung trailer chính thức khắp thế giới 
làm điên đảo fan hâm mộ trong thế giới của Marvel. Chàng phóng 
viên Eddie Brock bí mật theo dõi âm mưu xấu xa của một tổ chức 
và bị nhiễm phải Symbiote và trở thành quái vật Venom đầy nguy hiểm.',
'Không');

insert into "Phim"("TenPhim","NhanPhim","QuocGia","ThoiLuongPhim","NgayBatDau","NgayKetThuc","IMDBrank","IMDBURL","MotaPhim","GhiChu") values
(N'Bước Chân Đầu Tiên',
'C13',
N'Mỹ',
'02:01',
'10-19-2018',
'11-19-2018',
'7.7',
'https://www.imdb.com/title/tt1213641/',
N'Đạo diễn : Damien Chazelle, 
Diễn Viên :  Ryan Gosling, Claire Foy, Kyle Chandler, Pablo Schreiber,...
Nội dung : Bước Chân Đầu Tiên tái hiện lại hành trình lịch sử đưa con người tiếp cận mặt trăng của NASA, xoay quanh cuộc đời của phi hành gia huyền thoại Neil Amstrong trong giai đoạn 1961-1969 cũng như những hy sinh và mất mát – đối với riêng bản thân ông và cả nước Mỹ nói chung – trong quá trình thực hiện một trong những nhiệm vụ nguy hiểm nhất trong lịch sử nhân loại.',
N'Không');

update Phim 
set DaoDien = N'Ruben Fleischer'
where Phim.MaPhim = 'P001';

update Phim 
set MotaPhim = N'Tháng 10 này, hãy để tâm hồn bạn bay bổng cùng cảm xúc lãng mạn với câu chuyện tình yêu lấp lánh của Vì Sao Vụt Sáng. Chàng nghệ sỹ nhạc đồng quê Jackson Maine (Bradley Cooper) và ca sỹ vô danh Ally (Lady GaGa) sẽ khiến bạn đắm chìm trong thế giới âm nhạc rực rỡ và rung động đến từng phút giây. Liệu định mệnh sẽ viết nên cái kết nào cho cả hai khi đứng giữa tình yêu và sự nghiệp?Đừng bỏ lỡ màn nhập vai được cho là tuyệt vời nhất của Lady Gaga từ trước đến nay!'
where Phim.MaPhim = 'P004';



insert into "Phim"("TenPhim","NhanPhim","QuocGia","ThoiLuongPhim","NgayBatDau","NgayKetThuc","IMDBrank","IMDBURL","MotaPhim","GhiChu") values
(N'Quý Cô Thừa Kế',
'C13',
N'Việt Nam',
'01:50',
'10-19-2018',
'11-19-2018',
'7.7',
'https://www.imdb.com/',
N'Đạo diễn : Hoàng Duy, 
Diễn Viên :  Ngân Khánh, Song Luân, Sỹ Thanh, Quang Minh, Hồng Đào,…
Nội dung : Nội dung phim xoay quanh câu chuyện Nhung (Ngân Khánh) là một cô tiểu thư đỏng đảnh coi trời bằng vung và để kế thừa khối tài sản kết xù của bà ngoại cô phải tham gia một khóa học 3 tháng tại khu nhà cổ Từ Tâm. Tại đây cô gặp được Việt Anh (Song Luân) chàng trai thợ hồ hiền lành chất phác. Nhưng kể từ khi gặp nhau những biến cố dần xảy ra, liệu cô sẽ trải qua những khó khăn đó như thế nào và có thừa hưởng được khối tài sản của bà mình không?',
N'Không');

insert into "Phim"("TenPhim","NhanPhim","QuocGia","ThoiLuongPhim","NgayBatDau","NgayKetThuc","IMDBrank","IMDBURL","MotaPhim","GhiChu") values
(N'Vì Sao Vụt Sáng',
'C18',
N'Mỹ',
'02:20',
'10-5-2018',
'12-5-2018',
'7.7',
'https://www.imdb.com/title/tt1517451/',
N'Đạo diễn : Bradley Cooper
Diễn Viên :  Lady Gaga, Bradley Cooper, Sam Elliott, Dave Chappelle
Nội dung : Tháng 10 này, hãy để tâm hồn bạn bay bổng cùng cảm xúc lãng mạn với câu chuyện tình yêu lấp lánh của Vì Sao Vụt Sáng. Chàng nghệ sỹ nhạc đồng quê Jackson Maine (Bradley Cooper) và ca sỹ vô danh Ally (Lady GaGa) sẽ khiến bạn đắm chìm trong thế giới âm nhạc rực rỡ và rung động đến từng phút giây. Liệu định mệnh sẽ viết nên cái kết nào cho cả hai khi đứng giữa tình yêu và sự nghiệp?Đừng bỏ lỡ màn nhập vai được cho là tuyệt vời nhất của Lady Gaga từ trước đến nay!',
N'Không');


insert into "Gia"("MaLoaiGhe","MaDangPhim","Gia") values
('NORMAL','2D','55000'),
('VIP','2D','65000'),
('SWEETBOX','2D','140000'),
('NORMAL','3D','80000'),
('VIP','3D','100000'),
('SWEETBOX','3D','210000');

delete from "XuatChieu"
where "MaPhim" = 'P001';

delete from "Ve"
where "MaXuatChieu" = 'XC0012';

delete from "XuatChieu"
where ID < 24;


insert into "XuatChieu"("MaPhim","MaPhong","NgayChieu","ThoiGianChieu","MaDangPhim") values
('P001','PG07','10-20-2018','20:15','2DNO');

insert into "XuatChieu"("MaPhim","MaPhong","NgayChieu","ThoiGianChieu","MaDangPhim") values
('P001','PG06','10-20-2018','22:30','3DNO');

insert into "TheLoai" values
('Phim Hình Sự'),
('Phim Lịch Sử'),
('Phim Chiến Tranh'),
('Phim Khoa Học Viễn Tưởng'),
('Phim Thể Thao - Âm Nhạc'),
('Phim Hài Hước'),
('Phim Cổ Trang'),
('Phim Chính Kịch - Drama'),
('Phim Võ Thuật'),
('Phim Thần Thoại'),
('Phim Kinh Dị'),
('Phim Tâm Lý'),
('Phim Gia Đình'),
('Phim Hồi Hộp - Gay Cấn'),
('Phim Tài Liệu'),
('Phim Hoạt Hình'),
('Phim Phiêu Lưu'),
('Phim Bí Ẩn - Siêu Nhân'),
('Phim Tình Cảm - Lãnh Mạng');

insert into "TheLoaiPhim" values 
('TL01','P001'),
('TL05','P001');

create or alter view "DanhSachPhimDangChieu" as
select * from Phim 
where cast(Phim.NgayBatDau as date) <= cast(GETDATE() as date) and cast(Phim.NgayKetThuc as date) >= cast(GETDATE() as date);

create or alter view DanhSachPhimSapChieu as
select * from Phim 
where cast(Phim.NgayBatDau as date) > cast(GETDATE() as date) and cast(Phim.NgayBatDau as date) <= cast(DATEADD(day,30,GETDATE()) as date);

create or alter function searchLichChieu_TheoPhim(@MaPhim varchar(4))
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
end;

select * from searchLichChieu_TheoPhim('P001');

create or alter function searchLichChieu_TheoNgay(@NgayChieu date)
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
end;

select * from searchLichChieu_TheoNgay('20181007');

create or alter function searchLichChieu_TheoPhim_TheoNgay(@MaPhim varchar(4),@NgayChieu date)
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
end;

select * from searchLichChieu_TheoPhim_TheoNgay('P001','20181007');

alter table ThanhVien
add SoDu int default 0;

create table LoaiThanhVien (
	MaLoaiThanhVien varchar(10) not null primary key,
	TenLoaiThanhVien nvarchar(40)
);

insert into LoaiThanhVien values
('ADMIN','Người quản trị'),
('MANAGER','Người quản lý'),
('STAFF','Nhân Viên'),
('USER','Người Dùng'),
('GUEST','Khách Xem');

alter table ThanhVien
add LoaiTV varchar(10) default 'USER';

alter table ThanhVien
add constraint fk_thanhvien_loaithanhvien foreign key(LoaiTV) references LoaiThanhVien(MaLoaiThanhVien);

insert into DangPhim values
('2DNO','2D'),
('3DNO','3D');

delete from Phong
where MaPhong = 'PG01';

alter table Phim
add PosterURL2 varchar(500)

create table VeRutGon (
	ID int identity(1,1) not null primary key,
	MaXuatChieu varchar(6) not null foreign key references XuatChieu(MaXuatChieu),
	MaLoaiGhe varchar(10) not null foreign key references LoaiGhe(MaLoaiGhe),
	SoGheDaBan int not null DEFAULT 0,
	SoGheChuaBan int not null default 0,
	TongThu int not null default 0
);

Drop table VeRutGon;

delete from VeRutGon
where ID < 12;

create or alter procedure rutGonVe
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
end;

exec rutGonVe;

create or alter table ThongKe (
	ID int identity(1,1) primary key,
	NgayChieu date,
	MaPhim varchar(4) not null foreign key references Phim(MaPhim),
	SoLuongXuatChieu int not null DEFAULT 0,
	SoLuongGheCungCap int not null default 0,
	SoLuongGheDaBan int not null default 0,
	TongThu int not null default 0
);

drop table ThongKe;

create or alter procedure thongKePhim
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

delete from ThongKe;
alter table ThongKe
add TongThu bigint not null default 0
exec thongKePhim;

alter table GiaoDich
add NgayDat date default (cast(GETDATE() as date));


alter table GiaoDich
add GioDat time default (cast(GETDATE() as time));

alter table Phim 
add DaoDien nvarchar(100);

alter table Phim 
add DienVien nvarchar(500);



DBCC CHECKIDENT ('XuatChieu', RESEED, 0) 

insert into "XuatChieu"("MaPhim","MaPhong","NgayChieu","ThoiGianChieu","MaDangPhim") values
('P001','PG01','11-27-2018','10:00','3DNO');
insert into "XuatChieu"("MaPhim","MaPhong","NgayChieu","ThoiGianChieu","MaDangPhim") values
('P001','PG02','11-27-2018','18:30','2DNO');
insert into "XuatChieu"("MaPhim","MaPhong","NgayChieu","ThoiGianChieu","MaDangPhim") values
('P001','PG04','11-27-2018','21:20','2DNO');
insert into "XuatChieu"("MaPhim","MaPhong","NgayChieu","ThoiGianChieu","MaDangPhim") values
('P001','PG08','11-27-2018','15:40','3DNO');
insert into "XuatChieu"("MaPhim","MaPhong","NgayChieu","ThoiGianChieu","MaDangPhim") values
('P002','PG02','11-27-2018','14:35','3DNO');
insert into "XuatChieu"("MaPhim","MaPhong","NgayChieu","ThoiGianChieu","MaDangPhim") values
('P002','PG03','11-27-2018','21:10','2DNO');
insert into "XuatChieu"("MaPhim","MaPhong","NgayChieu","ThoiGianChieu","MaDangPhim") values
('P002','PG04','11-27-2018','13:00','2DNO');
insert into "XuatChieu"("MaPhim","MaPhong","NgayChieu","ThoiGianChieu","MaDangPhim") values
('P002','PG08','11-27-2018','11:00','3DNO');
insert into "XuatChieu"("MaPhim","MaPhong","NgayChieu","ThoiGianChieu","MaDangPhim") values
('P003','PG05','11-27-2018','10:00','3DNO');
insert into "XuatChieu"("MaPhim","MaPhong","NgayChieu","ThoiGianChieu","MaDangPhim") values
('P003','PG04','11-27-2018','17:00','2DNO');
insert into "XuatChieu"("MaPhim","MaPhong","NgayChieu","ThoiGianChieu","MaDangPhim") values
('P003','PG03','11-27-2018','22:00','2DNO');
insert into "XuatChieu"("MaPhim","MaPhong","NgayChieu","ThoiGianChieu","MaDangPhim") values
('P003','PG01','11-27-2018','20:10','3DNO');
insert into "XuatChieu"("MaPhim","MaPhong","NgayChieu","ThoiGianChieu","MaDangPhim") values
('P004','PG02','11-27-2018','19:15','3DNO');
insert into "XuatChieu"("MaPhim","MaPhong","NgayChieu","ThoiGianChieu","MaDangPhim") values
('P004','PG06','11-27-2018','14:17','2DNO');
insert into "XuatChieu"("MaPhim","MaPhong","NgayChieu","ThoiGianChieu","MaDangPhim") values
('P004','PG06','11-27-2018','10:20','2DNO');