package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.board.BoardCommentDao;
import model.board.BoardCommentRequestDto;
import model.board.BoardDao;

/**
 * Servlet implementation class BoardCommentFormAction
 */
//@WebServlet("/BoardCommentFormAction")
public class BoardCommentFormAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardCommentFormAction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int board_id = Integer.parseInt(request.getParameter("board_id"));
		String user_email = request.getParameter("user_email");
		String board_answer = request.getParameter("board_answer");
		
		BoardCommentRequestDto boardComment = new BoardCommentRequestDto(board_id, user_email, board_answer);
		
		BoardCommentDao boardCommentDao = BoardCommentDao.getInstance();
		boolean result = boardCommentDao.createBoardComment(boardComment);
		
		
		String url = "";
		
		if(result)
			url = "";
		else
			url = "";
		
		response.sendRedirect(url);
	}

}
