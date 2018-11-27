package com.nhom17.util;

import com.microsoft.sqlserver.jdbc.SQLServerConnectionPoolDataSource;
import com.microsoft.sqlserver.jdbc.SQLServerDataSource;
import java.sql.Connection;
import java.sql.SQLException;

import javax.sql.DataSource;

public final class ConnectionManager {

    private final static ThreadLocal<Connection> LOCAL = new ThreadLocal<>();
    private static DataSource dataSource;
    private static final String driverName = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
    static final String DATABASE_NAME = "cinemadatabase";
    static final String USERNAME = "cinemadatabase";
    static final String PASSWORD = "Jc20xi_7f44!";
    static final String URL = "jdbc:sqlserver://den1.mssql6.gear.host";

    public static ConnectionManager instance = new ConnectionManager();

    private ConnectionManager() {
        SQLServerDataSource dataSource = new SQLServerDataSource();
        dataSource.setURL(URL);
        dataSource.setUser(USERNAME);
        dataSource.setPassword(PASSWORD);
        dataSource.setDatabaseName(DATABASE_NAME);
        ConnectionManager.setDataSource(dataSource);
    }

    public static void setDataSource(DataSource dataSource) {
        ConnectionManager.dataSource = dataSource;
    }

    public static Connection getConnection() throws SQLException {
        Connection conn = LOCAL.get();
        if (null != conn) {
            return conn;
        }
        conn = dataSource.getConnection();
        LOCAL.set(conn);
        return conn;
    }

    public static void release() {
        Connection conn = LOCAL.get();
        if (null != conn) {
            DBUtil.release(conn);
            LOCAL.remove();
        }
    }

}
