package util;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;

import com.google.gson.JsonElement;
import com.google.gson.JsonParser;

public class KaKaoAuthManager {
	
	public String client_id = "YOUR_ID";
	public String redirect_uri = "http://codicblog.site/KakaoAuthRequestAction";

	public String getKakaoAccessToken(String code) {
        String access_Token = "";
        String refresh_Token = "";
        String reqURL = "https://kauth.kakao.com/oauth/token";

        try {
            URL url = new URL(reqURL);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();

            //POST 요청을 위해 기본값이 false인 setDoOutput을 true로
            conn.setRequestMethod("POST");
            conn.setDoOutput(true);

            //POST 요청에 필요로 요구하는 파라미터 스트림을 통해 전송
            BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
            StringBuilder sb = new StringBuilder();
            sb.append("grant_type=authorization_code");
            sb.append("&client_id="+client_id); // TODO REST_API_KEY 입력
            sb.append("&redirect_uri="+redirect_uri); // TODO 인가코드 받은 redirect_uri 입력
            sb.append("&code=" + code);
            bw.write(sb.toString());
            bw.flush();

            //결과 코드가 200이라면 성공
            int responseCode = conn.getResponseCode();
            System.out.println("responseCode : " + responseCode);

            //요청을 통해 얻은 JSON타입의 Response 메세지 읽어오기
            BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
            String line = "";
            String result = "";

            while ((line = br.readLine()) != null) {
                result += line;
            }
            System.out.println("response body : " + result);

            //Gson 라이브러리에 포함된 클래스로 JSON파싱 객체 생성
            JsonParser parser = new JsonParser();
            JsonElement element = parser.parse(result);

            access_Token = element.getAsJsonObject().get("access_token").getAsString();
            refresh_Token = element.getAsJsonObject().get("refresh_token").getAsString();

            System.out.println("access_token : " + access_Token);
            System.out.println("refresh_token : " + refresh_Token);

            br.close();
            bw.close();
        } catch (IOException e) {
            e.printStackTrace();
        }

        return access_Token;
    }
	
	public JsonElement getUserInfoByAccessToken(String token){
		String reqURL = "https://kapi.kakao.com/v2/user/me";
		JsonElement element = null;
		
	    //access_token을 이용하여 사용자 정보 조회
	    try {
	       URL url = new URL(reqURL);
	       HttpURLConnection conn = (HttpURLConnection) url.openConnection();

	       conn.setRequestMethod("POST");
	       conn.setDoOutput(true);
	       conn.setRequestProperty("Authorization", "Bearer " + token); //전송할 header 작성, access_token전송

	       //결과 코드가 200이라면 성공
	       int responseCode = conn.getResponseCode();
	       System.out.println("responseCode : " + responseCode);

	       //요청을 통해 얻은 JSON타입의 Response 메세지 읽어오기
	       BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
	       String line = "";
	       String result = "";

	       while ((line = br.readLine()) != null) {
	           result += line;
	       }
	       System.out.println("response body : " + result);

	       //Gson 라이브러리로 JSON파싱
	       JsonParser parser = new JsonParser();
	       element = parser.parse(result);

	       br.close();

	       } catch (Exception e) {
	            e.printStackTrace();
	       }
	    return element;
	 }
	
	public void kakaoLogout(String access_Token) {
	    String reqURL = "https://kapi.kakao.com/v1/user/unlink";
	    try {
	        URL url = new URL(reqURL);
	        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
	        conn.setRequestMethod("POST");
	        conn.setDoOutput(true);
	        conn.setRequestProperty("Authorization","Bearer "+ access_Token);

	    } catch (IOException e) {
	        e.printStackTrace();
	    }
	}
}
