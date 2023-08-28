package model.user;

import java.sql.Timestamp;

public class UserRequestDto {//복제품
	
		
	private String user_email; //R 아이디와 이메일 동일시
	private String user_password; //R
	private String user_name;    //R
	private String user_nickname;//R
	

	private int user_check;  
	private Timestamp user_joinDate; //가입 날짜
	private int user_status; //회원 상태
	private String access_token;
	private String user_profile;
	
		
	public UserRequestDto(String user_email, String user_name, String user_nickname, String access_token) {
		super();
		this.user_email = user_email;
		this.user_name = user_name;
		this.user_nickname = user_nickname;
		this.access_token = access_token;
	}
	
    public UserRequestDto(String user_email, String user_password, String user_name, String user_nickname,
			int user_check, Timestamp user_joinDate, int user_status, String access_token, String user_profile) {
		this.user_email = user_email;
		this.user_password = user_password;
		this.user_name = user_name;
		this.user_nickname = user_nickname;
		this.user_check = user_check;
		this.user_joinDate = user_joinDate;
		this.user_status = user_status;
		this.access_token = access_token;
		this.user_profile=user_profile;
	}

	

	//#생성자
	public UserRequestDto(String user_email, String user_password, String user_nickname) {
		this.user_email = user_email;
		this.user_password = user_password;
		this.user_nickname = user_nickname;
	}
	
	
	public UserRequestDto(String user_email, String user_name, String user_nickname, int user_status,
			String access_token) {
		super();
		this.user_email = user_email;
		this.user_name = user_name;
		this.user_nickname = user_nickname;
		this.user_status = user_status;
		this.access_token = access_token;
	}

	public UserRequestDto(String user_email, String user_password, String user_name,
			String user_nickname, int user_check, int user_status) {
		super();
		this.user_email = user_email;
		this.user_password = user_password;
		this.user_name = user_name;
		this.user_nickname = user_nickname;
		this.user_check = user_check;
		this.user_status = user_status;
	}
	

	public UserRequestDto(String user_email, String user_password, String user_name, String user_nickname,
			int user_check, int user_status, String user_profile) {
		super();
		this.user_email = user_email;
		this.user_password = user_password;
		this.user_name = user_name;
		this.user_nickname = user_nickname;
		this.user_check = user_check;
		this.user_status = user_status;
		this.user_profile = user_profile;
	}

	public UserRequestDto(String user_email, String user_password, String user_name,
			String user_nickname, int user_check, Timestamp user_joinDate, int user_status) {
		super();
		this.user_email = user_email;
		this.user_password = user_password;
		this.user_name = user_name;
		this.user_nickname = user_nickname;
		this.user_check = user_check;
		this.user_joinDate = user_joinDate;
		this.user_status = user_status;
	}
	
	
	

  //#getter &setter
	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public String getAccess_token() {
		return access_token;
	}
	
	public void setAccess_token(String access_token) {
		this.access_token = access_token;
	}


	public String getUser_password() {
		return user_password;
	}



	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}



	public String getUser_name() {
		return user_name;
	}



	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}



	public String getUser_nickname() {
		return user_nickname;
	}



	public void setUser_nickname(String user_nickname) {
		this.user_nickname = user_nickname;
	}



	public int getUser_check() {
		return user_check;
	}



	public void setUser_check(int user_check) {
		this.user_check = user_check;
	}



	public Timestamp getUser_joinDate() {
		return user_joinDate;
	}



	public void setUser_joinDate(Timestamp user_joinDate) {
		this.user_joinDate = user_joinDate;
	}



	public int getUser_status() {
		return user_status;
	}



	public void setUser_status(int user_status) {
		this.user_status = user_status;
	}
	
	public String getUser_profile() {
		return user_profile;
	}

	public void setUser_profile(String user_profile) {
		this.user_profile = user_profile;
	}

	@Override
	public String toString() {
		return "UserRequestDto [user_email=" + user_email + ", user_password=" + user_password + ", user_name="
				+ user_name + ", user_nickname=" + user_nickname + ", user_check=" + user_check + ", user_joinDate="
				+ user_joinDate + ", user_status=" + user_status + ", access_token=" + access_token + "]";
	}


}
