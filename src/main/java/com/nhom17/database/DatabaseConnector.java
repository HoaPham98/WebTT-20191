package com.nhom17.database;

import com.nhom17.model.dto.Phim;

import java.sql.*;
import java.util.ArrayList;

public class DatabaseConnector {

    static final String DATABASE_NAME = "movie";
    static final String USERNAME = "MOVIE";
    static final String PASSWORD = "1";

    private static DatabaseConnector instance = new DatabaseConnector();

    public Connection getConnection() {
        try {
            connection = connection == null? DriverManager.getConnection(getConnectionUrl()) : connection;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return connection;
    }

    private Connection connection;

    static {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    private DatabaseConnector() {

    }

    public static DatabaseConnector getInstance() {
        return instance;
    }

    static String getConnectionUrl() {
        return "jdbc:sqlserver://localhost:1433;" +
                "databaseName=" + DATABASE_NAME + ";user=" + USERNAME + ";password=" + PASSWORD + ";";
    }

    public boolean createConnection() {
        boolean result = false;
        try {
            connection = connection == null? DriverManager.getConnection(getConnectionUrl()) : connection;
            result = true;
        } catch (SQLException e) {
            e.printStackTrace();
            result = false;
        }

        return result;
    }

    public boolean closeConnection() {
        boolean result = false;
        try {
            if (connection != null) {
                connection.close();
                result = true;
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            result = false;

        }

        return result;
    }

    public ArrayList<Phim> getNowShowingMovies() {
        ArrayList<Phim> arr = new ArrayList<>();

        try {
            Statement stm = connection.createStatement();
            ResultSet rs = stm.executeQuery("SELECT * FROM [dbo].[DanhSachPhimDangChieu]");
//            ResultSetMetaData rsmd = rs.getMetaData();
            while (rs.next()) {
                Phim phim = new Phim();
                phim.setId(rs.getInt(1));
                phim.setMaPhim(rs.getString(2));
                phim.setTenPhim(rs.getString(3));
                phim.setQuocGia(rs.getString(4));
                phim.setThoiLuongPhim(rs.getTime(5).getTime());
                phim.setNgayBatDau(rs.getDate(6));
                phim.setNgayKetThuc(rs.getDate(7));
                String poster = rs.getString(8);
                if (poster == null){
                    poster = "images/carousel/movie-1.jpg";
                }
                phim.setPosterURL(poster);
                phim.setMotaPhim(rs.getString(9));
                phim.setGhiChu(rs.getString(10));
                phim.setNhanPhim(rs.getString(11));
                phim.setImdbRank(rs.getFloat(12));
                phim.setImdbURL(rs.getString(13));
                arr.add(phim);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }


        return arr;
    }

    public ArrayList<Phim> getInComingMovies() {
            ArrayList<Phim> arr = new ArrayList<>();

            try {
                Statement stm = connection.createStatement();
                ResultSet rs = stm.executeQuery("SELECT * FROM [dbo].[DanhSachPhimDangChieu]");
//            ResultSetMetaData rsmd = rs.getMetaData();
                while (rs.next()) {
                    Phim phim = new Phim();
                    phim.setId(rs.getInt(1));
                    phim.setMaPhim(rs.getString(2));
                    phim.setTenPhim(rs.getString(3));
                    phim.setQuocGia(rs.getString(4));
                    phim.setThoiLuongPhim(rs.getTime(5).getTime());
                    phim.setNgayBatDau(rs.getDate(6));
                    phim.setNgayKetThuc(rs.getDate(7));
                    String poster = rs.getString(8);
                    if (poster == null){
                        poster = "images/carousel/movie-1.jpg";
                    }
                    phim.setPosterURL(poster);
                    phim.setMotaPhim(rs.getString(9));
                    phim.setGhiChu(rs.getString(10));
                    phim.setNhanPhim(rs.getString(11));
                    phim.setImdbRank(rs.getFloat(12));
                    phim.setImdbURL(rs.getString(13));
                    arr.add(phim);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }

            return arr;
        }


}
