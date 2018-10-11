package Database;

public class DatabaseConnector {

    static final String URL = "";
    static final String DATABASE_NAME = "";
    static final String USERNAME = "";
    static final String PASSWORD = "";

    public static DatabaseConnector instance = new DatabaseConnector();

    private DatabaseConnector() {

    }

    public static DatabaseConnector getInstance() {
        return instance;
    }

    void createConnection() {

    }

}
