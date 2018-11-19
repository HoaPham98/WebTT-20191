package com.nhom17.database;


import java.sql.*;

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

}
