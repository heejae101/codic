package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.board.Board;
import model.board.BoardDao;
import model.board.BoardRequestDto;

/**
 * Servlet implementation class BoardReadFormAction
 */
public class BoardRequest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardRequest() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		// 보드 1번 선택 지정
		int boardNo = Integer.parseInt(request.getParameter("1"));
		
		BoardDao boardDao = BoardDao.getInstance();
		
		Board board = boardDao.getBoardByNo(boardNo);
		
		int board_id = board.getBoard_id();
		String user_email = board.getUser_email();
		String board_title = board.getBoard_title();
		String board_text = board.getBoard_text();
		int board_view_count = board.getBoard_view_count();
		String current_timestamp = board.getCurrent_timestamp();
		String modified_timestamp = board.getModified_timestamp();
		
		String url = "board";
		
		if(board !=null) {
			BoardRequestDto BoardDto = new BoardRequestDto(board_id, user_email, board_title, board_text, board_view_count, current_timestamp, modified_timestamp);
			
			request.setAttribute("board", BoardDto);
			url = "board";
		}
		
		request.getRequestDispatcher(url).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		doGet(request, response);
	}

}
