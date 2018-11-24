package com.nhom17.model.dto;

import java.util.List;

public class Phong {
    private String maPhong;
    private int soLuongGhe;
    private String tenPhong;
    private int soLuongGheMoiDay;
    private int id;
    private String trangThaiPhong;

    private List<HangGhe> hangGheList;

    public Phong() {

    }

    public String getMaPhong() {
        return maPhong;
    }

    public void setMaPhong(String maPhong) {
        this.maPhong = maPhong;
    }

    public int getSoLuongGhe() {
        return soLuongGhe;
    }

    public void setSoLuongGhe(int soLuongGhe) {
        this.soLuongGhe = soLuongGhe;
    }

    public String getTenPhong() {
        return tenPhong;
    }

    public void setTenPhong(String tenPhong) {
        this.tenPhong = tenPhong;
    }

    public int getSoLuongGheMoiDay() {
        return soLuongGheMoiDay;
    }

    public void setSoLuongGheMoiDay(int soLuongGheMoiDay) {
        this.soLuongGheMoiDay = soLuongGheMoiDay;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTrangThaiPhong() {
        return trangThaiPhong;
    }

    public void setTrangThaiPhong(String trangThaiPhong) {
        this.trangThaiPhong = trangThaiPhong;
    }

    public List<HangGhe> getHangGheList() {
        return hangGheList;
    }

    public void setHangGheList(List<HangGhe> hangGheList) {
        this.hangGheList = hangGheList;
    }
}
