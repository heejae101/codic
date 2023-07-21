package model.content;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import model.user.UserFavoriteContent;
import util.DBManager;

public class ContentDao {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private SimpleDateFormat sdf = new SimpleDateFormat("YYYYMMdd");
	
	private ContentDao() {}
	private static ContentDao instance = new ContentDao();
	public static ContentDao getInstance() {
		return instance;
	}
	
	public ArrayList<Content> getDataByCategory(String category){
		ArrayList<Content> list = new ArrayList<Content>();
		Content content = null;
		this.conn = DBManager.getConnection();
		if(this.conn != null) {
			String sql = "SELECT cate.category_name, con.content_id, con.content_title, con.content_views, img.file_path, img.file_name, img.file_extends, con.content_path \r\n"
					+ "FROM content as con\r\n"
					+ "LEFT JOIN content_img AS img ON con.category_no = img.category_no\r\n"
					+ "LEFT JOIN category AS cate ON cate.category_no = con.category_no\r\n"
					+ "WHERE cate.category_name = ?";
			try {
				this.pstmt = this.conn.prepareStatement(sql);
				this.pstmt.setString(1, category);
				this.rs = this.pstmt.executeQuery();
				
				while(this.rs.next()) {
					String category_name = this.rs.getString(1);
					int content_id = this.rs.getInt(2);
					String content_title = this.rs.getString(3);
					int content_views = Integer.parseInt(this.rs.getString(4));
					String file_path = this.rs.getString(5)+this.rs.getString(6)+"."+this.rs.getString(7);
					String content_path = this.rs.getString(8);
					content = new Content(content_id, category_name, content_title, content_views, file_path, content_path);
					list.add(content);
				}
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				DBManager.close(conn,pstmt);
			}
		}
		return list;
	}
	
	public ArrayList<Content> getDataBytext(String text) {
		ArrayList<Content> list = new ArrayList<Content>();
		Content content = null;
		this.conn = DBManager.getConnection();
		
		if(this.conn != null) {
			String sql = "SELECT cate.category_name, con.content_id, con.content_title, con.content_views, img.file_path, img.file_name, img.file_extends, con.content_path \r\n"
					+ "FROM content as con\r\n"
					+ "LEFT JOIN content_img AS img ON con.category_no = img.category_no\r\n"
					+ "LEFT JOIN category AS cate ON cate.category_no = con.category_no\r\n"
					+ "WHERE con.content_title LIKE ?";
	        
			try {
				this.pstmt = this.conn.prepareStatement(sql);
				this.pstmt.setString(1, '%'+text+'%');
				this.rs = this.pstmt.executeQuery();
				
				while(this.rs.next()) {
					String category_name = this.rs.getString(1);
					int content_id = this.rs.getInt(2);
					String content_title = this.rs.getString(3);
					int content_views = Integer.parseInt(this.rs.getString(4));
					String file_path = this.rs.getString(5)+this.rs.getString(6)+"."+this.rs.getString(7);
					String content_path = this.rs.getString(8);
		
					content = new Content(content_id, category_name, content_title, content_views, file_path,content_path);
					list.add(content);
				}
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				DBManager.close(conn,pstmt);
			}
		}
		return list;
	}
	
	public Content getDataById(int content_id){
		Content content = null;
		this.conn = DBManager.getConnection();
		
		if(this.conn != null) {
			String sql = "SELECT * FROM content WHERE content_id = ?";
			try {
				this.pstmt = this.conn.prepareStatement(sql);
				this.pstmt.setInt(1, content_id);
				this.rs = this.pstmt.executeQuery();
				
				while(this.rs.next()) {
					content_id = this.rs.getInt(1);
					int category_no = this.rs.getInt(2);
					String content_title = this.rs.getString(3);
					String content_text = this.rs.getString(4);
					int content_views = this.rs.getInt(5);
					String content_path = this.rs.getString(6);
					
					content = new Content(content_id, content_title, content_views, content_path);
				}
				
			} catch(Exception e) {
				e.printStackTrace();
			}finally {
				DBManager.close(conn,pstmt);
			}
		}
		return content;
	}
	
	
	public void setViewsById(int id) {
		this.conn = DBManager.getConnection();
		
		if(this.conn != null) {
			String sql = "UPDATE content SET content_views = content_views + 1 WHERE content_id = ?";
			try {
				this.pstmt = this.conn.prepareStatement(sql);
				this.pstmt.setInt(1, id);
				this.pstmt.executeUpdate();
				
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				DBManager.close(conn, pstmt);
			}
		}
	}
	
	
	public void setViewsByPath(String Path) {
		this.conn = DBManager.getConnection();
		
		if(this.conn != null) {
			String sql = "UPDATE content SET content_views = content_views + 1 WHERE content_path = ?";
			try {
				this.pstmt = this.conn.prepareStatement(sql);
				this.pstmt.setString(1, Path);
				this.pstmt.executeUpdate();
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				DBManager.close(conn, pstmt);
			}
		}
	}
	
	public boolean addContentLikeByUser(int content_id, String email) {
		this.conn = DBManager.getConnection();
		boolean result = false;
		
		if(this.conn != null) {
			String sql = "INSERT INTO content_like(content_id,user_email) VALUES(?,?)";
			try {
				this.pstmt = this.conn.prepareStatement(sql);
				this.pstmt.setInt(1, content_id);
				this.pstmt.setString(2, email);
				this.pstmt.execute();
				result = true;
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				DBManager.close(conn, pstmt);
			}
		}
		return result;
	}
	
	public boolean removeContentLikeByUser(int board_id, String email) {
		this.conn = DBManager.getConnection();
		boolean result = false;
		
		if(this.conn != null) {
			String sql = "DELETE content_like WHERE board_id = ? AND user_email = ?";
			try {
				this.pstmt = this.conn.prepareStatement(sql);
				this.pstmt.setInt(1, board_id);
				this.pstmt.setString(2, email);
				this.pstmt.execute();
				result = true;
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				DBManager.close(conn, pstmt);
			}
		}
		return result;
	}
	
	
	public ArrayList<Content> popularContent(){
		this.conn = DBManager.getConnection();
		ArrayList<Content> list = new ArrayList<Content>();
		Content content = null;
		int selectNum = 3;
		
		if(this.conn != null) {
			String sql = "SELECT con.content_id, con.content_title, con.content_text, con.content_views, img.file_path, img.file_name, img.file_extends\r\n"
					+ "FROM content as con \r\n"
					+ "LEFT JOIN content_img AS img ON con.category_no = img.category_no\r\n"
					+ "ORDER BY content_views DESC LIMIT ?";
			try {
				this.pstmt = this.conn.prepareStatement(sql);
				this.pstmt.setInt(1, selectNum);
				this.rs = this.pstmt.executeQuery();
				
				while(this.rs.next()) {
					int content_id = this.rs.getInt(1);
					String content_title = this.rs.getString(2);
					String content_path = this.rs.getString(3);
					int content_views = this.rs.getInt(4);
					String file_path = this.rs.getString(5);
					String file_name = this.rs.getString(6);
					String file_extends = this.rs.getString(7);
					
					String final_file_path = file_path+file_name+"."+file_extends;
					
					content = new Content(content_id, content_title, content_views, final_file_path, content_path);
					list.add(content);
				}
				
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				DBManager.close(conn, pstmt);
			}
		}
		return list;
	}
	
}
