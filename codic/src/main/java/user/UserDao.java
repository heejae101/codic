package user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import util.DBManager;

public class UserDao {
	
	//Database 연동을 위한 준비
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	//Dao는 싱글톤으로 구현하기
	private UserDao() {}
	private static UserDao instance= new UserDao();
	public static UserDao getInstance() {
		return instance;
	}
//	
//	public boolean createUser(UserRequestDto userDto) {
//		User result=getUserById(userDto.getId_Email());
//		return
//	}
//	
//	
//	public User getUserById(String id) {
//		User user =null;
//		
//		this.conn=DBManager.getConnection();
//		
//		if(this.conn!=null) {
//			String sql="SELECT *FROM user WHERE id=?";
//			
//			try {
//				this.pstmt=this.conn.prepareStatement(sql);
//				this.pstmt.setString(1, id);
//			}
//			
//		}
//		
//	}
	
	
	
	

}
