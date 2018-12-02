package com.nhom17;

import com.nhom17.util.ConnectionManager;

import java.sql.SQLException;

public class Main {

    public static void main(String args[]) {
        try {
            System.out.println(ConnectionManager.getConnection().isClosed());
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
