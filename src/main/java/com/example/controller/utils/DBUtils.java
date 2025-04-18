package com.example.controller.utils;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class DBUtils {
    private static String DRIVER, SERVER_NAME, DB_NAME, USER_NAME, PASSWORD;
    static final String FILE_NAME = "/DBConfig.properties";  // Fix đường dẫn

    public static Connection getConnection() throws IOException, ClassNotFoundException, SQLException {
        Properties properties = new Properties();

        // Đọc file cấu hình đúng cách
        properties.load(DBUtils.class.getResourceAsStream(FILE_NAME));

        DRIVER = properties.getProperty("driver");
        SERVER_NAME = properties.getProperty("server");
        DB_NAME = properties.getProperty("dbname");
        USER_NAME = properties.getProperty("username");
        PASSWORD = properties.getProperty("password");

        // Load driver MySQL
        Class.forName(DRIVER);

        // Kết nối đúng cách cho MySQL
        return DriverManager.getConnection(SERVER_NAME + "/" + DB_NAME, USER_NAME, PASSWORD);
    }

    public static void closeConnection(Connection connection) throws SQLException {
        if (connection != null) {
            connection.close();
            System.out.println("close connection");
        }
    }
}
