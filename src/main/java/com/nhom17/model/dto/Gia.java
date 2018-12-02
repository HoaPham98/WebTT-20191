package com.nhom17.model.dto;

import com.nhom17.util.JdbcTemplate;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Gia {
    private String maGia;
    private int gia;
    private String maLoaiGhe;
    private String maDangPhim;
    private int id;

    public static Map<String, Map<String, Integer>> giaVe = getAllGiaVe();

    public Gia() {

    }

    public String getMaGia() {
        return maGia;
    }

    public void setMaGia(String maGia) {
        this.maGia = maGia;
    }

    public int getGia() {
        return gia;
    }

    public void setGia(int gia) {
        this.gia = gia;
    }

    public String getMaLoaiGhe() {
        return maLoaiGhe;
    }

    public void setMaLoaiGhe(String maLoaiGhe) {
        this.maLoaiGhe = maLoaiGhe;
    }

    public String getMaDangPhim() {
        return maDangPhim;
    }

    public void setMaDangPhim(String maDangPhim) {
        this.maDangPhim = maDangPhim;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public static Map<String, Map<String, Integer>> getAllGiaVe() {
        final Map<String, Map<String, Integer>> map = new HashMap<>();
        List<Gia> gias = JdbcTemplate.query("SELECT * FROM [dbo].[Gia]", new JdbcTemplate.RowCallBackHandler<Gia>() {
            @Override
            public Gia processRow(ResultSet rs) throws SQLException {
                Gia gia = new Gia();
                gia.setMaDangPhim(rs.getString("MaDangPhim"));
                gia.setGia(rs.getInt("Gia"));
                gia.setMaLoaiGhe(rs.getString("MaLoaiGhe"));

                return gia;
            }
        });

        List<DangPhim> dangPhims = DangPhim.allDangPhim;
        for (DangPhim type: dangPhims) {
            map.put(type.getMaDangPhim(), new HashMap<String, Integer>());
        }

        for (Gia gia: gias) {
            map.get(gia.getMaDangPhim()).put(gia.getMaLoaiGhe(), gia.getGia());
        }

        return map;
    }
}
