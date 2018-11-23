package com.nhom17.model.dto;

import java.sql.Time;
import java.util.Date;
import java.util.List;

public class Phim {
    private String maPhim;
    private String imdbURL;
    private Time thoiLuongPhim;
    private String nhanPhim;
    private String posterURL;
    private String motaPhim;
    private String tenPhim;
    private float imdbRank;
    private Date ngayBatDau;
    private int id;
    private Date ngayKetThuc;
    private String ghiChu;
    private String quocGia;
    private String daodien;
    private String dienVien;
    private String poster2URL;
    private List<TheLoai> theLoaiList;

    public Phim() {

    }

    public String getMaPhim() {
        return maPhim;
    }

    public void setMaPhim(String maPhim) {
        this.maPhim = maPhim;
    }

    public String getImdbURL() {
        return imdbURL;
    }

    public void setImdbURL(String imdbURL) {
        this.imdbURL = imdbURL;
    }

    public Time getThoiLuongPhim() {
        return thoiLuongPhim;
    }

    public void setThoiLuongPhim(Time thoiLuongPhim) {
        this.thoiLuongPhim = thoiLuongPhim;
    }

    public String getNhanPhim() {
        return nhanPhim;
    }

    public void setNhanPhim(String nhanPhim) {
        this.nhanPhim = nhanPhim;
    }

    public String getPosterURL() {
        return posterURL;
    }

    public void setPosterURL(String c){
            this.posterURL = c;
    }

    public String getMotaPhim() {
        return motaPhim;
    }

    public void setMotaPhim(String motaPhim) {
        this.motaPhim = motaPhim;
    }

    public String getTenPhim() {
        return tenPhim;
    }

    public void setTenPhim(String tenPhim) {
        this.tenPhim = tenPhim;
    }

    public float getImdbRank() {
        return imdbRank;
    }

    public void setImdbRank(float imdbRank) {
        this.imdbRank = imdbRank;
    }

    public Date getNgayBatDau() {
        return ngayBatDau;
    }

    public void setNgayBatDau(Date ngayBatDau) {
        this.ngayBatDau = ngayBatDau;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getNgayKetThuc() {
        return ngayKetThuc;
    }

    public void setNgayKetThuc(Date ngayKetThuc) {
        this.ngayKetThuc = ngayKetThuc;
    }

    public String getGhiChu() {
        return ghiChu;
    }

    public void setGhiChu(String ghiChu) {
        this.ghiChu = ghiChu;
    }

    public String getQuocGia() {
        return quocGia;
    }

    public void setQuocGia(String quocGia) {
        this.quocGia = quocGia;
    }

    public String getDaodien() {
        return daodien;
    }

    public void setDaodien(String daodien) {
        this.daodien = daodien;
    }

    public String getDienVien() {
        return dienVien;
    }

    public void setDienVien(String dienVien) {
        this.dienVien = dienVien;
    }

    public String getPoster2URL() {
        return poster2URL;
    }

    public void setPoster2URL(String poster2URL) {
        this.poster2URL = poster2URL;
    }

    public List<TheLoai> getTheLoaiList() {
        return theLoaiList;
    }

    public void setTheLoaiList(List<TheLoai> theLoaiList) {
        this.theLoaiList = theLoaiList;
    }
}
