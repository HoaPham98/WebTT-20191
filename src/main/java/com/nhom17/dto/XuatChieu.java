package com.nhom17.dto;

import java.util.Date;

public class XuatChieu {
    private String maXuatChieu;
    private String thoiGianChieu;
    private Date ngayChieu;
    private String maPhim;
    private String maPhong;
    private int id;
    private  String maDangPhim;

    public XuatChieu(){

    }
    public String getMaXuatChieu(){
        return maXuatChieu;
    }

    public void setMaXuatChieu(String maXuatChieu) {
        this.maXuatChieu = maXuatChieu;
    }

    public String getThoiGianChieu() {
        return thoiGianChieu;
    }

    public void setThoiGianChieu(String thoiGianChieu) {
        this.thoiGianChieu = thoiGianChieu;
    }

    public Date getNgayChieu() {
        return ngayChieu;
    }

    public void setNgayChieu(Date ngayChieu) {
        this.ngayChieu = ngayChieu;
    }

    public String getMaPhim() {
        return maPhim;
    }

    public void setMaPhim(String maPhim) {
        this.maPhim = maPhim;
    }

    public String getMaPhong() {
        return maPhong;
    }

    public void setMaPhong(String maPhong) {
        this.maPhong = maPhong;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMaDangPhim() {
        return maDangPhim;
    }

    public void setMaDangPhim(String maDangPhim) {
        this.maDangPhim = maDangPhim;
    }
}
