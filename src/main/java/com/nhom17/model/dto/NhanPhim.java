package com.nhom17.model.dto;

import com.nhom17.util.JdbcTemplate;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class NhanPhim {
    private String maNhanPhim;

    public static List<NhanPhim> allNhanPhim = getAllNhanPhim();

    public NhanPhim(){

    }

    public static NhanPhim getNhanPhim(String maNhanPhim) {
        for (NhanPhim dangPhim: allNhanPhim) {
            if (dangPhim.getMaNhanPhim().equals(maNhanPhim)) {
                return dangPhim;
            }
        }
        return null;
    }

    public String getMaNhanPhim() {
        return maNhanPhim;
    }

    public void setMaNhanPhim(String maNhanPhim) {
        this.maNhanPhim = maNhanPhim;
    }

    public static List<NhanPhim> getAllNhanPhim() {
        ArrayList<NhanPhim> types = new ArrayList<>();
        types = JdbcTemplate.query("SELECT * FROM [dbo].[NhanPhim]", new JdbcTemplate.RowCallBackHandler<NhanPhim>() {
            @Override
            public NhanPhim processRow(ResultSet rs) throws SQLException {
                NhanPhim nhanPhim = new NhanPhim();
                nhanPhim.setMaNhanPhim(rs.getString(0));

                return nhanPhim;
            }
        });
        return types;
    }
}
