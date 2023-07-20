package model.user;

public class UserFavoriteContent {
	private int content_like_id;
	private int content_id;
	private String user_email;
	
	public UserFavoriteContent(int content_like_id, int content_id, String user_email) {
		super();
		this.content_like_id = content_like_id;
		this.content_id = content_id;
		this.user_email = user_email;
	}
	
	public int getContent_like_id() {
		return content_like_id;
	}
	public void setContent_like_id(int content_like_id) {
		this.content_like_id = content_like_id;
	}
	public int getContent_id() {
		return content_id;
	}
	public void setContent_id(int content_id) {
		this.content_id = content_id;
	}

	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	@Override
	public String toString() {
		return "UserFavoriteContent [content_like_id=" + content_like_id + ", content_id=" + content_id
				+ ", user_email=" + user_email + "]";
	}
	
}
