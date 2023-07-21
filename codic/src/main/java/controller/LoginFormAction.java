package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import model.user.User;
import model.user.UserDao;
import model.user.UserFavoriteContent;
import util.EncryptionDataManager;

public class LoginFormAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginFormAction() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setCharacterEncoding("UTF-8");
		response.setContentType("application/json; charset=utf-8");
		request.setCharacterEncoding("UTF-8");
		EncryptionDataManager encrypt = new EncryptionDataManager();

		// jsp에서 입력한 값을 가져옴
		String email = request.getParameter("user_email");
		String requestPassword = request.getParameter("user_password");
		String password = "";

		try {
			password = encrypt.passwordEncrypt(requestPassword);
		} catch (Exception e) {
			e.printStackTrace();
		}

		UserDao userDao = UserDao.getInstance();
		User user = userDao.getUserByEmail(email);
		String nickname = userDao.getNicknameByEmail(email);
		String name = userDao.getNameByEmail(email);
		String profile = userDao.getProfileByEmail(email);
		ArrayList<UserFavoriteContent> list = userDao.getfavoriteByEmail(email);

		Map<String, Object> responseData = new HashMap<>();
		String resultJson = "";

		if (user != null && user.getUser_password().equals(password) && nickname != null && name != null) {
			HttpSession session = request.getSession();
			session.setAttribute("nickname", nickname);
			session.setAttribute("email", email);
			session.setAttribute("name", name);
			session.setAttribute("favorite", list);
			session.setAttribute("profile", profile);
			responseData.put("result", true);

		} else {
			responseData.put("result", false);
			System.out.println("결과 :" + responseData.toString());
			System.out.println("아이디와 비밀번호 일치안함");

		}
		resultJson = new Gson().toJson(responseData);
		response.getWriter().append(resultJson);
	}

}
