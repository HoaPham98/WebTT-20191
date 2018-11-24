package com.nhom17.model.dto;

import com.nhom17.util.JdbcTemplate;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class LoaiGhe {
    private String maLoaiGhe;
    private String tenLoaiGhe;

    public static Map<String, String> allLoaiGhe = getAllLoaiGhe();

    public LoaiGhe() {

    }

    public String getMaLoaiGhe() {
        return maLoaiGhe;
    }

    public void setMaLoaiGhe(String maLoaiGhe) {
        this.maLoaiGhe = maLoaiGhe;
    }

    public String getTenLoaiGhe() {
        return tenLoaiGhe;
    }

    public void setTenLoaiGhe(String tenLoaiGhe) {
        this.tenLoaiGhe = tenLoaiGhe;
    }

    public static Map<String, String> getAllLoaiGhe() {
        final Map<String, String> map = new HashMap<>();
        JdbcTemplate.query("SELECT * FROM [dbo].[LoaiGhe]", new JdbcTemplate.RowCallBackHandler<LoaiGhe>() {
            @Override
            public LoaiGhe processRow(ResultSet rs) throws SQLException {
                String id = rs.getString("MaLoaiGhe");
                String name = rs.getString("TenLoaiGhe");

                map.put(id, name);
                return null;
            }
        });

        return map;
    }
}
