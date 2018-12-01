package com.nhom17.model.dto;

import com.nhom17.util.JdbcTemplate;

import java.sql.*;

public class ChiTietVe {
    private String phongChieu;
    private Time gioChieu;
    private Date ngayChieu;
    private String tenPhim;
    private String dangPhim;

    public String getPhongChieu() {
        return phongChieu;
    }

    public void setPhongChieu(String phongChieu) {
        this.phongChieu = phongChieu;
    }

    public Time getGioChieu() {
        return gioChieu;
    }

    public void setGioChieu(Time gioChieu) {
        this.gioChieu = gioChieu;
    }

    public Date getNgayChieu() {
        return ngayChieu;
    }

    public void setNgayChieu(Date ngayChieu) {
        this.ngayChieu = ngayChieu;
    }

    public String getTenPhim() {
        return tenPhim;
    }

    public void setTenPhim(String tenPhim) {
        this.tenPhim = tenPhim;
    }

    public String getDangPhim() {
        return dangPhim;
    }

    public void setDangPhim(String dangPhim) {
        this.dangPhim = dangPhim;
    }

    public static ChiTietVe getByXuatChieu(final String showtimeID) {
        String sql = "SELECT phim.TenPhim, phong.TenPhong, ThoiGianChieu, NgayChieu, MaDangPhim FROM [dbo].[Phim] phim, [dbo].[Phong] phong, [dbo].[XuatChieu] xc WHERE xc.MaXuatChieu = ? AND xc.MaPhim = phim.MaPhim AND xc.MaPhong = phong.MaPhong;";
        return JdbcTemplate.singleQuery(sql, new JdbcTemplate.PreparedStatementSetter() {
            @Override
            public void setValues(PreparedStatement pstmt) throws SQLException {
                pstmt.setString(1, showtimeID);
            }
        }, new JdbcTemplate.RowCallBackHandler<ChiTietVe>() {
            @Override
            public ChiTietVe processRow(ResultSet rs) throws SQLException {
                ChiTietVe chiTietVe = new ChiTietVe();
                chiTietVe.setTenPhim(rs.getNString("TenPhim"));
                chiTietVe.setPhongChieu(rs.getNString("TenPhong"));
                chiTietVe.setNgayChieu(rs.getDate("NgayChieu"));
                chiTietVe.setGioChieu(rs.getTime("ThoiGianChieu"));
                chiTietVe.setDangPhim(DangPhim.getDangPhim(rs.getString("MaDangPhim")).getTenDangPhim());

                return chiTietVe;
            }
        });
    }
}
