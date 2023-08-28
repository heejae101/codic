package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DBManager {
	public static Connection getConnection() {
		Connection conn = null;
		String url = "jdbc:mysql://YOUR_ADDRES.amazonaws.com:3306/CODIC?serverTimeZone=UTC";
		String username = "YOUR_RDS_NAME";
		String password = "YOUR_RDS_PASSWORD";		
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			conn = DriverManager.getConnection(url, username, password);
			System.out.println("Database 연동 성공 >>>");
		} catch (Exception e) {
			e.printStackTrace();
			System.err.println("Database 연동 실패 >>>");
		}
		return conn;
	}
	
	public static void close(Connection conn, PreparedStatement pstmt) {
		try {
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void close(Connection conn, PreparedStatement pstmt, ResultSet rs) {
		try {
			pstmt.close();
			conn.close();
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
