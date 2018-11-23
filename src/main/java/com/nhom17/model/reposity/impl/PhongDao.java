package com.nhom17.model.reposity.impl;

import com.nhom17.model.dto.Phong;
import com.nhom17.util.JdbcTemplate;

import java.sql.ResultSet;
import java.sql.SQLException;

public class PhongDao extends CommonDao<Phong> {

    public final static String ID = "id";
    public final static String MA_PHONG = "MaPhong";
    public final static String TEN_PHONG = "TenPhong";
    public final static String SO_LUONG_GHE_MOI_DAY = "SoLuongGheMoiDay";
    public final static String SO_LUONG_GHE = "SoLuongGhe";
    public final static String TRANG_THAI_PHONG = "TrangThaiPhong";

    private PhongDao() {
    }

    public static PhongDao createPhongReposity() {
        return new PhongDao();
    }

    @Override
    public Phong getOne(String id) {
        return null;
    }

    private JdbcTemplate.RowCallBackHandler<Phong> createHandler() {
        return new JdbcTemplate.RowCallBackHandler<Phong>() {
            @Override
            public Phong processRow(ResultSet rs) throws SQLException {
                Phong phong = new Phong();
                phong.setId(rs.getInt(ID));
                phong.setMaPhong(rs.getString(MA_PHONG));
                phong.setSoLuongGhe(rs.getInt(SO_LUONG_GHE));
                phong.setSoLuongGheMoiDay(rs.getInt(SO_LUONG_GHE_MOI_DAY));
                phong.setTenPhong(rs.getString(TEN_PHONG));
                phong.setTrangThaiPhong(rs.getString(TRANG_THAI_PHONG));

                return phong;
            }
        };
    }
}
