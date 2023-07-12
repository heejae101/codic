package model.board;

import java.sql.Timestamp;

public class BoardRequestDto {
	
	private int board_id;
	private String user_email;
	private String board_title;
	private String board_text;
	private int board_view_count;
	private Timestamp current_timestamp;
	private Timestamp modified_timestamp;
	
	
	
	public BoardRequestDto(String board_title, String board_text) {
		super();
		this.board_title = board_title;
		this.board_text = board_text;
	}

	public BoardRequestDto(String user_email, String board_title, String board_text) {
		super();
		this.user_email = user_email;
		this.board_title = board_title;
		this.board_text = board_text;
	}

	public BoardRequestDto(String user_email, String board_title, String board_text, int board_view_count) {
		super();
		this.user_email = user_email;
		this.board_title = board_title;
		this.board_text = board_text;
		this.board_view_count = board_view_count;
	}

	public BoardRequestDto(int board_id, String user_email, String board_title, String board_text, int board_view_count,
			Timestamp current_timestamp, Timestamp modified_timestamp) {
		super();
		this.board_id = board_id;
		this.user_email = user_email;
		this.board_title = board_title;
		this.board_text = board_text;
		this.board_view_count = board_view_count;
		this.current_timestamp = current_timestamp;
		this.modified_timestamp = modified_timestamp;
	}

	public BoardRequestDto(int board_id2, String user_email2, String board_title2, String board_text2,
			int board_view_count2, String current_timestamp2, String modified_timestamp2) {
	}

	public int getBoard_id() {
		return board_id;
	}
	
	public void setBoard_id(int board_id) {
		this.board_id = board_id;
	}
	
	public String getUser_email() {
		return user_email;
	}
	
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	
	public String getBoard_title() {
		return board_title;
	}
	
	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}
	
	public String getBoard_text() {
		return board_text;
	}
	
	public void setBoard_text(String board_text) {
		this.board_text = board_text;
	}
	
	public int getBoard_view_count() {
		return board_view_count;
	}
	
	public void setBoard_view_count(int board_view_count) {
		this.board_view_count = board_view_count;
	}
	
	public Timestamp getCurrent_timestamp() {
		return current_timestamp;
	}
	
	public void setCurrent_timestamp(Timestamp current_timestamp) {
		this.current_timestamp = current_timestamp;
	}
	
	public Timestamp getModified_timestamp() {
		return modified_timestamp;
	}
	
	public void setModified_timestamp(Timestamp modified_timestamp) {
		this.modified_timestamp = modified_timestamp;
	}
	
	@Override
	public String toString() {
		return "BoardRequestDto [board_id=" + board_id + ", user_email=" + user_email + ", board_title=" + board_title
				+ ", board_text=" + board_text + ", board_view_count=" + board_view_count + ", current_timestamp="
				+ current_timestamp + ", modified_timestamp=" + modified_timestamp + "]";
	}

}
