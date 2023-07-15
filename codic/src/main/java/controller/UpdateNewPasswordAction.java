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

public class UpdateNewPasswordAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UpdateNewPasswordAction() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession requestSession = request.getSession();
		EncryptionDataManager encryption = new EncryptionDataManager();
		String email = (String) requestSession.getAttribute("email");
		String new_password = null;
		try {
			new_password = encryption.passwordEncrypt(request.getParameter("new_password"));
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		System.out.println(email+"님의 새로운 비밀번호로 변경 요청");
		
		boolean isNullCheck = false;
		
		if(email != null && new_password != null) {
			isNullCheck = true;
		}
		
		UserDao userDao = UserDao.getInstance();
		boolean result = userDao.updateNewPassword(email,new_password);
		
		Map<String, Object> responseData = new HashMap<>();
		
		if(isNullCheck) {
			if(result) {
				responseData.put("result", "VERIFICATION_SENT");
			}else {
				responseData.put("result", "DB_ERROR");
			}
		}else {
			responseData.put("result", "INPUTVALUE_ISNULL");
		}
		
		System.out.println("결과 출력"+result);
		
		String resultJson = new Gson().toJson(responseData);
		response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(resultJson);
        response.sendRedirect("main");
	}

}
