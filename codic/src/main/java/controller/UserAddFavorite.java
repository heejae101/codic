package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import model.content.ContentDao;
import model.user.UserDao;
import model.user.UserFavoriteContent;

public class UserAddFavorite extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession requestSession = request.getSession();
		String user_email = (String) requestSession.getAttribute("email");
		ArrayList<UserFavoriteContent> list = (ArrayList<UserFavoriteContent>) requestSession.getAttribute("favorite");
		int content_id = Integer.parseInt(request.getParameter("content_id"));
		
		String resultJson = "";
		Map<String, Object> responseData = new HashMap<>();
		
		if(user_email != null) {
			System.out.println(user_email+"님이 즐겨찾기 추가요청하였습니다.");
			
			ContentDao contentDao = ContentDao.getInstance();
			UserDao user = UserDao.getInstance();
			boolean result = contentDao.addContentLikeByUser(content_id, user_email);
			
			if(result) {
				ArrayList<UserFavoriteContent> getList = user.getfavoriteByEmail(user_email);
				requestSession.setAttribute("favorite", getList);
				
				System.out.println("결과"+result);
				
				responseData.put("msg", "즐겨찾기 추가 완료");
				resultJson = new Gson().toJson(responseData);
				
				response.setCharacterEncoding("UTF-8");
				response.setContentType("application/json; charset=utf-8");
			}else {
				requestSession.setAttribute("favorite", list);
			}
		}else {
			responseData.put("msg", "로그인 부터 해주세요");
			resultJson = new Gson().toJson(responseData);
			
			response.setCharacterEncoding("UTF-8");
			response.setContentType("application/json; charset=utf-8");
		}
		response.getWriter().append(resultJson);
	}
}
