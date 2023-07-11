package util;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;

public class SHA256 {
	public class Test {
	   
	   // 반복 횟수
	   private final int REPEAT = 100;
	   private final String SALT = "그린아카데미";
	   
	   // 64숫자를 반환함
	   private String get_SALT(byte[] pw) throws Exception {
	      MessageDigest md = MessageDigest.getInstance("SHA-256");
	      
	      for(int i=0; i<REPEAT; i++) {
	         String temp = pw + SALT;
	         md.update(temp.getBytes());
	         pw = md.digest();
	      }
	      
	      return Byte_to_String(pw);
	   }
	   
	   private String Byte_to_String(byte[] temp) {
	      StringBuilder sb = new StringBuilder();
	      for(byte a : temp) {
	         sb.append(String.format("%02x", a));
	      }
	      return sb.toString();
	   }
	   
	   
	   public static void main(String[] args) throws Exception {
	      Test ps = new Test();
	      String str = "뤼튼";
	      byte[] byteArray = str.getBytes(StandardCharsets.UTF_8);
	      System.out.println(ps.get_SALT(byteArray));
	   }
}
}
