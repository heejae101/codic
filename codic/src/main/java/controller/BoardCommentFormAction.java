package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import model.board.BoardComment;
import model.board.BoardCommentDao;
import model.board.BoardCommentRequestDto;
import model.board.BoardDao;
import model.user.UserDao;

public class BoardCommentFormAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public BoardCommentFormAction() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession requestSession = request.getSession();
		String user_email = (String) requestSession.getAttribute("email");
		String request_board_id = request.getParameter("board_id");
		int boardId = 0;

		// 나중에 로그 추가
		System.out.println(request_board_id + "번 게시글 " + user_email + "님의 댓글 가져오기 요청");

		if (request_board_id != null) {
			try {
				boardId = Integer.parseInt(request_board_id);
			} catch (Exception e) {
				System.err.println("이상한 접근");
			}
		}

		BoardCommentDao boardcommentDao = BoardCommentDao.getInstance();
		ArrayList<BoardComment> list = boardcommentDao.getBoardCommentAll(boardId);

		Map<String, Object> responseData = new HashMap<>();
		boolean result = 0 < list.size() ? true : false;
		System.out.println("요청 결과 : " + result);
		responseData.put("result", result);
		responseData.put("responseData", list);

		String resultJson = new Gson().toJson(responseData);
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		response.getWriter().write(resultJson);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession requestSession = request.getSession();

		int board_id = Integer.parseInt(request.getParameter("board_id"));
		String user_email = (String) requestSession.getAttribute("email");
		String user_nickname = (String) requestSession.getAttribute("nickname");
		String board_answer = request.getParameter("contents");

		Map<String, Object> responseData = new HashMap<>();

		if (user_email != null && user_nickname != null) {
			BoardCommentDao boardcommentDao = BoardCommentDao.getInstance();
			UserDao userDao = UserDao.getInstance();
			boardcommentDao.createBoardComment(board_id, user_email, board_answer, user_nickname);
			responseData.put("result", "CREATE_SUCCESS");
		} else {
			responseData.put("result", "CREATE_ERROR");
		}
		String resultJson = new Gson().toJson(responseData);
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		response.getWriter().write(resultJson);
	}

}
