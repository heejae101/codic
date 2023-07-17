package controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import model.user.UserDao;
import util.EncryptionDataManager;

public class UserPasswordCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public UserPasswordCheck() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		EncryptionDataManager encrypt = new EncryptionDataManager();
		HttpSession requestSession = request.getSession();
		
		String userEmail = (String) requestSession.getAttribute("email");
		String userPassword = request.getParameter("user_password");
		boolean result = true;
		
		System.out.println(userEmail+"님 회원정보 수정전 비밀번호 확인 요청");
		
		try {
			userPassword = encrypt.passwordEncrypt(userPassword);
		} catch (Exception e) {
			result = false;
			e.printStackTrace();
		}
		
		Map<String, Object> responseData = new HashMap<>();
		UserDao userDao=UserDao.getInstance();
		result  = userDao.userPasswordCheck(userEmail, userPassword);
		
		System.out.println("결과 : "+ result);
		
		responseData.put("result", result);
		response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(new Gson().toJson(responseData));
	}

}
