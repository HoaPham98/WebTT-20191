package com.nhom17.model.reposity.impl;

import com.nhom17.model.dto.Ghe;
import com.nhom17.model.dto.Ve;
import com.nhom17.util.JdbcTemplate;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class VeDAO extends CommonDao<Ve> {
    public static final String MA_XUAT_CHIEU = "MaXuatChieu";
    public static final String MA_GHE = "MaGhe";
    public static final String MA_VE = "MaVe";
    public static final String MA_GIA = "MaGia";
    public static final String MA_TRANG_THAI_VE = "MaTrangThaiVe";

    private VeDAO() {
    }

    public static VeDAO createVeReposity() {
        return new VeDAO();
    }

    public ArrayList<Ve> getVeByMaXCMaGhe(final String maXuatChieu, final String maGhe) {
        return JdbcTemplate.query("SELECT [dbo].getMaVe(\'?\',\'?\')", new JdbcTemplate.PreparedStatementSetter() {
            @Override
            public void setValues(PreparedStatement pstmt) throws SQLException {
                pstmt.setString(1, maXuatChieu );
                pstmt.setString(2, maGhe );
            }
        }, callBackHandler());
    }

    private JdbcTemplate.RowCallBackHandler<Ve> callBackHandler() {
        return new JdbcTemplate.RowCallBackHandler<Ve>() {
            @Override
            public Ve processRow(ResultSet rs) throws SQLException {
                Ve ve = new Ve();
                ve.setMaXuatChieu(rs.getString(MA_XUAT_CHIEU));
                ve.setMaGhe(rs.getString(MA_GHE));
                ve.setMaVe(rs.getString(MA_VE));
                ve.setMaGia(rs.getString(MA_GIA));
                ve.setMaTrangThaiVe(rs.getInt(MA_TRANG_THAI_VE));
                return ve;
            }
        };
    }
}
