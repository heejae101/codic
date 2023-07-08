package controller;

import java.io.IOException;
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

/**
 * Servlet implementation class JoinFormAction
 */
@WebServlet("/JoinFormAction")
public class JoinFormAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JoinFormAction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String email=request.getParameter("user_email");
		String password=request.getParameter("user_password");
		String name=request.getParameter("user_name");
		String phone=request.getParameter("user_phone_num");
		String nickname=request.getParameter("user_nickname");
		int check=Integer.parseInt(request.getParameter("user_check"));
	    int status=Integer.parseInt(request.getParameter("user_status"));
	    
	    UserRequestDto user= new UserRequestDto(email, password, name, phone, nickname, check, status);
		
	 
		UserDao userDao=UserDao.getInstance();
		boolean result= userDao.createUser(user);
		
		String url="";
		
		if(result) {
			url="/views/loginForm.jsp";
		}else {
		   url="/views/joinForm.jsp";	
		}
		response.sendRedirect(url);
		
		
	}

}
