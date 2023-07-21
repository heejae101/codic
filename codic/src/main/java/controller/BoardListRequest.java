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

import model.board.Board;
import model.board.BoardDao;

public class BoardListRequest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public BoardListRequest() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		HttpSession requestSession = request.getSession();
		String user_email = (String) requestSession.getAttribute("email");
		
		// 나중에 로그 추가
		if(user_email == null) {
			user_email = "GUEST";
		}
		System.out.println(user_email+"님의 게시글 리스트 요청");
		
		BoardDao boardDao = BoardDao.getInstance();	
		ArrayList<Board> list = boardDao.getBoard();
		
		// 게시글 리스트 갯수
		int listSize = list.size();
		requestSession.setAttribute("listSize", listSize);
		
		boolean result = list != null ? true : false;
		System.out.println("요청 결과 : "+result);
    	
		Map<String, Object> responseData = new HashMap<>();
		responseData.put("result",list);
    	
    	// JSON 객체로 보냄
		String resultJson = new Gson().toJson(responseData);
		response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(resultJson);
	}

}
