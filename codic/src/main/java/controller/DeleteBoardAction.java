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

import model.board.BoardDao;

public class DeleteBoardAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public DeleteBoardAction() {
        super();
        
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	request.setCharacterEncoding("UTF-8");
    	HttpSession requestSession = request.getSession();
    	int board_id = Integer.parseInt(request.getParameter("board_id"));
    	String user_email = (String) requestSession.getAttribute("email");
    	
    	// 나중에 로그 추가
    	System.out.println(board_id+"게시글 "+user_email+"님의 게시글 삭제 요청");
    	
    	BoardDao boardDao = BoardDao.getInstance();
    	boolean result = boardDao.deleteBoardByBoardId(board_id);
    	
    	System.out.println("요청 결과 : "+result);
    	
    	Map<String, Object> responseData = new HashMap<>();
    	responseData.put("result",result);
    	
    	// JSON 객체로 보냄
		String resultJson = new Gson().toJson(responseData);
		response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(resultJson);

    }
}
