package model.content;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;

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
	
//	public boolean createDummy(ContentRequestDto contentDto) {
//		String text = contentDto.getDummy();
//		
//		Content result = getContentById(text);
//		if(result != null) {
//			return false;
//		}
//		
//		if(text != null) {
//			this.conn = DBManager.getConnection();
//			if(this.conn != null) {
//				String sql = "INSERT INTO `content`(category_no,content_title, content_title, content_title) values()"
//			}
//		}
//	}
	
	public Content getDataBytext(String text) {
		Content content = null;
		this.conn = DBManager.getConnection();
		if(this.conn != null) {
			String sql = "SELECT * FROM content WHERE content_title LIKE ?";
			try {
				this.pstmt = this.conn.prepareStatement(sql);
				this.pstmt.setString(1, '%'+text+'%');
				this.rs = this.pstmt.executeQuery();
				
				if(this.rs.next()) {
					int content_id = Integer.parseInt(this.rs.getString(1));
					int category_no = Integer.parseInt(this.rs.getString(2));
					String content_text = this.rs.getString(4);
					String content_views = this.rs.getString(5);
					int content_creation = Integer.parseInt(sdf.format(this.rs.getDate(6)));
					
					content = new Content(content_id, category_no, text, content_text, content_views, content_creation);
				}
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				DBManager.close(conn,pstmt);
			}
		}
		return content;
	}
	
}
