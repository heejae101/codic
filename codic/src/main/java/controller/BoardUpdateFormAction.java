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
 * Servlet implementation class BoardUpdateFormAction
 */
@WebServlet("/BoardUpdateFormAction")
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
		
		String email = request.getParameter("user_email");
		String title = request.getParameter("board_title");
		String text = request.getParameter("board_text");
		
		BoardRequestDto boardDto = new BoardRequestDto(title, text);
		
		BoardDao boardDao = BoardDao.getInstance();
		boolean result = boardDao.createBoard(boardDto);
		boardDao.updateBoard(email ,title, text);
		
		String url = "";
		
		if(result) 
			url = "/views/write.jsp";
		else
			url = "/views/board.jsp";
		
		
		response.sendRedirect(url);
	}

}
