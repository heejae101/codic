package model.user;

import java.sql.Timestamp;

public class UserRequestDto {//복제품
	
		
	private String user_email; //R 아이디와 이메일 동일시
	private String user_password; //R
	private String user_name;    //R
	private String user_phone_num;  //R
	private String user_nickname;//R
	
	
	private int user_check;  //만 14세 미만 동의
	private Timestamp user_joinDate; //가입 날짜
	private int user_status; //회원 상태
		
    //생성자
	public UserRequestDto(String user_email, String user_password, String user_name, String user_phone_num) {
		this.user_email = user_email;
		this.user_password = user_password;
		this.user_name = user_name;
		this.user_phone_num = user_phone_num;
	}
	
	

	public UserRequestDto(String user_email, String user_password, String user_name, String user_phone_num,
			String user_nickname) {
		this.user_email = user_email;
		this.user_password = user_password;
		this.user_name = user_name;
		this.user_phone_num = user_phone_num;
		this.user_nickname = user_nickname;
	}
	
	public UserRequestDto(String user_email, String user_password, String user_name, String user_phone_num, String user_nickname,
			int user_check, int user_status) {
		super();
		this.user_email = user_email;
		this.user_password = user_password;
		this.user_name = user_name;
		this.user_phone_num = user_phone_num;
		this.user_nickname = user_nickname;
		this.user_check = user_check;
		this.user_status = user_status;
	}
	



	public UserRequestDto(String user_email, String user_password, String user_name, String user_phone_num, String user_nickname,
			int user_check, Timestamp user_joinDate, int user_status) {
		this.user_email = user_email;
		this.user_password = user_password;
		this.user_name = user_name;
		this.user_phone_num = user_phone_num;
		this.user_nickname = user_nickname;
		this.user_check = user_check;
		this.user_joinDate = user_joinDate;
		this.user_status = user_status;
	}


	//getter &setterF
	public String getUser_email() {
		return user_email;
	}



	public void setUser_email(String user_email) {
		this.user_email = user_email;
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



	public String getUser_phone_num() {
		return user_phone_num;
	}



	public void setUser_phone_num(String user_phone_num) {
		this.user_phone_num = user_phone_num;
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





		
	
	
	

		
		


		



		
		
		
		
		
	
	
	


	
	
	
	
	

}
