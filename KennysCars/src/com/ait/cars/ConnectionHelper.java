package com.ait.cars;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionHelper
{
	private String url ="jdbc:mysql://localhost:3307/kennyscars_db?user=root&password=admin";
	
	private static ConnectionHelper instance;

	private ConnectionHelper()
	{
    	String driver = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
            driver="com.mysql.jdbc.Driver";
            Class.forName(driver);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static Connection getConnection() throws SQLException {
		if (instance == null) {
			instance = new ConnectionHelper();
		}
		try {
			return DriverManager.getConnection(instance.url);
		} catch (SQLException e) {
			throw e;
		}
	}
	
	public static void close(Connection connection)
	{
		try {
			if (connection != null) {
				connection.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
