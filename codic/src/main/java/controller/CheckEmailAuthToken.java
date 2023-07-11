package controller;

import java.io.IOException;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class CheckEmailAuthToken extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String inputToken = request.getParameter("inputToken");
		String sessionToken = request.getParameter("sessionToken");
		String sessionValidTime = request.getParameter("sessionValidTime");
		
		// 확인 나중에 삭제
		System.out.println(1+inputToken);
		System.out.println(2+sessionToken);
		System.out.println(3+sessionValidTime);
		//==================
		
		Calendar calendar = Calendar.getInstance();
		String day = calendar.get(Calendar.YEAR)+"-"+(calendar.get(Calendar.MONTH)+1)+"-"+calendar.get(Calendar.DAY_OF_MONTH);
		String time = calendar.get(Calendar.HOUR_OF_DAY)+":"+(calendar.get(Calendar.MINUTE))+":"+calendar.get(Calendar.SECOND);
		String now = day+"/"+time;
		
		if(sessionValidTime == sessionValidTime && inputToken == sessionToken) {
			 HttpSession session = request.getSession();
	         session.removeAttribute("authToken");
	         session.removeAttribute("validTime");
	         session.setAttribute("emailVerified", true);
		}
		
		
		
	}

}
