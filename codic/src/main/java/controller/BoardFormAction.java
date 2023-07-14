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
		HttpSession requestSession = request.getSession();
		String board_email = (String) requestSession.getAttribute("email");
		String board_nickname = (String) requestSession.getAttribute("nickname");
		String board_title = request.getParameter("title");
		String board_text = request.getParameter("contents");

		BoardRequestDto board = new BoardRequestDto(board_email, board_title, board_text, board_nickname);
		System.out.println(board);
		BoardDao boardDao = BoardDao.getInstance();
		boolean result = boardDao.createBoard(board);
		
		String url = "";
		
		if(result) 
			url = "/boardList";
		else
			url = "/writeBoard";

		response.sendRedirect(url);
		
	}

}
