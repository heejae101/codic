package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.board.Board;
import model.board.BoardDao;

public class BoardListRequest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public BoardListRequest() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		BoardDao boardDao = BoardDao.getInstance();
		ArrayList<Board> list = boardDao.getBoard();	
		
		request.setAttribute("result", list); // result 값을 request에 저장
		
		String url ="/boardList";
		request.getRequestDispatcher(url).forward(request, response);
	}

}
