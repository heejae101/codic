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
	
	public void createBoardComment(int board_id, String user_email, String board_answer, String user_nickname) {
		this.conn = DBManager.getConnection();
		
		try {
			String sql = "INSERT INTO board_comment(board_id, user_email, board_answer, user_nickname) VALUES(?, ?, ?, ?)";
			
			this.pstmt = this.conn.prepareStatement(sql);
			this.pstmt.setInt(1, board_id);
			this.pstmt.setString(2, user_email);
			this.pstmt.setString(3, board_answer);
			this.pstmt.setString(4, user_nickname);
			this.pstmt.execute();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(this.conn, this.pstmt);
		}
	}
	
	public boolean deleteBoardComment(int comment_id) {
		this.conn = DBManager.getConnection();
		boolean result = false;
		try {
			String sql = "DELETE FROM board_comment where comment_id = ?";
			
			this.pstmt = this.conn.prepareStatement(sql);
			this.pstmt.setInt(1, comment_id);
			this.pstmt.execute();
			result = true;
		}catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(this.conn, this.pstmt);
		}
		return result;
	}
	
	public boolean updateBoardComment(int comment_id, String board_answer) {
		this.conn = DBManager.getConnection();
		boolean result = false;
		try {
			String sql = "UPDATE FROM board_comment SET board_answer = ? WHERE comment_id = ?";
			this.pstmt = this.conn.prepareStatement(sql);
			this.pstmt.setString(1, board_answer);
			this.pstmt.setInt(2, comment_id);
			this.pstmt.execute();
		}catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(this.conn, this.pstmt);
		}
		return result;
	}
	
	public ArrayList<BoardComment> getBoardCommentAll(int request_board_id){
		ArrayList<BoardComment> list = new ArrayList<BoardComment>();
		
		this.conn = DBManager.getConnection();
		
		if(this.conn != null) {
			String sql = "SELECT comment_id, board_id, board_answer, current_timestamp, modified_timestamp, user_nickname FROM board_comment WHERE board_id = ? ";
			
			UserDao user = UserDao.getInstance();
			try {
				this.pstmt = this.conn.prepareStatement(sql);
				this.pstmt.setInt(1, request_board_id);
				this.rs =this.pstmt.executeQuery();
				
				while(this.rs.next()) {
					int comment_id = Integer.parseInt(this.rs.getString(1));
					int board_id = Integer.parseInt(this.rs.getString(2));
					String board_answer = this.rs.getString(3);
					String current_timestamp = this.rs.getString(4);
					String modified_timestamp = this.rs.getString(5);
					String user_nickname = this.rs.getString(6);
					
					BoardComment boardComment = new BoardComment(comment_id, board_id, board_answer, current_timestamp, modified_timestamp, user_nickname);
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
