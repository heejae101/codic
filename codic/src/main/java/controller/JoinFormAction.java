package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.user.User;
import model.user.UserDao;
import model.user.UserRequestDto;
import util.EncryptionDataManager;

public class JoinFormAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public JoinFormAction() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		String email = request.getParameter("user_email");
		String password = request.getParameter("user_password");
		String name = request.getParameter("user_name");
		String nickname = request.getParameter("user_nickname");
		int check = Integer.parseInt(request.getParameter("user_check"));
		int status = Integer.parseInt(request.getParameter("user_status"));

		UserDao userDao = UserDao.getInstance();
		EncryptionDataManager encrypt = new EncryptionDataManager();
		String encryptPassword = null;
		String url = "join";
		
		try {
			encryptPassword = encrypt.passwordEncrypt(password);
		} catch (Exception e) {
			e.printStackTrace();
			encryptPassword = null;
		}
		
		if(encryptPassword != null) {
			UserRequestDto user = new UserRequestDto(email, encryptPassword, name, nickname, check, status);
			boolean result = userDao.createUser(user);
			url = "login";
		}
		response.sendRedirect(url);

	}

}
