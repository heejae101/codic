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

public class BoardFormAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public BoardFormAction() {
        super();
    }

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
			url = "/BoardListRequest";
		else
			url = "/writeBoard";

		response.sendRedirect(url);
		
	}

}
