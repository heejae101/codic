package controller;

import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import model.board.Board;
import model.board.BoardCommentDao;
import model.board.BoardDao;

public class BoardUpdateRequest extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public BoardUpdateRequest() {
		super();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		BoardDao boardDao = BoardDao.getInstance();
		int board_id = Integer.parseInt(request.getParameter("boardId"));
		String email = (String) request.getSession().getAttribute("email");
		
		System.out.println(email+"님이 게시글 수정 요청");
		
		Board board = boardDao.getBoardById(board_id);
		String url = "boardList";
		
		if(board != null) {
			url = "/boardUpdate";
			request.setAttribute("result", board);			
			System.out.println("요청 성공하였습니다.");
		}else {
			System.out.println("요청 실패하였습니다.");
		}
		request.getRequestDispatcher(url).forward(request,response);
	}

}
