package com.nhom17.model.dto;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;

public class GiaoDich {
    private String maGiaoDich;
    private LocalDate ngayDat;
    private LocalTime gioDat;
    private int tongTien;
    private String nguoiDat;
    private String maXuatChieu;
    private int idTrangThaiGiaodich;
    private int id;
    private List<String> listMaGhe;

    public GiaoDich() {

    }

    public String getMaGiaoDich() {
        return maGiaoDich;
    }

    public void setMaGiaoDich(String maGiaoDich) {
        this.maGiaoDich = maGiaoDich;
    }

    public LocalDate getNgayDat() {
        return ngayDat;
    }

    public void setNgayDat(LocalDate ngayDat) {
        this.ngayDat = ngayDat;
    }

    public LocalTime getGioDat() {
        return gioDat;
    }

    public void setGioDat(LocalTime gioDat) {
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

    public List<String> getListMaGhe() {
        return listMaGhe;
    }

    public void setListMaGhe(List<String> listMaGhe) {
        this.listMaGhe = listMaGhe;
    }
}
