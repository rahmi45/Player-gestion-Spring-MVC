package com.spring.app;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MainApp {

	public static void main(String[] args) throws SQLException {
		
		String url = "jdbc:mysql://localhost:3306/player?allowPublicKeyRetrieval=true&useSSL=false";
		String username = "rahmi";
		String password = "rahmi";
		Connection connection = null;
		
		try {
			connection = DriverManager.getConnection(url, username, password);
			System.out.println("Success.. !");
			
				
		} catch (Exception e) {
			System.out.println("Exception : " + e.toString());		
		} finally {
			
			connection.close();
		}

	}

}
