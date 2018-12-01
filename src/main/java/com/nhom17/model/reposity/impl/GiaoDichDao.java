package com.nhom17.model.reposity.impl;

import com.nhom17.model.dto.GiaoDich;
import com.nhom17.util.JdbcTemplate;

import java.sql.ResultSet;
import java.sql.SQLException;

public class GiaoDichDao {

    JdbcTemplate.RowCallBackHandler rowCallBackHandler() {
        return new JdbcTemplate.RowCallBackHandler() {
            @Override
            public GiaoDich processRow(ResultSet rs) throws SQLException {
                GiaoDich giaoDich = new GiaoDich();

                return giaoDich;
            }
        };
    }
}
