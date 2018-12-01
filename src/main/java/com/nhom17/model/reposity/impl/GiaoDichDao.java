package com.nhom17.model.reposity.impl;

import com.nhom17.model.dto.GiaoDich;
import com.nhom17.util.JdbcTemplate;

import java.sql.*;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;

public class GiaoDichDao extends CommonDao<GiaoDich> {

    private ChiTietGiaoDichDao chiTietGiaoDichDao;
    private GiaoDichDao() {
        chiTietGiaoDichDao = ChiTietGiaoDichDao.createChiTietGiaoDichDao();
    }

    public static GiaoDichDao createGiaoDichDao() {
        return new GiaoDichDao();
    }

    @Override
    public int add(final GiaoDich item) {
        String sql = "INSERT INTO [dbo].[GiaoDich] (NgayDat, GioDat, TongTien, NguoiDat, MaXuatChieu, IDTrangThaiGiaoDich) VALUES (?, ?, ?, ?, ?, ?);";
        int result =  JdbcTemplate.update(sql, new JdbcTemplate.PreparedStatementSetter() {
            @Override
            public void setValues(PreparedStatement pstmt) throws SQLException {
                pstmt.setDate(1, null);
                pstmt.setTime(2, null);
                pstmt.setInt(3, item.getTongTien());
                pstmt.setString(4, item.getNguoiDat());
                pstmt.setString(5, item.getMaXuatChieu());
                pstmt.setInt(6, item.getIdTrangThaiGiaodich());
            }
        });

        if (result > 0) {
            final GiaoDich giaoDich = getByID(result);
            JdbcTemplate.batch("INSERT INTO [dbo].[ChiTietGiaoDich] (MaGiaoDich, MaGhe) VALUES (?,?)", new JdbcTemplate.BatchPreparedStatementSetter() {
                @Override
                public void setValues(PreparedStatement pstmt, int i) throws SQLException {
                    pstmt.setString(1, giaoDich.getMaGiaoDich());
                    pstmt.setString(2, giaoDich.getListMaGhe().get(i));
                }

                @Override
                public int getBatchSize() {
                    return giaoDich.getListMaGhe().size();
                }
            });
        }

        return result;
    }

    @Override
    public int update(final GiaoDich item) {
        String sql = "UPDATE [dbo].[GiaoDich] SET NgayDat = ?, GioDat = ?, TongTien = ?, NguoiDat = ?, MaXuatChieu = ?, IDTrangThaiGiaoDich = ? WHERE MaGiaoDich = ?;";
        int result =  JdbcTemplate.update(sql, new JdbcTemplate.PreparedStatementSetter() {
            @Override
            public void setValues(PreparedStatement pstmt) throws SQLException {
                pstmt.setObject(1, item.getNgayDat());
                pstmt.setObject(2, item.getGioDat());
                pstmt.setInt(3, item.getTongTien());
                pstmt.setString(4, item.getNguoiDat());
                pstmt.setString(5, item.getMaXuatChieu());
                pstmt.setInt(6, item.getIdTrangThaiGiaodich());
                pstmt.setString(7, item.getMaGiaoDich());
            }
        });

        if (result > 0 && item.getIdTrangThaiGiaodich() == 2) {
            String sql2 = "UPDATE [dbo].[Ve] SET MaTrangThaiVe = 1 WHERE MaXuatChieu = ? AND MaGhe = ?;";
            JdbcTemplate.batch(sql2, new JdbcTemplate.BatchPreparedStatementSetter() {
                @Override
                public void setValues(PreparedStatement pstmt, int i) throws SQLException {
                    pstmt.setString(1, item.getMaXuatChieu());
                    pstmt.setString(2, item.getListMaGhe().get(i));
                }

                @Override
                public int getBatchSize() {
                    return item.getListMaGhe().size();
                }
            });
        }

        return result;
    }

    @Override
    public GiaoDich getOne(final String id) {
        return JdbcTemplate.singleQuery("SELECT * FROM [dbo].[GiaoDich] WHERE MaGiaoDich = ?;", new JdbcTemplate.PreparedStatementSetter() {
            @Override
            public void setValues(PreparedStatement pstmt) throws SQLException {
                pstmt.setString(1, id);
            }
        }, rowCallBackHandler());
    }

    public GiaoDich getByID(final int id) {
        return JdbcTemplate.singleQuery("SELECT * FROM [dbo].[GiaoDich] WHERE ID = ?;", new JdbcTemplate.PreparedStatementSetter() {
            @Override
            public void setValues(PreparedStatement pstmt) throws SQLException {
                pstmt.setInt(1, id);
            }
        }, rowCallBackHandler());
    }

    private JdbcTemplate.RowCallBackHandler<GiaoDich> rowCallBackHandler() {
        return new JdbcTemplate.RowCallBackHandler<GiaoDich>() {
            @Override
            public GiaoDich processRow(ResultSet rs) throws SQLException {
                GiaoDich giaoDich = new GiaoDich();

                giaoDich.setId(rs.getInt("ID"));
                giaoDich.setMaGiaoDich(rs.getString("MaGiaoDich"));
                giaoDich.setNgayDat(rs.getObject("NgayDat", LocalDate.class));
                giaoDich.setGioDat(rs.getObject("GioDat", LocalTime.class));
                giaoDich.setNguoiDat(rs.getString("NguoiDat"));
                giaoDich.setTongTien(rs.getInt("TongTien"));
                giaoDich.setMaXuatChieu(rs.getString("MaXuatChieu"));
                giaoDich.setIdTrangThaiGiaodich(rs.getInt("IDTrangThaiGiaoDich"));

                List<String> maGheList = chiTietGiaoDichDao.getMaGheByGiaoDich(giaoDich.getMaGiaoDich());
                giaoDich.setListMaGhe(maGheList);

                return giaoDich;
            }
        };
    }
}
