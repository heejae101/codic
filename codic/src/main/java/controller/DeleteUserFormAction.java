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
		request.setCharacterEncoding("UTF-8");
		EncryptionDataManager encrypt = new EncryptionDataManager();
		String email = request.getParameter("user_email");
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
		
		if (user.getUser_password().equals(password)) {
			if (result) {
				 resultJson="";
				request.getSession().invalidate();
				url = "main";
				System.out.println("삭제");
			} else {
				System.out.println("삭제 실패");
			
			}
		}else {
			responseData.put("msg", "비밀번호가 올바르지 않습니다.");
	        System.out.println("비밀번호 옳지않음");
	        System.out.println("결과 :"+responseData.toString());
	        
	        resultJson = new Gson().toJson(responseData);
	        
	        response.setCharacterEncoding("UTF-8");
	        response.setContentType("application/json; charset=utf-8");
			
			
		}
		
		HttpSession session=request.getSession();
		session.invalidate();
		response.getWriter().append(resultJson);

	}

}
