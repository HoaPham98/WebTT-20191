package dto;

import java.sql.Time;
import java.util.Date;

public class GiaoDich {
    private String maGiaoDich;
    private Date ngayDat;
    private Time gioDat;
    private int tongTien;
    private String nguoiDat;
    private String maXuatChieu;
    private int idTrangThaiGiaodich;
    private int id;

    public GiaoDich() {

    }

    public String getMaGiaoDich() {
        return maGiaoDich;
    }

    public void setMaGiaoDich(String maGiaoDich) {
        this.maGiaoDich = maGiaoDich;
    }

    public Date getNgayDat() {
        return ngayDat;
    }

    public void setNgayDat(Date ngayDat) {
        this.ngayDat = ngayDat;
    }

    public Time getGioDat() {
        return gioDat;
    }

    public void setGioDat(Time gioDat) {
        this.gioDat = gioDat;
    }

    public int getTongTien() {
        return tongTien;
    }

    public void setTongTien(int tongTien) {
        this.tongTien = tongTien;
    }

    public String getNguoiDat() {
        return nguoiDat;
    }

    public void setNguoiDat(String nguoiDat) {
        this.nguoiDat = nguoiDat;
    }

    public String getMaXuatChieu() {
        return maXuatChieu;
    }

    public void setMaXuatChieu(String maXuatChieu) {
        this.maXuatChieu = maXuatChieu;
    }

    public int getIdTrangThaiGiaodich() {
        return idTrangThaiGiaodich;
    }

    public void setIdTrangThaiGiaodich(int idTrangThaiGiaodich) {
        this.idTrangThaiGiaodich = idTrangThaiGiaodich;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
}
