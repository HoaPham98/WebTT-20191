package database;

import dto.Phim;

import java.sql.*;
import java.util.ArrayList;

public class DatabaseConnector {

    static final String DATABASE_NAME = "movie";
    static final String USERNAME = "MOVIE";
    static final String PASSWORD = "1";

    private static DatabaseConnector instance = new DatabaseConnector();
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
            ResultSetMetaData rsmd = rs.getMetaData();
            while (rs.next()) {
                for (int i = 1; i <= rsmd.getColumnCount(); i++) {
                    System.out.println(
                            "Column " + i + " [name: " + rsmd.getColumnName(i) + " - data: " + rs.getString(i) + "]");
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }


        return arr;
    }

}
