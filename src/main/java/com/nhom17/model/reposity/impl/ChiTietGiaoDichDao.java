package com.nhom17.model.reposity.impl;

import com.nhom17.model.dto.ChiTietGiaoDich;
import com.nhom17.util.JdbcTemplate;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ChiTietGiaoDichDao extends CommonDao<ChiTietGiaoDich> {

    private ChiTietGiaoDichDao() {
    }

    public static ChiTietGiaoDichDao createChiTietGiaoDichDao() {
        return new ChiTietGiaoDichDao();
    }


    public List<String> getMaGheByGiaoDich(final String maGiaoDich) {
        List<String> listMaGhe = new ArrayList<>();
        List<ChiTietGiaoDich> chiTietGiaoDichList = JdbcTemplate.query("SELECT * FROM [dbo].[ChiTietGiaoDich] WHERE MaGiaoDich = ?", new JdbcTemplate.PreparedStatementSetter() {
            @Override
            public void setValues(PreparedStatement pstmt) throws SQLException {
                pstmt.setString(1, maGiaoDich);
            }
        }, rowCallBackHandler());

        for(ChiTietGiaoDich chiTietGiaoDich: chiTietGiaoDichList) {
            listMaGhe.add(chiTietGiaoDich.getMaGhe());
        }

        return listMaGhe;
    }

    private JdbcTemplate.RowCallBackHandler<ChiTietGiaoDich> rowCallBackHandler() {
        return new JdbcTemplate.RowCallBackHandler<ChiTietGiaoDich>() {
            @Override
            public ChiTietGiaoDich processRow(ResultSet rs) throws SQLException {
                ChiTietGiaoDich chiTietGiaoDich = new ChiTietGiaoDich();
                chiTietGiaoDich.setId(rs.getInt("ID"));
                chiTietGiaoDich.setMaGhe(rs.getString("MaGhe"));
                chiTietGiaoDich.setMaGiaoDich(rs.getString("MaGiaoDich"));

                return chiTietGiaoDich;
            }
        };
    }
}
