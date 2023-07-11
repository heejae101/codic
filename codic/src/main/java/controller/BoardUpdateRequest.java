package controller;

import java.io.IOException;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.board.Board;
import model.board.BoardDao;

/**
 * Servlet implementation class BoardUpdateRequest
 */
//@WebServlet("/BoardUpdateRequest")
public class BoardUpdateRequest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardUpdateRequest() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		System.out.println("업데이트 리퀘스트 도착");
		BoardDao boardDao = BoardDao.getInstance();
		
		String userEmail = (String) request.getSession().getAttribute("user_email");
		System.out.println(userEmail);
		
		Board board = boardDao.getBoardById(userEmail);
		System.out.println(board);
		
		String url = "/BoardContentView?board_id="+board.getBoard_id();
		
		if(board != null) {
			
			String title = board.getBoard_title();
			String text = board.getBoard_text();
			String email = board.getUser_email();
			
			request.setAttribute("title", title);
			request.setAttribute("text", text);
			request.setAttribute("email", email);
			
			request.setAttribute("result", board);
			url = "/boardUpdate";
		}

		request.getRequestDispatcher(url).forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */

}
