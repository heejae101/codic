package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.user.UserDao;

public class DeleteUserFormAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DeleteUserFormAction() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email= request.getParameter("user_email");
		String password=request.getParameter("user_password");
		
		UserDao userDao=UserDao.getInstance();
		boolean result=userDao.deleteUserByEmail(email, password);
		
		String url="leave";
		
		if(result) {
			request.getSession().removeAttribute("log");

			url="main";//main으로 맵핑하고 수정

			
		}
		
		response.sendRedirect(url);
	}

}
