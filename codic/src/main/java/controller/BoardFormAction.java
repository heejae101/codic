package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.board.Board;
import model.board.BoardDao;
import model.board.BoardRequestDto;

/**
 * Servlet implementation class BoardFormAction
 */
@WebServlet("/BoardFormAction")
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
		

		String user_email = request.getParameter("email");
		String board_title = request.getParameter("title");
		String board_text = request.getParameter("text");
		int board_view_count = Integer.parseInt(request.getParameter("view_count"));
		
		BoardRequestDto board = new BoardRequestDto(user_email, board_title, board_text, board_view_count);
		
		BoardDao boardDao = BoardDao.getInstance();
		boolean result = boardDao.createBoard(board);
		
		String url = "";
		
		if(result) 
			url = "/views/write.jsp";
		else
			url = "board";

		System.out.println(url);
		response.sendRedirect(url);
		
	}

}
