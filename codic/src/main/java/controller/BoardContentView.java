package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.board.Board;
import model.board.BoardDao;
import model.content.ContentDao;

public class BoardContentView extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public BoardContentView() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int board_id = Integer.parseInt(request.getParameter("board_id"));
		BoardDao boardDao = BoardDao.getInstance();
		Board board = boardDao.getBoardByNo(board_id);
		boolean result = boardDao.setViewsById(board_id);
		
		if(result) {
			String url ="/boardView";
			request.setAttribute("result", board);
			request.getRequestDispatcher(url).forward(request, response);			
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
