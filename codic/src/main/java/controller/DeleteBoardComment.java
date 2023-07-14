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

import model.board.BoardCommentDao;
import model.board.BoardDao;

public class DeleteBoardComment extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public DeleteBoardComment() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession requestSession = request.getSession();
		int board_id = Integer.parseInt(request.getParameter("board_id"));
		int comment_id = Integer.parseInt(request.getParameter("comment_id"));
		String user_email = (String) requestSession.getAttribute("email");
		
		System.out.println(user_email+"님 "+board_id+"번 게시글의 "+comment_id+"번 댓글 삭제요청");
		
		BoardCommentDao boardCommentDao = BoardCommentDao.getInstance();
		boolean result = boardCommentDao.deleteBoardComment(comment_id);
    	
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
