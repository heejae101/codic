package model.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import model.user.UserDao;
import util.DBManager;

public class BoardCommentDao {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private SimpleDateFormat sdf = new SimpleDateFormat("YYYYMMdd");
	
	private BoardCommentDao() {}
	private static BoardCommentDao instance = new BoardCommentDao();
	public static BoardCommentDao getInstance() {
		return instance;
	}
	
	public void createBoardComment(int board_id, String user_email, String board_answer) {
		this.conn = DBManager.getConnection();
		
		try {
			String sql = "INSERT INTO board_comment(board_id, user_email, board_answer) VALUES(?, ?, ?)";
			
			this.pstmt = this.conn.prepareStatement(sql);
			this.pstmt.setInt(1, board_id);
			this.pstmt.setString(2, user_email);
			this.pstmt.setString(3, board_answer);
			this.pstmt.execute();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(this.conn, this.pstmt);
		}
	}
	
	public ArrayList<BoardComment> getBoardCommentAll(){
		ArrayList<BoardComment> list = new ArrayList<BoardComment>();
		
		this.conn = DBManager.getConnection();
		
		if(this.conn != null) {
			String sql = "SELECT * FROM board_comment";
			
			try {
				this.pstmt = this.conn.prepareStatement(sql);
				this.rs =this.pstmt.executeQuery();
				
				while(this.rs.next()) {
					int comment_id = this.rs.getInt(1);
					int board_id = this.rs.getInt(2);
					String user_email = this.rs.getString(3);
					String board_answer = this.rs.getString(4);
					String current_timestamp = this.rs.getString(5);
					String modified_timestamp = this.rs.getString(6);
					
					UserDao user = UserDao.getInstance();
					String user_nickname = user.getNicknameByEmail(user_email);
					
					BoardComment boardComment = new BoardComment(comment_id, board_id, user_nickname, board_answer, current_timestamp, modified_timestamp);
					list.add(boardComment);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				DBManager.close(this.conn, this.pstmt, this.rs);
			}
		}
		return list;
	}

	
}
