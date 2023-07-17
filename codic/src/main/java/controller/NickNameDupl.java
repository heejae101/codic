package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.user.User;
import model.user.UserDao;

/**
 * Servlet implementation class NickNameDupl
 */

public class NickNameDupl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NickNameDupl() {
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
		request.setCharacterEncoding("UTF-8");
		String nickname=request.getParameter("user_nickname");
	 
		
	  UserDao userDao=UserDao.getInstance();
	  boolean dupl=userDao.duplNickname(nickname);
	  PrintWriter out = response.getWriter();
		String msg="";
		
		if(!dupl) {
			msg="YES";
			out.print(msg);
			System.out.println("사용가능");
			
		}else {
			msg="NO";
			out.print(msg);
			System.out.println("중복닉네임");
		}
		
		
	}

}
