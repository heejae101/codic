package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.board.BoardDao;
import model.board.BoardRequestDto;
import model.user.UserDao;
import model.user.UserRequestDto;

/**
 * Servlet implementation class BoardUpdateFormAction
 */
//@WebServlet("/BoardUpdateFormAction")
public class BoardUpdateFormAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardUpdateFormAction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("업데이트 폼액션 도착");
		
		String user_email = request.getParameter("user_email");
		String board_title = request.getParameter("board_title");
		String board_text = request.getParameter("new-board_text");
		
		BoardDao boardDao = BoardDao.getInstance();
		boardDao.updateBoard(user_email, board_title,board_text);
		
		String url = "/BoardUpdateRequest";
		response.sendRedirect(url);
	}

}
