package com.nhom17;

import com.nhom17.database.DatabaseConnector;

public class Main {

    public static void main(String args[]) {
        DatabaseConnector.getInstance().createConnection();
        DatabaseConnector.getInstance().getNowShowingMovies();
    }
}
