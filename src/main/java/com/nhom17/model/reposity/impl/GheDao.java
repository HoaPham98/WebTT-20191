package com.nhom17.model.reposity.impl;

import com.nhom17.model.dto.Ghe;
import com.nhom17.model.dto.Phong;
import com.nhom17.util.JdbcTemplate;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class GheDao extends CommonDao<Ghe> {

    public static final String ID_GHE = "IDGhe";
    public static final String MA_GHE = "MaGhe";
    public static final String MA_PHONG = "MaPhong";
    public static final String MA_LOAI_GHE = "MaLoaiGhe";
    public static final String TINH_TRANG_GHE = "TinhTrangGhe";

    private GheDao() {
    }

    public static GheDao createGheReposity() {
        return new GheDao();
    }

    public List<Ghe> getByRoom(final Phong phong) {
        return JdbcTemplate.query("SELECT * FROM [dbo].[Ghe] WHERE MaPhong = ?", new JdbcTemplate.PreparedStatementSetter() {
            @Override
            public void setValues(PreparedStatement pstmt) throws SQLException {
                pstmt.setString(1, phong.getMaPhong());
            }
        }, callBackHandler());
    }

    public List<Ghe> getSoldByXuatChieu(final String maXuatChieu) {
        return JdbcTemplate.query("SELECT * FROM [dbo].[Ve]" +
                "WHERE MaXuatChieu = ? AND NOT MaTrangThaiVe = 0", new JdbcTemplate.PreparedStatementSetter() {
            @Override
            public void setValues(PreparedStatement pstmt) throws SQLException {
                pstmt.setString(1, maXuatChieu );
            }
        }, callBackHandler());
    }



    private JdbcTemplate.RowCallBackHandler<Ghe> callBackHandler() {
        return new JdbcTemplate.RowCallBackHandler<Ghe>() {
            @Override
            public Ghe processRow(ResultSet rs) throws SQLException {
                Ghe ghe = new Ghe();
                ghe.setIdGhe(rs.getString(ID_GHE));
                ghe.setMaGhe(rs.getString(MA_GHE));
                ghe.setMaPhong(rs.getString(MA_PHONG));
                ghe.setMaLoaiGhe(rs.getString(MA_LOAI_GHE));
                ghe.setTinhTrangGhe(rs.getString(TINH_TRANG_GHE));

                return ghe;
            }
        };
    }
}
