package controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import model.user.UserDao;
import model.user.UserRequestDto;
import util.EncryptionDataManager;

public class UpdateUserFormAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public UpdateUserFormAction() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		UserRequestDto userDto=null;
		EncryptionDataManager encrypt = new EncryptionDataManager();
		
		String email=request.getParameter("user_email");
		String newPassword = null;
		try {
			newPassword = encrypt.passwordEncrypt(request.getParameter("new_password"));
		} catch (Exception e) {
			e.printStackTrace();
		}
		String name=request.getParameter("user_name");
		String nickname=request.getParameter("user_nickname");
		
		System.out.println(email+"님의 정보 수정 요청");
		
		Map<String, Object> responseData = new HashMap<>();
		
		if(newPassword != null) {
			responseData.put("result", "true");
			userDto=new UserRequestDto(email,newPassword,name,nickname,0,0);
			UserDao userDao=UserDao.getInstance();
			userDao.updateUser(userDto, newPassword);
		}else responseData.put("result", "false");
		 
		System.out.println("결과 :"+responseData.toString());
		
        String resultJson = new Gson().toJson(responseData);
	    String url="main";
	    response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(resultJson);
	    response.sendRedirect(url);

	}

}
