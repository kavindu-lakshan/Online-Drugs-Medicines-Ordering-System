package test2;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBconnect {
	private static String url = "jdbc:mysql://localhost:3306/test2";
	private static String use = "root";
	private static String pw = "2933";
	
	private static Connection con;
	
	private DBconnect() {};
	
	public static Connection getConnection() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url,use,pw);
			
		}catch(Exception e) {
			System.out.println("Database connection is not success..!!");
		}
		
		return con;
		
	}
}
