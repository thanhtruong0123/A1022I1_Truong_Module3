package furama.repository.dao;

import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConection {
    private static String jdbcURL = "jdbc:mysql://localhost:3306/furama_db_case?userSSL=false";
    private static String jdbcUserName = "root";
    private static String jdbcPassword = "Truong_1754030024";

    private static java.sql.Connection connection;

    public static java.sql.Connection getConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUserName, jdbcPassword);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return connection;
    }

    public static void close() {
        if (connection != null) {
            try {
                connection.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
    }
}
