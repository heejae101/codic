package model.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import util.DBManager;

public class BoardDao {

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	private BoardDao() {}
	private static BoardDao instance = new BoardDao();
	public static BoardDao getInstance() {
		return instance;
	}
	
	// C
	public boolean createBoard(BoardRequestDto boardDto) {
		boolean check = true;
		
		String user_email = boardDto.getUser_email();
		String board_title = boardDto.getBoard_title();
		String board_text = boardDto.getBoard_text();
		int board_view_count = boardDto.getBoard_view_count();
		String board_nickname = boardDto.getBoard_nickname();

		if (user_email != null && board_title != null && board_text != null) {
			this.conn = DBManager.getConnection();
			if (this.conn != null) {
				String sql = "INSERT INTO board(user_email, board_title, board_text, board_view_count, user_nickname) VALUES(?,?,?,?,?)";
				try {
					this.pstmt = this.conn.prepareStatement(sql);
					this.pstmt.setString(1, user_email);
					this.pstmt.setString(2, board_title);
					this.pstmt.setString(3, board_text);
					this.pstmt.setInt(4, board_view_count);
					this.pstmt.setString(5, board_nickname);
					this.pstmt.execute();
				} catch (Exception e) {
					e.printStackTrace();
					check = false;
				} finally {
					DBManager.close(this.conn, this.pstmt);
				}
			}
		} else {
			check = false;
		}
		return true;
	}
	
	public ArrayList<Board> getBoardAll() {
		
		ArrayList<Board> list = new ArrayList<Board>();

		this.conn = DBManager.getConnection();

		if (this.conn != null) {
			String sql = "SELECT * FROM board";

			try {
				this.pstmt = this.conn.prepareStatement(sql);
				this.rs = this.pstmt.executeQuery();

				while (this.rs.next()) {

					int board_id = this.rs.getInt(1);
					String user_email = this.rs.getString(2);
					String board_title = this.rs.getString(3);
					String board_text = this.rs.getString(4);
					int board_view_count = this.rs.getInt(5);
					String current_timestamp = this.rs.getString(6);
					String modified_timestamp = this.rs.getString(7);

					Board board = new Board(board_id, user_email, board_title, board_text, board_view_count,
							current_timestamp, modified_timestamp);
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

		this.conn = DBManager.getConnection();

		if (this.conn != null) {
			String sql = "SELECT * FROM board WHERE board_id=?";
			
			try {
				this.pstmt = this.conn.prepareStatement(sql);
				this.pstmt.setInt(1, board_id);
				
				this.rs = this.pstmt.executeQuery();
				
				if(this.rs.next()) {
					String user_email = this.rs.getString(2);
					String board_title = this.rs.getString(3);
					String board_text = this.rs.getString(4);
					int board_view_count = this.rs.getInt(5);
					String current_timestamp = this.rs.getString(6);
					String modified_timestamp = this.rs.getString(7);
					String user_nickname = this.rs.getString(8);
					
					board = new Board(board_id, user_email, board_title, board_text, board_view_count, current_timestamp,
							modified_timestamp,user_nickname);
				}

			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				DBManager.close(this.conn, this.pstmt, this.rs);
			}
		}

		return board;
	}
	
	public Board getBoardById(int boardId) {
		Board board = null;

		this.conn = DBManager.getConnection();

		if (this.conn != null) {
			String sql = "SELECT * FROM board WHERE board_id = ?";
			
			try {
				this.pstmt = this.conn.prepareStatement(sql);
				this.pstmt.setInt(1, boardId);
				
				this.rs = this.pstmt.executeQuery();
				
				
				if(this.rs.next()) {
					int board_id = this.rs.getInt(1);
					String user_email = this.rs.getString(2);
					String board_title = this.rs.getString(3);
					String board_text = this.rs.getString(4);
					int board_view_count = this.rs.getInt(5);
					String current_timestamp = this.rs.getString(6);
					String modified_timestamp = this.rs.getString(7);
					
					board = new Board(board_id, user_email, board_title, board_text, board_view_count, current_timestamp,
							modified_timestamp);
				}

			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				DBManager.close(this.conn, this.pstmt, this.rs);
			}
		}

		return board;
	}
	
	public boolean deleteBoardByBoardId(int board_id){
		this.conn = DBManager.getConnection();
		boolean result = false;
		
		if(this.conn != null) {
			String sql = "DELETE FROM board WHERE board_id = ?";
			try {
				this.pstmt = this.conn.prepareStatement(sql);
				this.pstmt.setInt(1, board_id);
				this.pstmt.execute();
				result = true;
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				DBManager.close(this.conn, this.pstmt, this.rs);
			}
		}
		return result;
	}
	
	public boolean setViewsById(int board_id) {
		this.conn = DBManager.getConnection();
		boolean result = false;
		
		if(this.conn != null) {
			String sql = "UPDATE board SET board_view_count = board_view_count + 1 WHERE board_id = ?";
			try {
				System.out.println(board_id);
				this.pstmt = this.conn.prepareStatement(sql);
				this.pstmt.setInt(1, board_id);
				this.pstmt.executeUpdate();
				result = true;
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				DBManager.close(conn, pstmt);
			}
		}
		return result;
	}
	
	// 게시판 목록 출력
	public ArrayList<Board> getBoard10() {
		ArrayList<Board> list = new ArrayList<Board>();
		String sql = "SELECT * FROM board ORDER BY current_timestamp DESC LIMIT 10";
		
		this.conn = DBManager.getConnection();

		if (this.conn != null) {
			
			try {
				this.pstmt = this.conn.prepareStatement(sql);
				this.rs = this.pstmt.executeQuery();

				while (this.rs.next()) {

					int board_id = this.rs.getInt(1);
					String user_email = this.rs.getString(2);
					String board_title = this.rs.getString(3);
					String board_text = this.rs.getString(4);
					int board_view_count = this.rs.getInt(5);
					String current_timestamp = this.rs.getString(6);
					String modified_timestamp = this.rs.getString(7);
					String user_nickname = this.rs.getString(8);

					Board board = new Board(board_id, user_email, board_title, board_text, board_view_count,
							current_timestamp, modified_timestamp);
					
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
	
	// 게시판 목록 출력
		public ArrayList<Board> getBoard() {
			ArrayList<Board> list = new ArrayList<Board>();
			String sql = "SELECT * FROM board ORDER BY board_id DESC";
			
			this.conn = DBManager.getConnection();

			if (this.conn != null) {
				
				try {
					this.pstmt = this.conn.prepareStatement(sql);
					this.rs = this.pstmt.executeQuery();

					while (this.rs.next()) {

						int board_id = this.rs.getInt(1);
						String user_email = this.rs.getString(2);
						String board_title = this.rs.getString(3);
						String board_text = this.rs.getString(4);
						int board_view_count = this.rs.getInt(5);
						String current_timestamp = this.rs.getString(6);
						String modified_timestamp = this.rs.getString(7);
						String user_nickname = this.rs.getString(8);

						Board board = new Board(board_id, user_email, board_title, board_text, board_view_count,
								current_timestamp, modified_timestamp,user_nickname);
						
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
	
	public boolean nextPage(int pageNum) {
		String sql = "SELECT * FROM board ORDER BY modified_timestamp DESC LIMIT 10";
		
			try {
				this.pstmt = this.conn.prepareStatement(sql);
				this.rs = this.pstmt.executeQuery();

				if(rs.next()) {
					return true;
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				DBManager.close(this.conn, this.pstmt, this.rs);
			}
		
		return false;
		
	}
	
	// U
	public boolean updateBoard(int boardId, String email, String title, String text) {
		this.conn = DBManager.getConnection();
		boolean result = false;
		String sql = "UPDATE board SET board_title=?, board_text=? where board_id =?";
		
		try {
			this.pstmt= this.conn.prepareStatement(sql);
			this.pstmt.setString(1, title);
			this.pstmt.setString(2, text);
			this.pstmt.setInt(3, boardId);
			this.pstmt.execute();
			result = true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(this.conn, this.pstmt);
		}
		return result;
	}
}
