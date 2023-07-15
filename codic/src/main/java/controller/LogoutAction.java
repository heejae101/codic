package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.user.UserDao;
import util.KaKaoAuthManager;


public class LogoutAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LogoutAction() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		UserDao userDao = UserDao.getInstance();
		KaKaoAuthManager kakaoAuth = new KaKaoAuthManager();
		String user_email = (String) session.getAttribute("email");
		
		String result = userDao.checkKakaoUserByEmail(user_email);
		if(result != null) {
			kakaoAuth.kakaoLogout(result);
		}
		session.invalidate();
		System.out.println(user_email+"님"+"로그아웃 하셨습니다.");
		response.sendRedirect("main");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		HttpSession session=request.getSession();
//		UserDao userDao = UserDao.getInstance();
//		KaKaoAuthManager kakaoAuth = new KaKaoAuthManager();
//		String user_email = (String) session.getAttribute("email");
//		
//		String result = userDao.checkKakaoUserByEmail(user_email);
//		if(result != null) {
//			kakaoAuth.kakaoLogout(result);
//		}
//		session.invalidate();
//		System.out.println(user_email+"님"+"로그아웃 하셨습니다.");
//		response.sendRedirect("main");
	}

}
