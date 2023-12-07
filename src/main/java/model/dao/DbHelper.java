package model.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbHelper {
	public static final String DatabaseName = "hoian_advertising";
	
	public static Connection getConnection() throws SQLException, ClassNotFoundException
    {
        // Đăng ký driver MySQL Connector
        Class.forName("com.mysql.jdbc.Driver");
        
        // Get connection dựa trên driver đã đăng kí
        String url = "jdbc:mysql://localhost:3306/" + DatabaseName;
        String username = "root";
        String password = "";

        Connection connection = DriverManager.getConnection(url, username, password);
        return connection;
    }
}
