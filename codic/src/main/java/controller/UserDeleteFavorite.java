package controller;

import java.io.IOException;
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


@WebServlet("/UserDeleteFavorite")
public class UserDeleteFavorite extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public UserDeleteFavorite() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession requestSession = request.getSession();
		String user_email = (String) requestSession.getAttribute("email");
		int board_id = Integer.parseInt(request.getParameter("board_id"));
		
		System.out.println(user_email+"님이 즐겨찾기 제거요청하였습니다.");
		
		ContentDao contentDao = ContentDao.getInstance();
		boolean result = contentDao.removeContentLikeByUser(board_id, user_email);
		
		Map<String, Object> responseData = new HashMap<>();
		String resultJson = "";
		
		if(result) {
			responseData.put("msg", "즐겨찾기 제거 완료");
			resultJson = new Gson().toJson(responseData);
	        
	        response.setCharacterEncoding("UTF-8");
	        response.setContentType("application/json; charset=utf-8");
		}
		System.out.println("결과"+result);
		response.getWriter().append(resultJson);
	}
}
