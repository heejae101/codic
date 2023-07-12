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

/**
 * Servlet implementation class BoardListRequest
 */
//@WebServlet("/BoardListRequest")
public class BoardListRequest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardListRequest() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		System.out.println("서블릿 도착");
		
		BoardDao boardDao = BoardDao.getInstance();
		ArrayList<Board> list = boardDao.getBoard10();	
		
		request.setAttribute("result", list); // result 값을 request에 저장
		System.out.println(list);
		
		String url ="/boardList";
		request.getRequestDispatcher(url).forward(request, response);
		response.sendRedirect(url);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */


}
