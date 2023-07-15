package model.board;

public class BoardComment {
	
	private int comment_id;
	private int board_id;
	private String user_nickname;
	private String board_answer;
	private String current_timestamp;
	private String modified_timestamp;
	
	public BoardComment(int comment_id, int board_id, String board_answer, String current_timestamp, String modified_timestamp, String user_nickname) {
		super();
		this.comment_id = comment_id;
		this.board_id = board_id;
		this.board_answer = board_answer;
		this.current_timestamp = current_timestamp;
		this.modified_timestamp = modified_timestamp;
		this.user_nickname = user_nickname;
	}
	
	public int getComment_id() {
		return comment_id;
	}

	public void setComment_id(int comment_id) {
		this.comment_id = comment_id;
	}

	public int getBoard_id() {
		return board_id;
	}

	public void setBoard_id(int board_id) {
		this.board_id = board_id;
	}

	public String getBoard_answer() {
		return board_answer;
	}

	public void setBoard_answer(String board_answer) {
		this.board_answer = board_answer;
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

	public String getUser_nickname() {
		return user_nickname;
	}

	public void setUser_nickname(String user_nickname) {
		this.user_nickname = user_nickname;
	}

	@Override
	public String toString() {
		return "BoardComment [comment_id=" + comment_id + ", board_id=" + board_id + ", user_nickname=" + user_nickname
				+ ", board_answer=" + board_answer + ", current_timestamp=" + current_timestamp
				+ ", modified_timestamp=" + modified_timestamp + "]";
	}


}
