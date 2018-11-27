package com.nhom17.model.reposity.impl;



import com.nhom17.model.dto.ThanhVien;
import com.nhom17.util.JdbcTemplate;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ThanhVienDAO extends CommonDao<ThanhVien> {
    public static final String EMAIL = "Email";
    public static final String LOAI_THANH_VIEN = "LoaiTV";
    public static final String MAT_KHAU = "MatKhau";
    public static final String GIOI_TINH = "GioiTinh";
    public static final String SO_DIEN_THOAI = "SoDienThoai";
    public static final String TEN_DANG_NHAP = "TenDangNhap";
    public static final String NGAY_SINH = "NgaySinh";
    public static final String HO_TEN = "HoTen";
    public static final String DIA_CHI = "DiaChi";
    public static final String SO_DU = "SoDu";

    private ThanhVienDAO() {

    }

    private static ThanhVienDAO instance = new ThanhVienDAO();

    public static ThanhVienDAO getInstance() {
        return instance;
    }

    public void setInstance(ThanhVienDAO instance) {
        this.instance = instance;
    }

    public static ThanhVienDAO createThanhVienReposity() {
        return new ThanhVienDAO();
    }

    //Tim thanh vien theo ten dang nhap va mat khau
    public ThanhVien getByUserNamePass(final String username, final String pass) {
        return JdbcTemplate.singleQuery("SELECT * FROM [dbo].[ThanhVien] WHERE (TenDangNhap = ? OR Email = ?) AND MatKhau = ?", new JdbcTemplate.PreparedStatementSetter() {
            @Override
            public void setValues(PreparedStatement pstmt) throws SQLException {
                pstmt.setString(1, username);
                pstmt.setString(2, username);
                pstmt.setString(3, pass);
            }
        }, callBackHandler());
    }

    //Tim thanh vien theo ten dang nhap
    public ThanhVien getByUserName(final String username) {
        return JdbcTemplate.singleQuery("SELECT * FROM [dbo].[ThanhVien] WHERE TenDangNhap = ?", new JdbcTemplate.PreparedStatementSetter() {
            @Override
            public void setValues(PreparedStatement pstmt) throws SQLException {
                pstmt.setString(1, username);
            }
        }, callBackHandler());
    }

    //Tim thanh vien theo email
    public ThanhVien getByEmail(final String email) {
        return JdbcTemplate.singleQuery("SELECT * FROM [dbo].[ThanhVien] WHERE Email = ?", new JdbcTemplate.PreparedStatementSetter() {
            @Override
            public void setValues(PreparedStatement pstmt) throws SQLException {
                pstmt.setString(1, email);
            }
        }, callBackHandler());
    }

    //Them thanh vien
    public int addThanhVien(
            final String email,
            final String loaiTV,
            final String matKhau,
            final int gioiTinh,
            final String soDienThoai,
            final String tenDangNhap,
            final Date ngaySinh,
            final String hoTen,
            final String diaChi,
            final int soDu
    ) {
        return JdbcTemplate.update(
                "INSERT INTO ThanhVien (TenDangNhap, MatKhau, HoTen, NgaySinh, GioiTinh, DiaChi, SoDienThoai, Email, SoDu, LoaiTV) values " +
                "(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", new JdbcTemplate.PreparedStatementSetter() {
                    @Override
                    public void setValues(PreparedStatement pstmt) throws SQLException {
                        pstmt.setString(1, tenDangNhap);
                        pstmt.setString(2, matKhau);
                        pstmt.setString(3, hoTen);
                        pstmt.setDate(4, (java.sql.Date) ngaySinh);
                        pstmt.setInt(5, gioiTinh);
                        pstmt.setString(6, diaChi);
                        pstmt.setString(7, soDienThoai);
                        pstmt.setString(8, email);
                        pstmt.setInt(9, soDu);
                        pstmt.setString(10, loaiTV);

                    }
                });

    }



    private JdbcTemplate.RowCallBackHandler<ThanhVien> callBackHandler() {
        return new JdbcTemplate.RowCallBackHandler<ThanhVien>() {
            @Override
            public ThanhVien processRow(ResultSet rs) throws SQLException {
                ThanhVien thanhVien = new ThanhVien();
                thanhVien.setDiaChi(rs.getString(DIA_CHI));
                thanhVien.setEmail(rs.getString(EMAIL));
                thanhVien.setGioiTinh(rs.getInt(GIOI_TINH));
                thanhVien.setHoTen(rs.getString(HO_TEN));
                thanhVien.setLoaiTV(rs.getString(LOAI_THANH_VIEN));
                thanhVien.setMatKhau(rs.getString(MAT_KHAU));
                thanhVien.setNgaySinh(rs.getDate(NGAY_SINH));
                thanhVien.setSoDienThoai(rs.getString(SO_DIEN_THOAI));
                thanhVien.setSoDu(rs.getInt(SO_DU));
                thanhVien.setTenDangNhap(rs.getString(TEN_DANG_NHAP));
                return thanhVien;
            }
        };
    }

}
