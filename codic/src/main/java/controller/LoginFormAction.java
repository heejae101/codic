package controller;

import java.io.IOException;
import java.io.PrintWriter;
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

public class LoginFormAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public LoginFormAction() {
        super();
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		EncryptionDataManager encrypt = new EncryptionDataManager();
		
		//jsp에서 입력한 값을 가져옴
		String email=request.getParameter("user_email");
		String requestPassword = request.getParameter("user_password");
		String password = "";
		
		
		try {
			password = encrypt.passwordEncrypt(requestPassword);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		UserDao userDao=UserDao.getInstance();
		User user = userDao.getUserByEmail(email);
		String nickname=userDao.getNicknameByEmail(email);
		String name=userDao.getNameByEmail(email);
		String profile=userDao.getProfileByEmail(email);
		String url="login";
		
		Map<String, Object> responseData = new HashMap<>();
		
		String resultJson = "";
		
		if(user!=null && user.getUser_password().equals(password) && nickname!=null && name!=null &&profile!=null) {
			url="main";//임시로
			
			
			HttpSession session=request.getSession();
			session.setAttribute("nickname",nickname);
			session.setAttribute("email",email);
			session.setAttribute("name",name);
			session.setAttribute("profile", profile);
			
		}else{
			responseData.put("msg", "아이디와 비밀번호가 일치하지 않습니다.");
	        System.out.println("아이디와 비밀번호 일치안함");
	        System.out.println("결과 :"+responseData.toString());
	        
	        resultJson = new Gson().toJson(responseData);
	        
	        response.setCharacterEncoding("UTF-8");
	        response.setContentType("application/json; charset=utf-8");
		}		
		
		response.getWriter().append(resultJson);
	}

}
