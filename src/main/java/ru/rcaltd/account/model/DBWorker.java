package ru.rcaltd.account.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBWorker
{

    private final String HOST = "jdbc.url=jdbc:mysql://127.0.0.1:3306/accounts?useUnicode=true&useLegacyDatetimeCode=false&serverTimezone=UTC&characterEncoding=UTF-8&zeroDateTimeBehavior=CONVERT_TO_NULL";
    private final String USERNAME = "root";
    private final String PASSWORD = "321321321";
    private Connection connection;

    public DBWorker(){

        try {
            connection = DriverManager.getConnection(HOST, USERNAME, PASSWORD);
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
    }

    public Connection getConnection() {
        return connection;
    }
}
