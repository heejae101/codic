package controller;

import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import model.board.Board;
import model.board.BoardCommentDao;
import model.board.BoardDao;


//@WebServlet("/BoardUpdateRequest")
public class BoardUpdateRequest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public BoardUpdateRequest() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		BoardDao boardDao = BoardDao.getInstance();
		String user_nickname = (String) request.getSession().getAttribute("user_nickname");
		Board board = boardDao.getBoardById(user_nickname);
		String url = "/BoardContentView?board_id="+board.getBoard_id();
		
		=================================
		Map<String, Object> responseData = new HashMap<>();
		
		if(user_email != null && user_nickname != null) {
			BoardCommentDao boardcommentDao = BoardCommentDao.getInstance();
			boardcommentDao.createBoardComment(board_id, user_email, board_answer, user_nickname);
			responseData.put("result", "CREATE_SUCCESS");
		}else {
			responseData.put("result", "CREATE_ERROR");
		}
		String resultJson = new Gson().toJson(responseData);
		response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(resultJson);
        ==================================
		if(board != null) {
			String title = board.getBoard_title();
			String text = board.getBoard_text();
			String email = board.getUser_email();
			
			request.setAttribute("result", board);
			url = "/boardUpdate";
		}

		request.getRequestDispatcher(url).forward(request, response);
		
	}

}
