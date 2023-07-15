package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.JsonElement;
import model.user.UserDao;
import model.user.UserRequestDto;
import util.KaKaoAuthManager;

@WebServlet("/KakaoAuthRequestAction")
public class KakaoAuthRequestAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public KakaoAuthRequestAction() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		KaKaoAuthManager authRequest = new KaKaoAuthManager();

		// OAuth 인증 요청 URL 생성
		String codeRequrl = "https://kauth.kakao.com/oauth/authorize?" + "client_id=" + authRequest.client_id + "&redirect_uri="
				+ authRequest.redirect_uri + "&response_type=code";

		// 인가코드 요청 파라미터에서 응답 코드 값을 가져온다.
		String code = request.getParameter("code");

		// 응답 코드가 없다면 인가 요청으로 리다이렉트
		if (code == null) {
			response.sendRedirect(codeRequrl);
			return;
		}

		String accessToken = authRequest.getKakaoAccessToken(code);
		JsonElement result = authRequest.getUserInfoByAccessToken(accessToken);
		
		int id = result.getAsJsonObject().get("id").getAsInt();
		boolean hasEmail = result.getAsJsonObject().get("kakao_account").getAsJsonObject().get("has_email").getAsBoolean();
		String userEmail = "";
		if (hasEmail) {
			userEmail = result.getAsJsonObject().get("kakao_account").getAsJsonObject().get("email").getAsString();
		}
		String nickName = result.getAsJsonObject().get("properties").getAsJsonObject().get("nickname").getAsString();
		
		UserDao userDao = UserDao.getInstance();
		String getUserToken = userDao.checkKakaoUserByEmail(userEmail);
		
		if(getUserToken == null) {			
			UserRequestDto user = new UserRequestDto(userEmail, nickName, nickName, 1, accessToken);
			boolean kakaoResult = userDao.createKaKaoUser(user);
		}
		
		HttpSession session=request.getSession();
		session.setAttribute("nickname",nickName);
		session.setAttribute("email",userEmail);
		session.setAttribute("name",nickName);
		response.sendRedirect("main");

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}
}