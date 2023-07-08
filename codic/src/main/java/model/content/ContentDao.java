package model.content;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

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
	
	public ArrayList<Content> getDataBytext(String text) {
		ArrayList<Content> list = new ArrayList<Content>();
		Content content = null;
		this.conn = DBManager.getConnection();
		
		if(this.conn != null) {
			String sql = "SELECT cate.category_name, con.content_title, con.content_views, img.file_path, img.file_name, img.file_extends \r\n"
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
					String content_title = this.rs.getString(2);
					int content_views = Integer.parseInt(this.rs.getString(3));
					String file_path = this.rs.getString(4)+this.rs.getString(5)+"."+this.rs.getString(6);
		
					content = new Content(category_name, content_title, content_views, file_path);
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
	
	
	
}
