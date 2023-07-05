package model.board;

public class BoardResponseDto {

	private int board_id;
	private String user_email;
	private String board_title;
	private String board_text;
	private int board_view_count;
	private String current_timestamp;
	private String modified_timestamp;
	
	public BoardResponseDto(int board_id, String user_email, String board_title, String board_text,
			int board_view_count, String current_timestamp, String modified_timestamp) {
		super();
		this.board_id = board_id;
		this.user_email = user_email;
		this.board_title = board_title;
		this.board_text = board_text;
		this.board_view_count = board_view_count;
		this.current_timestamp = current_timestamp;
		this.modified_timestamp = modified_timestamp;
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

	public String getCurrent_timestamp() {
		return current_timestamp;
	}

	public void setCurrent_timestamp(String current_timestamp) {
		this.current_timestamp = current_timestamp;
	}

	public String getModified_timestamp() {
		return modified_timestamp;
	}

	public void setModified_timestamp(String modified_timestamp) {
		this.modified_timestamp = modified_timestamp;
	}
	
	
}
