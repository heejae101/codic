package controller;

import java.io.IOException;
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
@WebServlet("/BoardUpdateRequest")
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
		
		String userEmail = request.getParameter("user_email");
		
		BoardDao boardDao = BoardDao.getInstance();
		Board board = boardDao.getBoardById(userEmail);
		
		String title = "";
		String text = "";
		
		title = board.getBoard_title();
		text = board.getBoard_text();
		
		request.setAttribute("title", title);
		request.setAttribute("text", text);
		
		request.setAttribute("result", board);

		String url = "/views/boardUpdate.jsp";
		request.getRequestDispatcher(url).forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */

}
