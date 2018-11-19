package com.nhom17.model.reposity.impl;

import com.nhom17.model.dto.Phim;
import com.nhom17.model.dto.XuatChieu;
import com.nhom17.util.JdbcTemplate;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class XuatChieuReposity extends CommonReposity<XuatChieu> {

    public final static String ID = "id";
    public final static String THOI_GIAN_CHIEU = "ThoiGianChieu";
    public final static String NGAY_CHIEU = "NgayChieu";
    public final static String MA_PHIM = "MaPhim";
    public final static String MA_DANG_PHIM = "MaDangPhim";
    public final static String MA_XUAT_CHIEU = "MaXuatChieu";
    public final static String MA_PHONG = "MaPhong";

    public ArrayList<XuatChieu> getByMovie(final Phim phim){
        return JdbcTemplate.query("SELECT * FROM [dbo].[XuatChieu] WHERE MaPhim = ?", new JdbcTemplate.PreparedStatementSetter() {
            @Override
            public void setValues(PreparedStatement pstmt) throws SQLException {
                pstmt.setString(1, phim.getMaPhim());
            }
        }, createHandler());
    }

    private JdbcTemplate.RowCallBackHandler<XuatChieu> createHandler() {
        return new JdbcTemplate.RowCallBackHandler<XuatChieu>() {
            @Override
            public XuatChieu processRow(ResultSet rs) throws SQLException {
                XuatChieu xuatChieu = new XuatChieu();
                xuatChieu.setId(rs.getInt(ID));
                xuatChieu.setMaDangPhim(rs.getString(MA_DANG_PHIM));
                xuatChieu.setMaPhim(rs.getString(MA_PHIM));
                xuatChieu.setMaPhong(rs.getString(MA_PHONG));
                xuatChieu.setMaXuatChieu(rs.getString(MA_XUAT_CHIEU));
                xuatChieu.setThoiGianChieu(rs.getString(THOI_GIAN_CHIEU));
                xuatChieu.setNgayChieu(rs.getDate(NGAY_CHIEU));

                return xuatChieu;
            }
        };
    }
}
