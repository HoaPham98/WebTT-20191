package com.nhom17.model.reposity.impl;

import com.nhom17.model.dto.Phim;
import com.nhom17.model.dto.TheLoai;
import com.nhom17.util.JdbcTemplate;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class TheLoaiDao extends CommonDao<TheLoai> {

    public static final String ID = "id";
    public static final String MA_THE_LOAI = "MaTheLoai";
    public static final String TEN_THE_LOAI = "TenTheLoai";

    private TheLoaiDao() {
    }

    public static TheLoaiDao createTheLoaiReposity() {
        return new TheLoaiDao();
    }


    @Override
    public ArrayList<TheLoai> getall() {
        return JdbcTemplate.query("SELECT * FROM [dbo].[TheLoai]", createHandler());
    }

    public ArrayList<TheLoai> getByMovie(final Phim phim) {
        return JdbcTemplate.query("SELECT TenTheLoai FROM Phim natural join TheLoaiPhim NATURAL JOIN TheLoai WHERE MaPhim = ?", new JdbcTemplate.PreparedStatementSetter() {
            @Override
            public void setValues(PreparedStatement pstmt) throws SQLException {
                pstmt.setString(1, phim.getMaPhim());
            }
        }, createHandler());
    }

    private JdbcTemplate.RowCallBackHandler<TheLoai> createHandler() {
        return new JdbcTemplate.RowCallBackHandler<TheLoai>() {
            @Override
            public TheLoai processRow(ResultSet rs) throws SQLException {
                TheLoai theLoai = new TheLoai();
                theLoai.setId(rs.getInt(ID));
                theLoai.setTenTheLoai(rs.getString(TEN_THE_LOAI));
                theLoai.setMaTheLoai(rs.getString(MA_THE_LOAI));

                return theLoai;
            }
        };
    }
}
