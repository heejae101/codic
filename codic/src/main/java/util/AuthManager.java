package util;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;

import com.google.gson.JsonElement;
import com.google.gson.JsonParser;

public class AuthManager {
	
	private int verificationDuration = 3;
	private Calendar calendar = Calendar.getInstance();
	
	// format 2023-07-11/10:06:32
	public String getCurrentTime() {
		return calendar.get(Calendar.YEAR)+"-"+(calendar.get(Calendar.MONTH)+1)+"-"+calendar.get(Calendar.DAY_OF_MONTH)
		+"/"+calendar.get(Calendar.HOUR_OF_DAY)+""+(calendar.get(Calendar.MINUTE))+""+calendar.get(Calendar.SECOND);		
	}
	
	public String getVerificationDuration() {
		return calendar.get(Calendar.YEAR)+"-"+(calendar.get(Calendar.MONTH)+1)+"-"+calendar.get(Calendar.DAY_OF_MONTH)
		+"/"+calendar.get(Calendar.HOUR_OF_DAY)+""+(calendar.get(Calendar.MINUTE)+verificationDuration)+""+calendar.get(Calendar.SECOND);	
	}
	
	public String getCurrentTime1() {
		LocalDateTime current = LocalDateTime.now();
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd/HHmmss");
		return current.format(formatter);
	}
	
	public String getVerificationDuration1() {
		LocalDateTime verificationEndTime = LocalDateTime.now().plusMinutes(verificationDuration);
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd/HHmmss");
		return verificationEndTime.format(formatter);
	}
	
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
            sb.append("&client_id=eb5be89f3a2f5e6fd160e4a68ac204a8"); // TODO REST_API_KEY 입력
            sb.append("&redirect_uri=http://localhost:8080/login"); // TODO 인가코드 받은 redirect_uri 입력
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
}
