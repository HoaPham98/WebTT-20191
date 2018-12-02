package com.nhom17.model.dto;

import java.util.Date;

public class ThongKe {
    private Date ngayChieu;
    private int soLuongGheCungCap;
    private long tongThu;
    private int soLuongGheDaBan;
    private String maPhim;
    private int soLuongXuatChieu;
    private int id;

    public ThongKe() {

    }

    public Date getNgayChieu() {
        return ngayChieu;
    }

    public void setNgayChieu(Date ngayChieu) {
        this.ngayChieu = ngayChieu;
    }

    public int getSoLuongGheCungCap() {
        return soLuongGheCungCap;
    }

    public void setSoLuongGheCungCap(int soLuongGheCungCap) {
        this.soLuongGheCungCap = soLuongGheCungCap;
    }

    public long getTongThu() {
        return tongThu;
    }

    public void setTongThu(long tongThu) {
        this.tongThu = tongThu;
    }

    public int getSoLuongGheDaBan() {
        return soLuongGheDaBan;
    }

    public void setSoLuongGheDaBan(int soLuongGheDaBan) {
        this.soLuongGheDaBan = soLuongGheDaBan;
    }

    public String getMaPhim() {
        return maPhim;
    }

    public void setMaPhim(String maPhim) {
        this.maPhim = maPhim;
    }

    public int getSoLuongXuatChieu() {
        return soLuongXuatChieu;
    }

    public void setSoLuongXuatChieu(int soLuongXuatChieu) {
        this.soLuongXuatChieu = soLuongXuatChieu;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
}
