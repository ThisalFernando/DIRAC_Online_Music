package UserAct;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {

	private static String url = "jdbc:mysql://localhost:3306/onlinemusicstore";
	private static String username = "root";
	private static String password = "Mysql618#";
	private static Connection con;
	
	//Create database connection
	public static Connection getConnection() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url, username, password);
			
		}
		catch(Exception e) {
			//If the database is not successfully connected
			System.out.println("Database connection is not success!!!");
		}
		
		return con;
	}
	
}
