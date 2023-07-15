package controller;

import java.io.IOException;
import java.util.Calendar;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import util.AuthManager;

public class CheckEmailAuthToken extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		AuthManager auth = new AuthManager();
		String inputToken = request.getParameter("input_code");
		String userEmail = request.getParameter("email");
		
		HttpSession requestSession = request.getSession();
		String sessionToken = (String) requestSession.getAttribute("VERIFICATION_CODE");
		String sessionValidTime = (String) requestSession.getAttribute("VerificationDuration");
		
		String nowDate = auth.getCurrentTime1().split("/")[0];
		int nowTime = Integer.parseInt(auth.getCurrentTime1().split("/")[1]);
		
		String validDate = sessionValidTime.split("/")[0];
		int validTime = Integer.parseInt(sessionValidTime.split("/")[1]);
		
		Map<String, Object> responseData = new HashMap<>();
		
		if(nowDate.equals(validDate) && nowTime < validTime) {
			if(inputToken.equals(sessionToken)) {
				responseData.put("result", "VERIFICATION_SENT");
			}else {
				responseData.put("result", "The token code is invalid.");
			}
		}else {
			responseData.put("result", "The token code has expired.");
		}
		HttpSession responseSession = request.getSession();
		
		if(userEmail != null) {
			responseSession.setAttribute("email", userEmail);
		}
		
		String resultJson = new Gson().toJson(responseData);
		response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(resultJson);
		
		
//		System.out.println("==========");
//      세션값 다 볼 수 있음
//		Enumeration<String> attributeNames = emailSession.getAttributeNames();
//
//		while (attributeNames.hasMoreElements()) {
//		    String attributeName = attributeNames.nextElement();
//		    Object attributeValue = emailSession.getAttribute(attributeName);
//		    System.out.println("Attribute name: " + attributeName + ", Attribute value: " + attributeValue);
//		}
		
		
	}

}
