package controller;

import java.io.IOException;
import java.util.Calendar;
import java.util.Enumeration;

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
		
		HttpSession emailSession = request.getSession();
		String sessionToken = (String) emailSession.getAttribute("AuthToken");
		String sessionValidTime = (String) emailSession.getAttribute("AuthTime");
		
		String validDate = sessionValidTime.split("/")[0];
		int validTime = Integer.parseInt(sessionValidTime.split("/")[1]);
		
		
//		System.out.println("==========");
//      세션값 다 볼 수 있음
//		Enumeration<String> attributeNames = emailSession.getAttributeNames();
//
//		while (attributeNames.hasMoreElements()) {
//		    String attributeName = attributeNames.nextElement();
//		    Object attributeValue = emailSession.getAttribute(attributeName);
//		    System.out.println("Attribute name: " + attributeName + ", Attribute value: " + attributeValue);
//		}
		
		Calendar calendar = Calendar.getInstance();
		String currentday = calendar.get(Calendar.YEAR)+"-"+(calendar.get(Calendar.MONTH)+1)+"-"+calendar.get(Calendar.DAY_OF_MONTH);
		int currentTime = Integer.parseInt(calendar.get(Calendar.HOUR_OF_DAY)+""+(calendar.get(Calendar.MINUTE))+""+calendar.get(Calendar.SECOND));
		int hour = calendar.get(Calendar.HOUR_OF_DAY);
		int minute = calendar.get(Calendar.MINUTE);
		int second = calendar.get(Calendar.SECOND);

		String timeString = String.format("%02d%02d%02d", hour, minute, second);
		
		if(validDate.equals(currentday) && validTime >= currentTime && inputToken.equals(sessionToken)) {
			emailSession.setAttribute("EmailCheck", true);
		}
		response.sendRedirect("/views/emailAuth.jsp");
		
	}

}
