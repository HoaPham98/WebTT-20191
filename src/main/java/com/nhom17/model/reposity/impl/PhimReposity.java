package com.nhom17.model.reposity.impl;

import com.nhom17.model.dto.Phim;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.nhom17.util.JdbcTemplate;

public class PhimReposity extends CommonReposity<Phim> {

    public static String ID = "ID";
    public static String MA_PHIM = "MaPhim";
    public static String TEN_PHIM = "TenPhim";
    public static String QUOC_GIA = "QuocGia";
    public static String THOI_LUONG_PHIM = "ThoiLuongPhim";
    public static String NGAY_BAT_DAU = "NgayBatDau";
    public static String NGAY_KET_THUC = "NgayKetThuc";
    public static String POSTER_1_URL = "PosterURL1";
    public static String MO_TA_PHIM = "MotaPhim";
    public static String GHI_CHU = "GhiChu";
    public static String NHAN_PHIM = "NhanPhim";
    public static String IMDB_RANK = "IMDBrank";
    public static String IMDB_URL = "IMDBURL";
    public static String POSTER_2_URL = "PosterURL2";
    public static String DAO_DIEN = "DaoDien";
    public static String DIEN_VIEN = "DienVien";

    public ArrayList<Phim> getNowShowingMovies() {
        return JdbcTemplate.query("SELECT * FROM [dbo].[DanhSachPhimDangChieu]",createHandler());
    }

    public ArrayList<Phim> getUpComingMovies() {
        return JdbcTemplate.query("SELECT * FROM [dbo].[DanhSachPhimSapChieu]",createHandler());
    }

    public Phim getMovie(final String id) {
        return JdbcTemplate.singleQuery("SELECT * FROM [dbo].[Phim] WHERE MaPhim=?", new JdbcTemplate.PreparedStatementSetter() {
            @Override
            public void setValues(PreparedStatement pstmt) throws SQLException {
                pstmt.setString(1,id);
            }
        }, createHandler());
    }

    private JdbcTemplate.RowCallBackHandler<Phim> createHandler() {
        return new JdbcTemplate.RowCallBackHandler<Phim>() {
            @Override
            public Phim processRow(ResultSet rs) throws SQLException {
                Phim phim = new Phim();
                phim.setId(rs.getInt(ID));
                phim.setMaPhim(rs.getString(MA_PHIM));
                phim.setTenPhim(rs.getString(TEN_PHIM));
                phim.setQuocGia(rs.getString(QUOC_GIA));
                phim.setThoiLuongPhim(rs.getTime(THOI_LUONG_PHIM).getTime());
                phim.setNgayBatDau(rs.getDate(NGAY_BAT_DAU));
                phim.setNgayKetThuc(rs.getDate(NGAY_KET_THUC));
                String poster = rs.getString(POSTER_1_URL);
                if (poster == null){
                    poster = "/resources/images/m1.jpg";
                }
                phim.setPosterURL(poster);
                phim.setMotaPhim(rs.getString(MO_TA_PHIM));
                phim.setGhiChu(rs.getString(GHI_CHU));
                phim.setNhanPhim(rs.getString(NHAN_PHIM));
                phim.setImdbRank(rs.getFloat(IMDB_RANK));
                phim.setImdbURL(rs.getString(IMDB_URL));
                phim.setDaodien(rs.getString(DAO_DIEN));
                phim.setDienVien(rs.getString(DIEN_VIEN));

                return phim;
            }
        };
    }
}
