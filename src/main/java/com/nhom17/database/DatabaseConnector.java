package com.nhom17.database;


import java.sql.*;

public class DatabaseConnector {

    static final String DATABASE_NAME = "cinemadatabase";
    static final String USERNAME = "cinemadatabase";
    static final String PASSWORD = "Jc20xi_7f44!";

    private static DatabaseConnector instance = new DatabaseConnector();

    public Connection getConnection() {
        try {
            if (connection == null)
                connection = DriverManager.getConnection(getConnectionUrl());
            else if (connection.isClosed())
                connection = DriverManager.getConnection(getConnectionUrl());
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
        return "jdbc:sqlserver://den1.mssql6.gear.host:1433;" +
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
