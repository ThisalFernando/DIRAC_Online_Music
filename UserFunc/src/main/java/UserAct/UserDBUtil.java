package UserAct;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class UserDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	//Validate Login Page
	public static boolean validate(String userName, String password) {
		
		try {
			//Link the database connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			//Implement the sql query statement
			String sql = "select * from user where UserName = '"+userName+"' and Password = '"+password+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	//Implement method to display user details
	public static List<User> getUser(String username){
		
		//Create array list to carry user details
		ArrayList<User> usr = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from user where UserName = '"+username+ "'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				//Assign values from database table to the variables
				int id = rs.getInt(1);
				String uname = rs.getString(2);
				String email = rs.getString(3);
				String pwd = rs.getString(4);
				
				User u = new User(id, uname, email, pwd);
				
				//add details to the array list
				usr.add(u);
				
			}
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		return usr;
		
	}
	
	//Implement a method to insert user details to the database
	public static boolean insertUser(String username, String email, String password) {
		
		boolean isSuccess = false;
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into user values(0, '"+username+"', '"+email+"', '"+password+"')"; 
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	//Implement a method to update user details
	public static boolean updateUser(String id, String uname, String email, String pwd) {
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			//SQL statement for update
			String sql = "update user set UserName = '"+uname+"', Email = '"+email+"', Password = '"+pwd+"'"
					+ "where UserID = '"+id+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	//Implement a method to display newly updated details
	public static List<User> getUserDetails(String id){
		
		//Convert integer value to the String value
		int convertedID = Integer.parseInt(id);
		
		ArrayList<User> usr = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from user where UserID = '"+convertedID+"'";
			rs = stmt.executeQuery(sql);
			
			//Retrieve values from database
			while(rs.next()) {
				int uid = rs.getInt(1);
				String uname = rs.getString(2);
				String email = rs.getString(3);
				String pwd = rs.getString(4);
				
				User u = new User(uid, uname, email, pwd);
				//Add details to the array list
				usr.add(u);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return usr;
	}
	
	
	//Implement a method to delete user account
	public static boolean deleteUser(String id) {
		
		int convId = Integer.parseInt(id);
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			//SQL delete statement
			String sql = "delete from user where UserID = '"+convId+"'";
			int r = stmt.executeUpdate(sql);
			
			if(r > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	
}