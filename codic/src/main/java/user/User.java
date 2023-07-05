package user;

import java.sql.Timestamp;

public class User {
	
	private String id_Email; //R 아이디와 이메일 동일시
	private String password; //R
	private String nickname;//R
	private String name;    //R
	private String phone;  //R
	
	private Timestamp joinDate; //가입 날짜
	private int check;  //만 14세 미만 동의
	private int userStatus; //회원 상태
	
	
	//생성자
	public User(String id_Email, String password, String nickname) {
		
		this.id_Email = id_Email;
		this.password = password;
		this.nickname = nickname;
	}
	


	public User(String id_Email, String password, String name, String phone) {
		
		this.id_Email = id_Email;
		this.password = password;
		this.name = name;
		this.phone = phone;
	}


	public User(String id_Email, String password, String nickname, String name, String phone, Timestamp joinDate,
			int userStatus) {
		this.id_Email = id_Email;
		this.password = password;
		this.nickname = nickname;
		this.name = name;
		this.phone = phone;
		this.joinDate = joinDate;
		this.userStatus = userStatus;
	}


	//getter
	public String getId_Email() {
		return id_Email;
	}

	

	public String getPassword() {
		return password;
	}

	public String getName() {
		return name;
	}

	public String getPhone() {
		return phone;
	}

	public String getNickname() {
		return nickname;
	}


	public Timestamp getJoinDate() {
		return joinDate;
	}


	public int getCheck() {
		return check;
	}



	public int getUserStatus() {
		return userStatus;
	}


	
}
