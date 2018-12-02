package com.nhom17.model.reposity.impl;

import com.nhom17.model.dto.Ve;
import com.nhom17.util.JdbcTemplate;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

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

    public Ve getVeByMaXCMaGhe(final String maXuatChieu, final String maGhe) {
        return JdbcTemplate.singleQuery("SELECT * FROM [dbo].[Ve] WHERE MaXuatChieu = ? AND MaGhe = ?", new JdbcTemplate.PreparedStatementSetter() {
            @Override
            public void setValues(PreparedStatement pstmt) throws SQLException {
                pstmt.setString(1, maXuatChieu );
                pstmt.setString(2, maGhe );
            }
        }, callBackHandler());
    }

    @Override
    public int update(final Ve item) {
        return JdbcTemplate.update("UPDATE [dbo].[Ve] SET MaGia = ?, MaXuatChieu = ?, MaGhe = ?, MaTrangThaiVe = ? WHERE MaVe = ?", new JdbcTemplate.PreparedStatementSetter() {
            @Override
            public void setValues(PreparedStatement pstmt) throws SQLException {
                pstmt.setString(1, item.getMaGia());
                pstmt.setString(2, item.getMaXuatChieu());
                pstmt.setString(3, item.getMaGhe());
                pstmt.setInt(4, item.getMaTrangThaiVe());
                pstmt.setString(5, item.getMaVe());
            }
        });
    }

    public List<Ve> getByShowTimeID(final String showtimeID) {
        return JdbcTemplate.query("SELECT * FROM [dbo].[Ve] WHERE MaXuatChieu = ?", new JdbcTemplate.PreparedStatementSetter() {
            @Override
            public void setValues(PreparedStatement pstmt) throws SQLException {
                pstmt.setString(1, showtimeID);
            }
        }, callBackHandler());
    }

    public int[] update(final List<Ve> items) {
        return JdbcTemplate.batch("UPDATE [dbo].[Ve] SET MaGia = ?, MaXuatChieu = ?, MaGhe = ?, MaTrangThaiVe = ? WHERE MaVe = ?", new JdbcTemplate.BatchPreparedStatementSetter() {
            @Override
            public void setValues(PreparedStatement pstmt, int i) throws SQLException {
                Ve item = items.get(i);
                pstmt.setString(1, item.getMaGia());
                pstmt.setString(2, item.getMaXuatChieu());
                pstmt.setString(3, item.getMaGhe());
                pstmt.setInt(4, item.getMaTrangThaiVe());
                pstmt.setString(5, item.getMaVe());
            }

            @Override
            public int getBatchSize() {
                return items.size();
            }
        });
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
