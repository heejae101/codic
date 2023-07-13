package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import model.board.BoardComment;
import model.board.BoardCommentDao;
import model.board.BoardCommentRequestDto;
import model.board.BoardDao;
import model.user.UserDao;

public class BoardCommentFormAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public BoardCommentFormAction() {
        super();
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String request_board_id = request.getParameter("board_id");
    	ArrayList<BoardComment> list = new ArrayList<BoardComment>();
    	int boardId = 0;
    	
    	if(request_board_id != null) {
    		try {
    			boardId = Integer.parseInt(request_board_id);
    			BoardCommentDao boardcommentDao = BoardCommentDao.getInstance();
    			list = boardcommentDao.getBoardCommentAll(boardId);
			} catch (Exception e) {
				System.err.println("이상한 접근");
			}
    	}
    	 response.setContentType("application/json");
         response.setCharacterEncoding("UTF-8");
         response.getWriter().write(new Gson().toJson(list));
	}
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int board_id = Integer.parseInt(request.getParameter("board_id"));
		String user_nickname = request.getParameter("nickname");
		String user_email = request.getParameter("email");
		String board_answer = request.getParameter("contents");
		
		UserDao userDao = UserDao.getInstance(); 
		BoardCommentDao boardcommentDao = BoardCommentDao.getInstance();
		boardcommentDao.createBoardComment(board_id, user_email, board_answer, user_nickname);
		
	}

}
