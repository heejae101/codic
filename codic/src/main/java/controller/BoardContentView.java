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
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int boardId = Integer.parseInt(request.getParameter("board_id"));
		BoardDao boardDao = BoardDao.getInstance();
		
		Board board = boardDao.getBoardByNo(boardId);
		
		String url ="/boardView";
		request.setAttribute("result", board);
		request.getRequestDispatcher(url).forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}