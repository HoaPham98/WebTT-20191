package com.nhom17.model.dto;

import com.nhom17.util.JdbcTemplate;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DangPhim {
    private String maDangPhim;
    private String tenDangPhim;

    public static List<DangPhim> allDangPhim = getAllDangPhim();

    public DangPhim() {

    }

    public static DangPhim getDangPhim(String maDangPhim) {
        for (DangPhim dangPhim: allDangPhim) {
            if (dangPhim.getMaDangPhim().equals(maDangPhim)) {
                return dangPhim;
            }
        }
        return null;
    }

    public String getMaDangPhim() {
        return maDangPhim;
    }

    public void setMaDangPhim(String maDangPhim) {
        this.maDangPhim = maDangPhim;
    }

    public String getTenDangPhim() {
        return tenDangPhim;
    }

    public void setTenDangPhim(String tenDangPhim) {
        this.tenDangPhim = tenDangPhim;
    }

    public static List<DangPhim> getAllDangPhim() {
        List<DangPhim> types;
        types = JdbcTemplate.query("SELECT * FROM [dbo].[DangPhim]", new JdbcTemplate.RowCallBackHandler<DangPhim>() {
            @Override
            public DangPhim processRow(ResultSet rs) throws SQLException {
                DangPhim dangPhim = new DangPhim();
                dangPhim.setMaDangPhim(rs.getString("MaDangPhim"));
                dangPhim.setTenDangPhim(rs.getString("TenDangPhim"));

                return dangPhim;
            }
        });
        return types;
    }
}
