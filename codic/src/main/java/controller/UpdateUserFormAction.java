package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.user.UserDao;
import model.user.UserRequestDto;

/**
 * Servlet implementation class UpdateUserFormAction
 */
@WebServlet("/UpdateUserFormAction")
public class UpdateUserFormAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateUserFormAction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
//	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		UserRequestDto userDto=null;
		
		String email=request.getParameter("user_email");
		String password=request.getParameter("user_password");
		String newPassword=request.getParameter("new_password");
		String name=request.getParameter("user_name");
		String phone=request.getParameter("user_phone_num");
		String nickname=request.getParameter("user_nickname");
		
	    
	    userDto=new UserRequestDto(email, newPassword, name, phone, nickname,0,0);
	    
	    UserDao userDao=UserDao.getInstance();
	    userDao.updateUser(userDto, password);
	    
	    String url="UpdateUserRequest";
	    response.sendRedirect(url);
		
		
	}

}
