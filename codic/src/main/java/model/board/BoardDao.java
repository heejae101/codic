package model.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import util.DBManager;

public class BoardDao {
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private SimpleDateFormat sdf = new SimpleDateFormat("YYYYMMdd");
	
	private BoardDao() {}
	private static BoardDao instance = new BoardDao();
	public static BoardDao getInstance() {
		return instance;
	}

	public boolean createBoard(BoardRequestDto boardDto) {
		Board  result = getBoardByNo(boardDto.getBoard_id());
		
		if(result != null) {
			return false;
		}
		
		boolean check = true;
		
		int board_id = boardDto.getBoard_id();
		String user_email = boardDto.getUser_email();
		String board_title = boardDto.getBoard_title();
		String board_text = boardDto.getBoard_text();
		int board_view_count = boardDto.getBoard_view_count();
		String current_timestamp = boardDto.getCurrent_timestamp();
		String modified_timestamp = boardDto.getModified_timestamp();
		
		if(board_id != 0 && user_email != null && board_title != null && board_text != null && ) {
			
		}
		
		
		
		
		
		
		
		
		
		
		
		return true;
	}
	
	public ArrayList<Board> getBoardAll(){
		ArrayList<Board> list = new ArrayList<Board>();
		
		this.conn = DBManager.getConnection();
		
		if(this.conn != null) {
			String sql = "SELECT * FROM board";
			
			try {
				this.pstmt =  this.conn.prepareStatement(sql);
				this.rs = this.pstmt.executeQuery();
				
				while(this.rs.next()) {
					
					int board_id = this.rs.getInt(1);
					String user_email = this.rs.getString(2);
					String board_title = this.rs.getString(3);
					String board_text = this.rs.getString(4);
					int board_view_count = this.rs.getInt(5);
					String current_timestamp = this.rs.getString(6);
					String modified_timestamp = this.rs.getString(7);
					
					Board board = new Board(board_id, user_email, board_title, board_text, board_view_count, current_timestamp, modified_timestamp);
					list.add(board);
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				DBManager.close(this.conn, this.pstmt, this.rs);
			}
		}
		
		return list;
	}
	
	
	public Board getBoardByNo(int board_id) {
		Board board = null;
		
		this.conn =DBManager.getConnection();
		
		if(this.conn != null) {
			String sql = "SELECT * FROM board WHERE board_id=?";
			
			try {
				String user_email = this.rs.getString(1);
				String board_title = this.rs.getString(2);
				String board_text = this.rs.getString(3);
				int board_view_count = this.rs.getInt(4);
				String current_timestamp = this.rs.getString(5);
				String modified_timestamp = this.rs.getString(6);
				
				board = new Board(user_email, board_title, board_text, board_view_count, current_timestamp, modified_timestamp);
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				DBManager.close(this.conn, this.pstmt, this.rs);
			}
		}
		
		return board;
	}
}
