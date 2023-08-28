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

import model.user.User;
import model.user.UserDao;
import util.EncryptionDataManager;

public class DeleteUserFormAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public DeleteUserFormAction() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("application/json; charset=utf-8");

		request.setCharacterEncoding("UTF-8");
		EncryptionDataManager encrypt = new EncryptionDataManager();

		HttpSession session = request.getSession();

//		String email = request.getParameter("user_email");
		String email = (String) session.getAttribute("email");
		String password = request.getParameter("user_password");

		try {
			password = encrypt.passwordEncrypt(password);
		} catch (Exception e) {
			e.printStackTrace();
		}

		UserDao userDao = UserDao.getInstance();
		User user = userDao.getUserByEmail(email);
		boolean result = userDao.deleteUserByEmail(email, password);

		String url = "leave";

		Map<String, Object> responseData = new HashMap<>();

		String resultJson = "";

		if (user != null && user.getUser_password().equals(password)) {
			if (result) {
				session.invalidate();
				responseData.put("result", true);
				System.out.println("삭제");

			} else {
				System.out.println("삭제 실패");

			}
		} else {
			System.out.println("비밀번호 옳지않음");
			System.out.println("결과 :" + responseData.toString());

			responseData.put("result", false);
		}

		resultJson = new Gson().toJson(responseData);
		response.getWriter().append(resultJson);

	}

}
