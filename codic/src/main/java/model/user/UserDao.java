package model.user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

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
	
	
	
	//Create
	public boolean createUser(UserRequestDto userDto) {
		User result=getUserByEmail(userDto.getUser_email());
		
		if(result !=null)
			return false;
		
		String email=userDto.getUser_email();
		String password=userDto.getUser_password();
		String name=userDto.getUser_name();
		String phone_num=userDto.getUser_phone_num();
		String nickname=userDto.getUser_nickname();
		int check=userDto.getUser_check();
		//Timestamp joinDate=userDto.getUser_joinDate();
		int status=userDto.getUser_status();
		
		boolean confirm =true;
		
		if(password!=null && name!=null && phone_num!=null&&nickname!=null && check!=0 &&status!=0) {
			this.conn=DBManager.getConnection();
			if(this.conn!=null) {
				if(!email.equals("")) {//이메일 값이 있을때
					String sql="INSERT INTO user_info(user_email, user_password, user_name, user_phone_num, user_nickname,user_check,user_status)VALUES(?,?,?,?,?,?,?)";
					//DB에서는 joinDate 안넣자나 값을 여기서 어떻게 처리?
					try {
						this.pstmt=this.conn.prepareStatement(sql);
						this.pstmt.setString(1, email);
						this.pstmt.setString(2, password);
						this.pstmt.setString(3, name);
						this.pstmt.setString(4, phone_num);
						this.pstmt.setString(5, nickname);
						this.pstmt.setInt(6, check);
					    this.pstmt.setInt(7, status);
						
						this.pstmt.execute();
						
					} catch (Exception e) {
						e.printStackTrace();
						confirm=false;
					}finally{
						DBManager.close(this.conn, this.pstmt);
					}
					
				}else {//이메일 값이 없을때
				 
			    try {
				System.out.println("회원가입 불가");
				}catch (Exception e) {
				   e.printStackTrace();
				   confirm=false;
				}finally {
					DBManager.close(this.conn, this.pstmt);
					
				}
				
				}
			}else {
				confirm=false;
			}
			
			
		}else {
			confirm=false;
			
		}
		
		return confirm;
		
		
	}
	
	
	public User getUserByEmail(String email) {
		//user 객체
		User user =null;
		
		this.conn=DBManager.getConnection();
		
		if(this.conn!=null) {
			String sql="SELECT *FROM user_info WHERE user_email=?";
			
			try {
				this.pstmt=this.conn.prepareStatement(sql);
				this.pstmt.setString(1, email);
				
				this.rs=this.pstmt.executeQuery();
				if(this.rs.next()) {
					String password=this.rs.getString(2);
					String name=this.rs.getString(3);
					String phone_num=this.rs.getString(4);
					String nickname=this.rs.getString(5);
					int check=Integer.parseInt(this.rs.getString(6));
					Timestamp joinDate= java.sql.Timestamp.valueOf(this.rs.getString(7));
					int status=Integer.parseInt(this.rs.getString(8));
					user=new User(email,password,name,phone_num,nickname,check,joinDate, status);
					
					
				}
			}catch (Exception e) {
				e.printStackTrace();
			}finally {
				DBManager.close(conn, pstmt, rs);
			}
			
		}
	
	return user;	
	}
	
	public ArrayList<User>getUserAll(){
		ArrayList<User>list = new ArrayList<User>();
	
		//1.데이터 베이스에 연동
		this.conn=DBManager.getConnection();
		
		//2. 연동된 db에 excute할 sql 쿼리를 문자열로 작성
		if(this.conn!=null) {
		String sql="SELECT*FROM user_info";
		
		try {
			//3.쿼리를 객체에 담아 날릴 준비
			this.pstmt=this.conn.prepareStatement(sql);
			
			//4. 쿼리 실행 excute->반환 받은 ResultSet을 초기화
			this.rs=this.pstmt.executeQuery();
			
			//5.ResultSet의 행 읽기
			while(this.rs.next()) {
			String email=this.rs.getNString(1);	
			String password=this.rs.getString(2);
			String name=this.rs.getString(3);
			String phone_num=this.rs.getString(4);
			String nickname=this.rs.getString(5);
			int check=Integer.parseInt(this.rs.getString(6));
			Timestamp joinDate= java.sql.Timestamp.valueOf(this.rs.getString(7));
			int status=Integer.parseInt(this.rs.getString(8));
			
			User user=new User(email,password,name,phone_num,nickname,check,null, status);
			list.add(user);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(this.conn, this.pstmt, this.rs);
		}
		
		
		}
		return list;
		
		
		
	}
	
	
	
	

}
