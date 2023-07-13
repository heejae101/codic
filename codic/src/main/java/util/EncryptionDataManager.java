package util;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.util.Random;

public class EncryptionDataManager {
	private final int REPEAT = 100;
	private final String SALT = "그린아카데미";
	
	public String passwordEncrypt(String password) throws Exception {
		return encryptWithSaltAndHash(getByteByPw(password));
	}

	private String encryptWithSaltAndHash(byte[] pw) throws Exception {
		MessageDigest md = MessageDigest.getInstance("SHA-256");

		for (int i = 0; i < REPEAT; i++) {
			String temp = pw + SALT;
			md.update(temp.getBytes());
			pw = md.digest();
		}

		return byteToString(pw);
	}

	private String byteToString(byte[] temp) {
		StringBuilder sb = new StringBuilder();
		for (byte a : temp) {
			sb.append(String.format("%02x", a));
		}
		return sb.toString();
	}
	
	private byte[] getByteByPw(String str) {
		byte[] byteArray = str.getBytes(StandardCharsets.UTF_8);
		return byteArray;
	}

	public String generateActivationCode() {
		String randomString = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
		Random random = new Random();
		String authToken = "";
		int repeat = 6;
		
		for (int i = 0; i < repeat; i++) {
			int code = random.nextInt(randomString.length());
			authToken += randomString.substring(code, code + 1);
		}
		
		return authToken;
	}
}
