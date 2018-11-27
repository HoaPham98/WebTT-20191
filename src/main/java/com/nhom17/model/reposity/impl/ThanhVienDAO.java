package com.nhom17.model.reposity.impl;



import com.nhom17.model.dto.ThanhVien;
import com.nhom17.util.JdbcTemplate;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
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
        return JdbcTemplate.query("SELECT * FROM [dbo].[ThanhVien] WHERE TenDangNhap = ? " +
                "AND MatKhau =?", new JdbcTemplate.PreparedStatementSetter() {
            @Override
            public void setValues(PreparedStatement pstmt) throws SQLException {
                pstmt.setString(1, username);
                pstmt.setString(2, pass);
            }
        }, callBackHandler()).get(0);
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
