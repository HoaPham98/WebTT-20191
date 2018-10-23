# CinemaDatabase  

## Update

#### có 2 procedure nữa t tạo ra.
* 1 là rutGonVe.
    bởi vì bảng vé sẽ rất nhanh đầy và những thông tin liên quan đến chi tiết vé như mã vé, mã ghế là không cần thiết. do đó t tạo ra bảng VeRutGon, mục đích là giảm số record, bảng Vé vẫn sẽ hoạt động như bình thường. sẽ lưu thông tin chi tiết và trạng thái các vé. Sau khi xuất chiếu được chiếu xong. Mọi thông tin về vé mà xuất chiếu đó sinh ra sẽ bị xóa đi. và được tính toán thu gọn lại vào bảng VeRutGon ( với mỗi xuất chiếu sẽ chứa các thông tin về số ghế đã bán, chưa bán và doanh thu của từng loại ghế ) . Cách sử dụng là chỉ cần đặt thời gian 1 khoảng thời gian nào đó chạy hàm rutGonVe là được. -> giải quyết được vấn đề cô giáo nói là dữ liệu quá lớn sau một hai tháng. ( giảm được tầm 100 lần gì đó)
* 2 là thongKePhim
    hàm này sẽ tính toán các thông tin dựa vào bảng VeRutGon, đưa ra các thông tin thống kê về số lượng xuất chiếu , số lượng ghế đã bán , đã cung cấp và Doanh thu của từng bộ phim theo ngày. khi cần, backend sẽ truy xuất dữ liệu dựa trên bảng thống kê này để đưa ra Doanh thu theo ngày, theo tháng, doanh thu theo bộ phim, tỷ lệ ghế bán được, ... Hàm này cũng như hàm rutGonVe, cần được gọi sau một thời gian mặc định nào đó để tính doanh thu. Chú ý là trong hàm thongKeVe, t đã gọi hàm rutGonVe rồi. nên chỉ cần gọi hàm thongKePhim thôi.

Ví dụ mỗi 1h sáng sẽ chạy hàm này.
    
```
exec thongKePhim;
```

* 3 là sửa các thông tin về giao dịch, và chi tiết giao dịch thay cho VeOnline. cái này thì ko có gì mới. có một đặc điểm cần lưu ý đó là một giao dịch sẽ chỉ đặt được nhiều ghế trong một xuất chiếu phim.

## Getting Started

Mô hình cơ sở dữ liệu quản lý hệ thống rạp chiếu phim

### Installing

Có 2 file sql hoặc bak. dùng 1 trong 2 file để restore lại database

## Structure

### ER Diagram

![alt text](https://i.imgur.com/HGqsL8y.jpg)

Cấu trúc một số key:
MaPhim : P + ID ; ex : P001,
MaXuatChieu : XC + ID ; ex : XC0001
MaPhong : PG + ID ; PG01
MaGhe : MaPhong + X + Y + Z ;  X : MaLoaiGhe , Y : MaHang  , Z : MaCot ; ex ; PG01NA01
MaVe : MaPhim + MaDangPhim + MaXuatChieu + MaGhe ;  ex : P0012DNOXC0015PG01NA01


### View

![alt text](https://bitbucket.org/HoaPhamHust/nmcnpm_104412_nhom17/raw/4ca931b3f6c3a797f9b294ed08223272b43257a2/database/report/viewdiagram.png)

## Deployment

#### Mẫu insert xuất chiếu: 
```
insert into "XuatChieu"("MaPhim","MaPhong","NgayChieu","ThoiGianChieu","MaDangPhim") values
('P001','PG01','10-7-2018','20:15','2D');
```
Khi insert xuất chiếu, một danh sách vé trống sẽ được sinh ra theo phòng và ghế. → không cần insert vé.

#### Mẫu deletexuất chiếu
chú ý là khi xóa xuất chiếu sẽ xóa hết tất cả các vé được sinh ra từ xuất chiếu :
```

delete from "XuatChieu"
where "MaPhim" = 'P001';
```
#### Mẫu insert phòng
```

insert into "Phong"("TenPhong","SoLuongGheMoiDay","SoLuongGhe","TrangThaiPhong") values 
('Phòng 1',16,200,'Tốt');
```
Khi thêm một phòng mới, một danh sách các ghế được sinh ra tự động từ thông tin về số lượng ghế và số lượng ghế mỗi dãy theo cấu trúc  

![alt text](https://bitbucket.org/HoaPhamHust/nmcnpm_104412_nhom17/raw/4ca931b3f6c3a797f9b294ed08223272b43257a2/database/report/so_do_phong.png)

#### Mẫu delete Phòng
Khi delete phòng : danh sách ghế , danh sách xuất chiếu và vé sử dụng phòng cũng sẽ bị xóa
```

Delete from Phong
Where Phong.MaPhong  = ‘P001’
```

### Một số function
example

```

select dbo.getMaGia('XC0001','PG01NA01');
select dbo.getMaVe('XC0001','PG01NA01');
select * from dbo.searchLichChieu_TheoPhim_TheoNgay('P001','20181007');
select * from dbo.searchLichChieu_TheoPhim('P001');
select * from dbo.searchLichChieu_TheoNgay('20181007');
```

#### 


## Built With

* Microsoft SQL Server

## Authors

* **Ngoc Jr** - *Initial work* - [PurpleBooth](https://github.com/ngocjr7)

See also the list of [contributors]() who participated in this project.

## License

This project is licensed under the LAO License - see the [LAOLICENSE.md](LICENSE.md) file for details

## Acknowledgments

