package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.board.BoardDao;
import model.board.BoardRequestDto;

/**
 * Servlet implementation class BoardFormAction
 */
public class BoardFormAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardFormAction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
//	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		request.setCharacterEncoding("UTF-8");
		
		int board_id = Integer.parseInt(request.getParameter("board_id"));
		String user_email = request.getParameter("user_email");
		String board_title = request.getParameter("board_title");
		String board_text = request.getParameter("board_text");
		int board_view_count = Integer.parseInt(request.getParameter("board_view_count"));
		String current_timestamp = request.getParameter("current_timestamp");
		String modified_timestamp = request.getParameter("modified_timestamp");
		
		BoardRequestDto board = new BoardRequestDto(board_id, user_email, board_title, board_text, board_view_count, current_timestamp, modified_timestamp);
		
		BoardDao boardDao = BoardDao.getInstance();
		
		boolean result = boardDao.createBoard(board);
		
		String url = "";
		
		if(result) 
			url = "폼액션 수정 필요";
		else
			url = "폼액션 수정 필요";

		response.sendRedirect(url);
		
	}

}
