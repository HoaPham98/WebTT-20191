package com.nhom17.model.dto;

public class Ghe {
    private String maGhe;
    private String maLoaiGhe;
    private String maPhong;
    private String idGhe;
    private String tinhTrangGhe;
    private String hang;
    private int cot;
    private String tenLoaiGhe;

    public Ghe() {

    }

    public String getMaGhe() {
        return maGhe;
    }

    public void setMaGhe(String maGhe) {
        this.maGhe = maGhe;
    }

    public String getMaLoaiGhe() {
        return maLoaiGhe;
    }

    public void setMaLoaiGhe(String maLoaiGhe) {
        this.maLoaiGhe = maLoaiGhe;
        this.tenLoaiGhe = LoaiGhe.allLoaiGhe.get(maLoaiGhe);
    }

    public String getMaPhong() {
        return maPhong;
    }

    public void setMaPhong(String maPhong) {
        this.maPhong = maPhong;
    }

    public String getIdGhe() {
        return idGhe;
    }

    public void setIdGhe(String idGhe) {
        this.idGhe = idGhe;
        this.hang = idGhe.substring(idGhe.length() - 3, idGhe.length() - 2);
        this.cot = Integer.parseInt(idGhe.substring(idGhe.length() - 2));
    }

    public String getTinhTrangGhe() {
        return tinhTrangGhe;
    }

    public void setTinhTrangGhe(String tinhTrangGhe) {
        this.tinhTrangGhe = tinhTrangGhe;
    }

    public String getHang() {
        return hang;
    }

    public int getCot() {
        return cot;
    }
}

