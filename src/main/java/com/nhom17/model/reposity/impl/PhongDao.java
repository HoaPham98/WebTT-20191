package com.nhom17.model.reposity.impl;

import com.nhom17.model.dto.Ghe;
import com.nhom17.model.dto.HangGhe;
import com.nhom17.model.dto.Phong;
import com.nhom17.util.JdbcTemplate;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
    public Phong getOne(final String id) {
        return JdbcTemplate.singleQuery("SELECT * FROM [dbo].[Phong] WHERE MaPhong = ?", new JdbcTemplate.PreparedStatementSetter() {
            @Override
            public void setValues(PreparedStatement pstmt) throws SQLException {
                pstmt.setString(1, id);
            }
        }, createHandler());
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

                List<Ghe> gheList = GheDao.createGheReposity().getByRoom(phong);
                Map<String, List<Ghe>> map = new HashMap<>();
                for (Ghe ghe: gheList) {
                    if (map.get(ghe.getHang()) == null) {
                        List<Ghe> gheList1 = new ArrayList<>();
                        map.put(ghe.getHang(), gheList1);
                    }
                    map.get(ghe.getHang()).add(ghe);
                }

                List<HangGhe> hangGheList = new ArrayList<>();

                for (Map.Entry<String, List<Ghe>> entry: map.entrySet()) {
                    HangGhe hangGhe = new HangGhe();
                    hangGhe.setHang(entry.getKey());
                    hangGhe.setGheList(entry.getValue());

                    if (hangGhe.getGheList().get(0).getIdGhe().startsWith("SW")) {
                        hangGhe.setGheDoi(true);
                    }

                    hangGheList.add(hangGhe);
                }

                phong.setHangGheList(hangGheList);

                return phong;
            }
        };
    }
}
