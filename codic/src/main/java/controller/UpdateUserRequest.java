package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.user.User;
import model.user.UserDao;

/**
 * Servlet implementation class UpdateUserRequest
 */

public class UpdateUserRequest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateUserRequest() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	
		request.setCharacterEncoding("UTF-8");
		
		UserDao userDao=UserDao.getInstance();
		
		String email=(String)request.getSession().getAttribute("email");
		
		User user=userDao.getUserByEmail(email);
		
		
		String name="";
		String nickname="";
		int check=0;
	    int status=0;
	    
	    String url="login";
	    
	    if(user!=null) {
	     
	       name=user.getUser_name();
	       nickname=user.getUser_nickname();
	       check=user.getUser_check();
	       status=user.getUser_status();
	       
	      
	       request.setAttribute("name", name);
	       request.setAttribute("nickname", nickname);
	       request.setAttribute("check", check);
	       request.setAttribute("status", status);
	      
	       url="update";
	    }
		
		request.getRequestDispatcher(url).forward(request,response);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	//protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	//	doGet(request, response);
//	}

}
