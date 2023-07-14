package util;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.util.Random;

public class EncryptionDataManager {
	private final int REPEAT = 100;
	private final String SALT = "그린컴퓨터";
	
	public String passwordEncrypt(String password) throws Exception {
		return encryptWithSaltAndHash(getByteByPw(password));
	}

	private String encryptWithSaltAndHash(byte[] pw) throws Exception {
		MessageDigest md = MessageDigest.getInstance("SHA-256");
		byte[] saltBytes = SALT.getBytes(); // SALT도 byte[] 형태로 변환

		for (int i = 0; i < REPEAT; i++) {
			byte[] temp = new byte[pw.length + saltBytes.length]; // pw와 SALT를 합칠 byte[] 배열

			System.arraycopy(pw, 0, temp, 0, pw.length);
			System.arraycopy(saltBytes, 0, temp, pw.length, saltBytes.length);
			
			md.update(temp);
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

//	public String generateActivationCode() {
//      ---직접구현---
//		String randomString = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
//		Random random = new Random();
//		String authToken = "";
//		int repeat = 6;
//		
//		for (int i = 0; i < repeat; i++) {
//			int code = random.nextInt(randomString.length());
//			authToken += randomString.substring(code, code + 1);
//		}
//		
//		return authToken;
//	}
	public String generateActivationCode() {
	    String randomString = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
	    Random random = new Random();
	    StringBuilder authToken = new StringBuilder();
	    int repeat = 6;
	    
	    for (int i = 0; i < repeat; i++) {
	        int code = random.nextInt(randomString.length());
	        authToken.append(randomString.substring(code, code + 1));
	    }
	    
	    return authToken.toString();
	}
}
