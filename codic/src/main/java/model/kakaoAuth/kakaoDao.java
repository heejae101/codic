package model.kakaoAuth;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import model.user.UserDao;

public class kakaoDao {
	// Database 연동을 위한 준비
		private Connection conn;
		private PreparedStatement pstmt;
		private ResultSet rs;

		// Dao는 싱글톤으로 구현하기
		private kakaoDao() {
		}

		private static kakaoDao instance = new kakaoDao();

		public static kakaoDao getInstance() {
			return instance;
		}
}
