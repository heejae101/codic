package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.user.User;
import model.user.UserDao;

/**
 * Servlet implementation class LoginFormAction
 */

public class LoginFormAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginFormAction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    
		//jsp에서 입력한 값을 가져옴
		String email=request.getParameter("user_email");
		String password=request.getParameter("user_password");
		
		
		UserDao userDao=UserDao.getInstance();
		User user = userDao.getUserByEmail(email);
		String url="login";
		String nickname=userDao.getNicknameByEmail(email);
	    
		System.out.println("닉네임"+nickname);
		
		if(user!=null && user.getUser_password().equals(password)&&nickname!=null) {
			url="../views/main.jsp";//임시로
			
			//로그인한 회원의 아이디를->session에 속성값으로 저장
			HttpSession session=request.getSession();
			session.setAttribute("log",nickname);//닉네임으로 바꾸고 싶음
			session.setAttribute("log1",email);
			
		}
		response.sendRedirect(url);
		
		
	}

}
